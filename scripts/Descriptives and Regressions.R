install.packages("pacman")
library(pacman)

p_load("source","here")

source(here("scripts","Data Prep.R"))


###descriptive statistics 

options(survey.lonely.psu = "adjust")
tbl_svysummary(allcountries.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  add_p()


# allcountries.survey %>%
#   table1(~ age + as_factor(urban) + as_factor(education)
#          + as_factor(drop_unused_value_labels(curmar)) | as_factor(gender), 
#          data= .)              

###regression analyses

##modeling using tri90sraware
model1 <- svyglm(as.numeric(tri90sraware) - 1 ~ timesincelasttest + recentlagvl + 
                age + urban + education + curmar + gender, design = allcountries.survey,
              family = binomial)

table1 <- tbl_regression(model1, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, self-report not ARV adjusted (Unaware = 1)**")

print(table1)

##modeling using tri90aware
model2 <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                age + urban + education + curmar + gender, design = allcountries.survey,
              family = binomial)

table2 <- tbl_regression(model2, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(table2)

###plotting gender disparities in awareness across countries - unadjusted for ARV data
allcountries.survey %>%
  filter(!is.na(tri90sraware)) %>%
  group_by(country, gender) %>%
  summarise(
    aware_percent = survey_mean(tri90sraware == "(1) Aware", 
                                vartype = "ci", proportion = TRUE), .groups = "drop") %>%
  
  ggplot(aes(x = country, y = aware_percent, fill = gender)) +
  geom_col(position = position_dodge(width = 0.8), width = 0.7) +
  geom_errorbar(
    aes(ymin = aware_percent_low, ymax = aware_percent_upp),
    width = 0.2, position = position_dodge(width = 0.9)
  ) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  labs(
    x = "Country and Gender",
    y = "Percentage Aware of HIV Status",
    title = "Percentage Aware of HIV Status by Country and Gender",
    subtitle = "(Awareness Unadjusted for ARV data)"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

###plotting gender disparities in awareness across countries - adjusted for ARV data
allcountries.survey %>%
  filter(!is.na(tri90aware)) %>%
  group_by(country, gender) %>%
  summarise(
    aware_percent = survey_mean(tri90aware == "(1) Aware or considered aware because ARVs detectable", 
                                vartype = "ci", proportion = TRUE), .groups = "drop") %>%
  
  ggplot(aes(x = country, y = aware_percent, fill = gender)) +
  geom_col(position = position_dodge(width = 0.8), width = 0.7) +
  geom_errorbar(
    aes(ymin = aware_percent_low, ymax = aware_percent_upp),
    width = 0.2, position = position_dodge(width = 0.9)
  ) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  labs(
    x = "Country and Gender",
    y = "Percentage Aware of HIV Status",
    title = "Percentage Aware of HIV Status by Country and Gender",
    subtitle = "(Awareness Adjusted for ARV data)"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))