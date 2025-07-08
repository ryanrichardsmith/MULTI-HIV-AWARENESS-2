#____________________________________________________________________________________________________________________________________
# Project: Getting started with PHIA data in R						
# 																		
# Purpose: The Intro Code included in this program provides  code examples to do the following: 
#
### Section 1. Preparing the data for analysis: 
#     - 1. Install the statistical packages for PHIA survey analysis
#     - 2. Set working directory to the location where the data is saved 
# 		- 3. Read-in (import) data
#     - 4. Prepare variables for analysis
#     - 5. Create weight-specific survey objects to support weighted analyses
#
### Section 2. Example analyses
#   6.  Estimate HIV prevalence overall and by gender, using Jackknife variance estimation
#   7.  Estimate HIV prevalence overall and by gender, using Taylor Series variance estimation
#   8.  Estimate the UNAIDS 90-90-90 / 95-95-95 cascade, using Jackknife variance estimation
#   9.  Estimate annual incidence				
#																		
### Section 3. How to merge datasets with examples
#_______________________________________________________________________________________________________________________________________

########################################################################################## 
### Section 1. Preparing the data for analysis:
#     1. Install the statistical packages for PHIA survey analysis
#         -Install and load packages
#         -If not already installed, uncomment the install.packages command lines
#     2. Set working directory to the location where the data is saved 
#         -Remember to use the forward slash in the location path
#     3. Read-in (import) data
#       -Read in PHIA datasets
#         -SAS uses import function (preferred data type to import into R)
#         -csv uses read function
#     4. Prepare variables for analysis
#         -Define analytical variables
#         -Recode 
#         -Label
#    5. Create weight-specific survey objects to support weighted analyses
#         -Jackknife estimation
#         -Taylor series estimation
###########################################################################################

# 1. Install or load R packages
  #install.packages("survey")   # Contains survey analysis specific functions
  library(survey)
  #install.packages("dplyr")    # Package for data manipulation
  #library(dplyr)
  #install.packages("rio")      # Allows user to import files from Stata and SPSS, optional
  library(rio)
  #install.packages("gmodels")  # Unweighted tables of proportions and frequencies
  library(gmodels)
  #install.packages("expss")    # Apply labels
  library(expss)
  #install.packages("srvyr")
  library(srvyr)
  #install.packages("tidyverse")
  library(tidyverse)

# 2. Set working directory
  setwd("C:/Desktop")

# 3. Read in data
#SAS file type
  hh        <- import ("this2022hh.sas7bdat")
  roster    <- import ("this2022roster.sas7bdat")
  adultind  <- import("this2022adultind.sas7bdat")
  adultbio  <- import("this2022adultbio.sas7bdat")

#csv file type
  #hh       <- read.csv("this2022hh.csv", header = TRUE)
  #roster   <- read.csv("this2022roster.csv", header = TRUE)
  #adultind <- read.csv("this2022adultind.csv", header = TRUE)
  #adultbio <- read.csv("this2022adultbio.csv", header = TRUE)

# 4. Prepare variable for analysis

#Define analytic variables
  vars <- c('gender', 
            'hivstatusfinal', 
            'vls', 
            'tri90', 
            'tri90aware', 
            'tri90art', 
            'tri90vls')

#Recode analytic outcomes to 0/1
  svydata <- adultbio %>%
    mutate(across(
      all_of(vars), 
      ~if_else(as.numeric(.x) == 2, 0, as.numeric(.x))
    )
    )

# Apply variable labels
  svydata = apply_labels(svydata,
                         gender = "Sex",
                         hivstatusfinal = "Final HIV Status Determination",
                         vls = "Viral load suppressed indicator",
                         tri90 = "Include in ARV-adjusted cascade analysis indicator",
                         tri90aware = "Aware recode (adjusted for ARV data) for cascade analysis",
                         tri90art = "ART recode (adjusted for ARV data) for cascade analysis",
                         tri90vls = "Viral load suppressed (VLS) recode (adjusted for ARV data) for cascade analysis"
  )

