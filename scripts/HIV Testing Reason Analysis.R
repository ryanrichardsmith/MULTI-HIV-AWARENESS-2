install.packages("pacman")
library(pacman)

p_load("source","here")

source(here("scripts","Data Prep.R"))

###reasons for never being tested by gender & country

#pivoting the data so that each respondent has one row per reason
hivtstnvrrsn_long <- allcountries %>%
  pivot_longer(
    cols = starts_with("hivtstnvrrsn_"),
    names_to = "reason_variable",
    values_to = "response"
  ) %>%
  filter(statusawareness != "Positive: Aware") %>%
  filter(!reason_variable %in% c("hivtstnvrrsn_g", 
                                 "hivtstnvrrsn_j", 
                                 "hivtstnvrrsn_k", 
                                 "hivtstnvrrsn_l", 
                                 "hivtstnvrrsn_w"))

#recoding reason variable for readability
reason_labels <- c(
  hivtstnvrrsn_a = "Don't Know Where To Test",
  hivtstnvrrsn_b = "Test Costs Too Much",
  hivtstnvrrsn_c = "Transport costs too much",
  hivtstnvrrsn_d = "Too Far Away",
  hivtstnvrrsn_e = "Afraid Others Will Know About Test Results",
  hivtstnvrrsn_f = "Don't Need Test/Low Risk",
  hivtstnvrrsn_g = "Did not receive permission",
  hivtstnvrrsn_h = "Afraid spouse/partner/family will know",
  hivtstnvrrsn_i = "Don t want to know I have HIV",
  hivtstnvrrsn_j = "Cannot Get Treatment For HIV",
  hivtstnvrrsn_k = "Test kits not available",
  hivtstnvrrsn_l = "Religious reasons",
  hivtstnvrrsn_w = "Too busy",
  hivtstnvrrsn_x = "Other"
)

#grouping similar answer categories
hivtstnvrrsn_long <- hivtstnvrrsn_long %>%
  mutate(reason = recode(reason_variable, !!!reason_labels)) %>%
  mutate(reason = case_when(
    reason %in% c("Test Costs Too Much", "Transport costs too much", "Too Far Away") ~ 
      "Too Far Away or Test Costs Too Much",
    reason == "Afraid spouse/partner/family will know" ~ "Afraid Others Will Know About Test Results",
    TRUE ~ reason
  ))

#applying survey design
hivtstnvrrsn_long_svy <- hivtstnvrrsn_long %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

#plotting reason for having never tested by gender & country
hivtstnvrrsn_long_svy %>%
  mutate(yes = response == "(1) Yes",
         statusawareness = fct_drop(statusawareness)) %>%
  filter(!is.na(yes)) %>%
  group_by(country, statusawareness, gender, reason) %>%
  summarise(percentage = survey_mean(yes, vartype = "ci", proportion = TRUE), .groups = "drop") %>%
  mutate(percentage = percentage * 100,
         ci_l = percentage_low * 100,
         ci_u = percentage_upp * 100) %>%
  ggplot(aes(x = reorder(reason, -percentage), y = percentage, fill = gender)) +
  geom_col(position = position_dodge(width = 0.9)) +
  geom_errorbar(aes(ymin = ci_l, ymax = ci_u),
                position = position_dodge(width = 0.9), 
                width = 0.2) +
  coord_flip() +
  facet_wrap(statusawareness ~ country, ncol = 6, nrow = 2) +
  labs(x = "Reason", y = "Percentage of Respondents",
       title = "Reasons for Never Being Tested for HIV, by Gender, Country and Status") +
  theme_minimal()

###main reason for last test by gender & country

###recoding reason for last hiv test to consolidate answer categories
allcountries <- allcountries %>%
  mutate(hivtstrsn = recode(hivtstrsn,
                            "(54) Testing offered/required by school/work" = 
                              "(1) Was Offered Test By Health Care Or Outreach Worker",
                            "Visited hospital/clinic for other health reason" = 
                              "(1) Was Offered Test By Health Care Or Outreach Worker",
                            "(53) Post-natal care" = "(6) Pregnancy",
                            "(7) My Partner Tested Positive" = "(3) Felt At Risk",
                            "(5) New Partner" = "(3) Felt At Risk"
  ))

#imputing reasons for last test for individuals aware of their status

#only including predictors which have at least as many categories as hivtstrsn
#to avoid contrasts error
predictors <- sapply(setdiff(names(allcountries), "hivtstrsn"), function(x) {
  n_distinct_values <- length(unique(allcountries[[x]][is.na(allcountries[["hivtstrsn"]])]))
  n_categories <- length(unique(allcountries[["hivtstrsn"]]))
  n_distinct_values >= n_categories
})

pred_matrix <- make.predictorMatrix(allcountries)
pred_matrix["hivtstrsn", ] <- 0
pred_matrix["hivtstrsn", names(predictors)[predictors]] <- 1

#imputation code
method <- make.method(allcountries)
method["hivtstrsn"] <- "polyreg"

imputation <- mice(allcountries, m = 20, method = method, predictorMatrix = pred_matrix,
                   print = FALSE, seed = 12345)

#(attempting) ggmice plot
ggmice(imputation, fun = function(data) {
  data %>%
    filter(
      !is.na(hivtstrsn),
      !hivtstrsn %in% c("(-8) Don't Know")
    ) %>%
    group_by(country, gender, statusawareness, hivtstrsn) %>%
    summarise(n = n(), .groups = "drop") %>%  
    group_by(country, gender, statusawareness) %>%
    mutate(
      percentage = n / sum(n) * 100,
      reason = str_sub(hivtstrsn, 5)
    ) %>%
    ungroup()
}, mapping = aes(x = statusawareness, y = percentage, fill = reason)) +
  geom_col(position = "fill") +
  scale_fill_viridis(discrete = TRUE, option = "turbo") +
  scale_y_continuous(labels = scales::percent) +
  facet_grid(country ~ gender, scales = "fixed") +
  labs(
    x = "Status Awareness",
    y = "Percentage of Respondents",
    fill = "Reason for Last HIV Test",
    title = "Distribution of Reasons for Last HIV Test by Status Awareness, Gender, and Country"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))







###Code for unimputed plot code below; ignore

#applying survey design to un-pivoted data
#allcountries_svy <- allcountries %>%
#  as_survey_design(strata = varstrat, 
#                   weights = btwt0,
#                   ids = personid)

# allcountries_svy %>%
#   filter(
#     !is.na(hivtstrsn),
#     !hivtstrsn %in% c("(-8) Don't Know", "(-9) Refused")
#   ) %>%
#   group_by(country, gender, statusawareness, hivtstrsn) %>%
#   summarise(n = survey_total(!is.na(hivtstrsn)), .groups = "drop") %>%
#   group_by(country, gender, statusawareness) %>%
#   mutate(
#     percentage = n / sum(n) * 100,
#     reason = str_sub(hivtstrsn, 5)  
#   ) %>%
#   ungroup() %>%
#   ggplot(aes(x = statusawareness, y = percentage, fill = reason)) +
#   geom_col(position = "fill") + 
#   scale_fill_viridis(discrete = TRUE, option = "turbo") +
#   scale_y_continuous(labels = scales::percent) +
#   facet_grid(country ~ gender, scales = "fixed") + 
#   labs(
#     x = "Status Awareness",
#     y = "Percentage of Respondents",
#     fill = "Reason for Last HIV Test",
#     title = "Distribution of Reasons for Last HIV Test by Status Awareness, Gender, and Country"
#   ) +
#   theme_minimal() +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1)) 