# 5. Jackknife and Taylor Series variance estimation

# Jackknife
  # Extract analytic variables, base weights and JK replicate weights
  # and create survey object, using 'svrepdesign'
  # The type of weights must be specified as "JKn" and the scale coefficients set to 1
  # to obtain correct variance estimates for the PHIA survey design.
  # Note: this is equivalent to type = "JK2".

  jkdesign <- svrepdesign(
    variables = select(svydata, -starts_with("btwt")),
    weights = select(svydata, btwt0),
    repweights = select(svydata, starts_with("btwt"), -btwt0),
    type = "JKn", 
    scale = 1, 
    rscales = 1)

# Taylor Series
  # Create survey object, Taylor series linearization.
  # Replace 'jkdesign' with 'tsdesign' in the below calculations to use
  # Taylor series instead of jackknife weights.

  tsdesign <- svydesign(
    data = svydata,
    weights = ~btwt0,
    strata = ~varstrat,
    ids = ~varunit,
    nest = TRUE
  )

########################################################################################## 
### Section 2. Example analyses
#   6.  Estimate HIV prevalence overall and by gender, using Jackknife variance estimation
#   7.  Estimate HIV prevalence overall and by gender, using Taylor Series variance estimation
#   8.  Estimate the UNAIDS 90-90-90 / 95-95-95 cascade, using Jackknife variance estimation
#   9.  Estimate annual incidence
###########################################################################################

# 6. Jackknife variance estimation: Estimate HIV prevalence overall and by gender

  #Overall HIV prevalence
  HIVjk <- svyciprop(~hivstatusfinal,
                    design = subset(jkdesign, bt_status == 1 & age >= 15),
                    method = "beta",
                    level = 0.95,
                    df = 25)
  HIVjk # display results
  
  #HIV prevalence by Gender
  HIVjk_gender <- svyby(~hivstatusfinal,
                        by = ~gender, 
                        design = subset(jkdesign, bt_status == 1 & age >= 15),
                        FUN = svyciprop, 
                        vartype = "ci", 
                        method = "beta",
                        df = 25)
  HIVjk_gender # display results
##################################################################################################
# 7. Taylor Series: Estimate HIV prevalence overall and by gender

    #Overall HIV prevalence
    HIVts <- svyciprop(~hivstatusfinal,
                         design = subset(tsdesign, bt_status == 1 & age >=15),
                         method = "beta",
                         level = 0.95,
                         df = 25)
    HIVts # display results

    #HIV prevalence by Gender
    HIVts_gender <- svyby(~hivstatusfinal,
                          by = ~gender, 
                          design = subset(tsdesign, bt_status == 1 & age >= 15),
                          FUN = svyciprop, 
                          vartype = "ci", 
                          method = "beta",
                          df = 25)
    HIVts_gender # display results

###################################################################################################    
# 8. 90-90-90 / 95-95-95 ARV-adjusted cascade
#     -Estimate the ARV-adjusted cascades (conditional)
#     -Including confidence intervals and standard errors, using Jackknife variance estimation
#     -The 'by' variable could be changed to produce results by any stratifier of interest.
#     Note: tri90 variable is a flag indicating records are to be included in the
#           ARV adjusted cascade. Flow diagrams in the country-specific supplement 
#           are available for these analysis variables. 

  #Conditional ARV-adjusted cascade
    # Aware
    aware <- svyby(formula = ~tri90aware, by = ~country,
                   design = subset(jkdesign, tri90 == 1 & tri90aware != 99),
                   FUN = svyciprop, 
                   vartype = c("se", "ci"), 
                   method = "beta", 
                   df = 25) 
    
    # On Art
    art <- svyby(formula = ~tri90art, by = ~country,
                 design = subset(jkdesign, tri90 == 1 & tri90aware == 1 & tri90art != 99),
                 FUN = svyciprop, 
                 vartype = c("se", "ci"), 
                 method = "beta", 
                 df = 25) 
    
    # VLS
    vls <- svyby(formula = ~tri90vls, by = ~country,
                 design = subset(jkdesign, tri90 == 1 & tri90aware == 1 & tri90art == 1 & tri90vls != 99),
                 FUN = svyciprop, 
                 vartype = c("se", "ci"), 
                 method = "beta", 
                 df = 25) 
    
    # Simple output
    aware
    art
    vls
    
    # Example of combining data into a single table
    aware_tab <- aware %>%
      mutate(outcome = "tri90aware") %>% 
      select(country, outcome, mean = tri90aware, SE = starts_with("se"), LCL = ci_l, UCL = ci_u)
    
    art_tab <- art %>%
      mutate(outcome = "tri90art") %>% 
      select(country, outcome, mean = tri90art, SE = starts_with("se"), LCL = ci_l, UCL = ci_u)
    
    vls_tab <- vls %>%
      mutate(outcome = "tri90vls") %>% 
      select(country, outcome, mean = tri90vls, SE = starts_with("se"), LCL = ci_l, UCL = ci_u)
    
    bind_rows(aware_tab, art_tab, vls_tab)
    
########################################################################################################################
# 9. Estimate annual incidence    
    # Incidence Calculation using R
    
    # This code is a translation of the SAS incidence macro into R, 
    # using the `srvyr` package for the computations requiring survey-weighted 
    # proportions and variances.
    #
    # Note that due to differences in methodology in the survey estimation methods, 
    # confidence intervals estimated using this code may differ slightly from those 
    # computed using the SAS incidence estimation code.
    
    # Preparing PHIA biomarker data
    
    # Set the indicator variable to use for incidence estimation
    recency_variable <- "recentlagvlarv"
    
    # Subset to those with valid blood test results
    phia_bio_data <- adultbio %>%
      filter(bt_status == 1) %>%
      mutate(all = 1,
             recent_over_all = if_else(.data[[recency_variable]] == 1, 100, 0))
    
    # Incidence estimation parameters
    pfr <- 0 # Proportion of False Recent infections (PFR)
    sig_pfr2 <- 0 # Standard error of PFR
    omega <- 130 # Mean Duration of Recent Infection (MDRI)
    sig_omega2 <- 37.48575911 # Standard error of MDRI
    
    # The `as_survey_design` function is used to set up the survey replicate weight design. 
    # Note that the dataset is already restricted to those with valid blood test results 
    # so that there are no missing or zero weights.
    phia_svy <- phia_bio_data %>% 
      as_survey_design(weights = btwt0,
                       repweights = matches("btwt[0-9]{2,}"),
                       type = "JKn", scale = 1, rscales = 1)
    
    # Test prevalence
    phia_svy %>% 
      group_by(hivstatusfinal) %>%
      summarise(prevalence = survey_mean(vartype = "ci"))
    
    # Function for computing design effect by a specified 
    # variable (input as a character string).
    # Input data should be a PHIA biomarker dataset.
    
    compute_deff <- function(data, byvar) {
      data %>% 
        as_survey_design(weights = btwt0,
                         repweights = matches("btwt[0-9]{2,}"),
                         type = "JKn", scale = 1, rscales = 1) %>%
        group_by(.data[[byvar]])%>%
        summarise(recent_over_all = survey_mean(recent_over_all, deff = "replace")) %>%
        select(.data[[byvar]], design_effect = recent_over_all_deff) %>%
        mutate(design_effect = if_else(is.nan(design_effect), 1, design_effect))
    }
    
    # Test design effect calculation
    design_effect <- compute_deff(phia_bio_data, "gender")
    
    # Function for computing prevalence and PLHIV by a specified 
    # variable (input as a character string).
    # Input data should be a PHIA biomarker dataset.
    
    compute_prevalence_plhiv <- function(data, byvar) {
      data %>% 
        as_survey_design(weights = btwt0,
                         repweights = matches("btwt[0-9]{2,}"),
                         type = "JKn", scale = 1, rscales = 1) %>%
        group_by(.data[[byvar]], hivstatusfinal) %>%
        summarise(prevalence = survey_mean(deff="replace", vartype = c("se", "ci")),
                  plhiv = survey_total(vartype = c("se", "ci"))) %>%
        filter(hivstatusfinal == 1) %>%
        select(-hivstatusfinal) %>%
        rename_with(~gsub("_low", "LCL", .x)) %>%
        rename_with(~gsub("_upp", "UCL", .x))
    }
    
    # Test prevalence calculation
    prevalence_plhiv <- compute_prevalence_plhiv(phia_bio_data, "gender")
    
    # Function to compute normalized weights and use them to calculate the 
    # weighted counts for the incidence estimation formula by a specified 
    # variable (input as a character string).
    # Input data should be a PHIA biomarker dataset.
    
    compute_normalized_counts <- function(data, byvar) {
      
      data %>%
        group_by(.data[[byvar]]) %>%
        mutate(norm_btwt0 = btwt0 * n() / sum(btwt0),
               when_infected = case_when(hivstatusfinal != 1 ~ 4,            # HIV negative
                                         .data[[recency_variable]] == 1 ~ 1, # Recent infection
                                         .data[[recency_variable]] == 2 ~ 2, # Long-term infection
                                         TRUE ~ 3                            # Positive but not classified by LAg test
               ),
               PplusN = 1, # Used to count total number tested for HIV
               #recent_over_all = if_else(.data[[recency_variable]] == 1, 100, 0),
               n = when_infected == 4,           # Number of HIV negatives
               p = when_infected %in% c(1,2,3),  # Number of HIV positives
               q = when_infected %in% c(1,2),    # Number of HIV+ tested for recency
               r = when_infected == 1,           # Number of recent cases
               # Create normalized weighted counts
               across(.cols = c(n,p,q,r,PplusN), ~.x * norm_btwt0, .names = "{.col}_wtd"),
               # Create weighted counts
               across(.cols = c(n,p,q,r,PplusN), ~.x * btwt0, .names = "{.col}_pop")) %>%
        select(.data[[byvar]], n,p,q,r,PplusN, ends_with(c("_wtd", "_pop"))) %>%
        summarise(across(-contains(byvar), sum))
    }
    
    # Test normalized counts computation
    normalized_counts <- compute_normalized_counts(phia_bio_data, "gender")
    
    # Function to calculate incidence and variance by a specified 
    # variable (input as a character string).
    # Input data should be a PHIA biomarker dataset.
    
    compute_incidence <- function(data, byvar) {
      data %>% 
        compute_normalized_counts(byvar = byvar) %>%
        mutate(neg_wtd = (PplusN_wtd - p_wtd) * (q_wtd / p_wtd),
               # Incidence reduces to (r_wtd/neg_wtd)*(365/130) when pfr is 0.
               incid_instant = (r_wtd - pfr * q_wtd) / ((1 - pfr / omega) * (omega / 365) * neg_wtd), 
               incid_annual = 100 *( 1 - exp(-incid_instant)), # expressed as annual percent
               neg_pop = PplusN_pop - p_pop,
               newcases = neg_pop * incid_annual/100)
    } 
    
    # Test incidence calculation
    incidence <- compute_incidence(phia_bio_data, "gender")
    
    # Function for computing the variance and confidence intervals for 
    # the incidence estimates by a specified variable (input as a 
    # character string).
    # Input data should be a PHIA biomarker dataset.
    # These formulae come from Kassanjee et al, Epidemiology, Vol 23, No 5, September 2012.
    # A, B, and C are the 3 main terms in equation (e7) in the online appendix.
    
    compute_variance <- function(data, byvar) {
      
      data %>%
        compute_incidence(byvar = byvar) %>%
        left_join(compute_deff(data, byvar = byvar)) %>%
        mutate(A = (1/q_wtd)*( (1/neg_wtd) + (r_wtd * ( p_wtd - r_wtd)) / (r_wtd - pfr * p_wtd)**2),
               B = sig_omega2 * 1 / (omega - pfr * 365 )**2,
               C = sig_pfr2 * (
                 ( (p_wtd - r_wtd) * omega - r_wtd * (365 - omega) ) /
                   ( (r_wtd - pfr * p_wtd) * (omega - pfr * 365) )
               )**2,
               c_sq = A + B + C,
               # CIs not including design effect, for instantaneous incidence
               LCL_i = incid_instant * (1 - sqrt(c_sq) * qnorm(0.975)),
               UCL_i = incid_instant * (1 + sqrt(c_sq) * qnorm(0.975)), 
               # Clopper-Pearson CI for cells with with R = 0 (no recent cases)
               R_CPUCL = neg_wtd * (1 - (0.05/2)^(1/neg_wtd)),
               LCL_CP = 0,
               UCL_CP = (R_CPUCL - pfr * q_wtd) / ((1 - pfr / omega) * (omega / 365) * neg_wtd),
               # Convert upper and lower limits of the interval into annual incidence limits
               LCL_a = if_else(r_wtd == 0, 100 * (1 - exp(-LCL_CP)), 100 * (1 - exp(-LCL_i))),
               UCL_a = if_else(r_wtd == 0, 100 * (1 - exp(-UCL_CP)), 100 * (1 - exp(-UCL_i))),
               # Confidence interval adjusting for the design effect
               # Design effect < 1 is treated as equal to 1
               # Adjusted Clopper-Pearson CI
               R_CPUCL_adj = neg_wtd * (1 - (0.05/2)**( pmax(1.0, design_effect) / neg_wtd)),
               adj_LCL_CP = 0,
               adj_UCL_CP = (R_CPUCL_adj - pfr * q_wtd) / ((1 - pfr / omega) * (omega / 365) * neg_wtd),
               # Standard CIs
               adj_c_sq = if_else(design_effect > 1, design_effect * c_sq, c_sq),
               adj_LCL_i = if_else(r_wtd == 0, 0.0, pmax(0.0, incid_instant * (1 - sqrt(adj_c_sq) * qnorm(0.975)))),
               adj_UCL_i = if_else(r_wtd == 0, (R_CPUCL_adj - pfr * q_wtd) / ((1 - pfr / omega) * (omega / 365) * neg_wtd),
                                   pmax(incid_instant * (1 + sqrt(adj_c_sq) * qnorm(0.975)))),
               # Convert upper and lower limits of the interval into annual adjusted incidence
               adj_LCL_a = if_else(r_wtd == 0, 100 * (1 - exp(-adj_LCL_CP)), 100 * (1 - exp(-adj_LCL_i))),
               adj_UCL_a = if_else(r_wtd == 0, 100 * (1 - exp(-adj_UCL_CP)), 100 * (1 - exp(-adj_UCL_i)))
        )
      
    }
    
    # Test variance and confidence interval calculation
    variance <- compute_variance(phia_bio_data, "gender")
    
    # Function for calculation of PLHIV and new cases by a specified 
    # variable (input as a character string).
    # Input data should be a PHIA biomarker dataset.
    
    compute_plhiv_new_cases <- function(data, byvar) {
      
      # Variance dataset is needed to compute the confidence intervals
      variance <- data %>%
        compute_variance(byvar)
      
      # Relative error is computed by (conservatively) combining relative errors in
      # prevalence and incidence in quadrature.
      data %>% compute_prevalence_plhiv(byvar) %>%
        left_join(variance) %>%
        mutate(neg_pop = plhiv / prevalence - plhiv,
               newcases = neg_pop * incid_annual / 100,
               newcasesrelerr = if_else(incid_annual == 0,
                                        NA_real_,
                                        sqrt( ((prevalenceUCL - prevalence) / prevalence)**2 +
                                                ((adj_UCL_a - incid_annual) / incid_annual)**2)),
               newcasesLCL = if_else(incid_annual == 0,
                                     0.0,
                                     pmax(0.0, newcases * (1 - newcasesrelerr))),
               newcasesUCL = if_else(incid_annual == 0, 
                                     neg_pop * (adj_UCL_a/100) * (1 + (prevalence - prevalenceLCL) / prevalence),
                                     newcases * (1 + newcasesrelerr)),
               newcasesstderr = if_else(incid_annual == 0,
                                        NA_real_,
                                        (newcases - newcasesLCL) / 2.0635)) %>%
        select(.data[[byvar]], contains("plhiv"), contains("newcases"))
    }
    
    # Test PLHIV and new cases calculation
    PLHIV_new_cases <- compute_plhiv_new_cases(phia_bio_data, "gender")
    
    ####################
    # Example estimates
    ####################
    
    # The following code shows how to use the above functions to create a 
    # table of incidence estimates by age group and gender.
    
    by_age_gender <- phia_bio_data %>%
      mutate(age_group = case_when(age < 25 ~ 1, 
                                   age < 35 ~ 2,
                                   age < 50 ~ 3,
                                   age >= 50 ~ 4)) %>%
      arrange(age_group) %>%
      group_by(age_group) %>%
      nest() %>%
      mutate(results = lapply(data, function(df) compute_variance(data = df, byvar = "gender"))) %>% 
      select(-data) %>%
      unnest(results) %>%
      select(age_group, gender, incid_annual, adj_LCL_a, adj_UCL_a, design_effect) %>%
      mutate(gender = if_else(gender == 1, "Male", "Female")) %>%
      rename(P = incid_annual) %>%
      pivot_wider(values_from = -c(gender, age_group), names_from = gender, 
                  names_glue = "{gender}{.value}", names_vary = "slowest")
    
    by_age_total <- phia_bio_data %>%
      mutate(age_group = case_when(age < 25 ~ 1, 
                                   age < 35 ~ 2,
                                   age < 50 ~ 3,
                                   age >= 50 ~ 4),
             all = 1) %>%
      arrange(age_group) %>%
      group_by(age_group) %>%
      nest() %>%
      mutate(results = lapply(data, function(df) compute_variance(data = df, byvar = "all"))) %>% 
      select(-data) %>%
      unnest(results) %>%
      select(age_group, incid_annual, adj_LCL_a, adj_UCL_a, design_effect) %>%
      mutate(gender = "Total") %>%
      rename(P = incid_annual) %>%
      pivot_wider(values_from = -c(gender, age_group), names_from = gender, 
                  names_glue = "{gender}{.value}", names_vary = "slowest")
    
    by_age_group <- by_age_gender %>%
      left_join(by_age_total)
    
    ###
    # This example computes the number of new cases and people living with HIV by age group.
    
    newcases_by_age <- phia_bio_data %>%
      mutate(age_group = case_when(age < 25 ~ 1, 
                                   age < 35 ~ 2,
                                   age < 50 ~ 3,
                                   age >= 50 ~ 4),
             all = 1) %>%
      arrange(age_group) %>%
      group_by(age_group) %>%
      compute_plhiv_new_cases(byvar = "age_group")

#Display Results
by_age_group #Estimated HIV incidence by age group(Final Report Table REF 5.1)
newcases_by_age #Estimated PLHIV and New Cases by age group (Final Report Table REF Table 5.2)
    
#########################################################################################################    
#  Section 3. Other data tips: 
#   -How to merge datasets
#   -Some analyses require merging datasets. 
#       Example 1: Creates a merged dataset for those who were interviewed (indstatus=1) and had a blood test result (bt_status = 1)
#       Example 2: Creates a merged dataset with all rostered household members in an eligible responding household

#Example 1: Create a merged dataset for those who were interviewed and had a blood test result; 

adult_ind_bio <- adultbio %>% 
                 left_join(adultind, by = "personid") %>%
                 filter(indstatus==1 & bt_status==1) #Selecting participants who were interviewed and had a blood test result

#Example 2: Create a merged dataset with all rostered individuals in an eligible responding household; 
hh_roster <- roster %>% 
  left_join(hh, by = "householdid") %>%
  filter(hhstatus==1) #Selecting responding eligible households with rostered household members; 

#Unweighted count on interview status 
table(hh_roster$indstatus) #Using indstatus, 20,793 participants were interviewed

########################################### PROGRAM END #################################################
