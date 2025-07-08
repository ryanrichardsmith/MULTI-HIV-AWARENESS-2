#____________________________________________________________________
# Project: Getting started with PHIA data in R						
# 																		
# Purpose: The purpose of this file is to provide a template for 
#     - 1. Installing the statistical packages for PHIA survey analysis
# 		- 2. Importing the PHIA data in R					
#			- 3. Merging datasets										
#			- 4. Preparing variables for analysis
#			- 5. Jackknife and Taylor Series variance estimation			
#			- 6. Tabulating unweighted counts and weighted percentages 	
#			- 7. Estimating prevalence									
#			- 8. Estimating vls, overall and by pregnancy status					
#			- 9. Estimating the 95-95-95 cascade							
#																		
# Input: insida2021adultind.csv and insida2021adultbio.csv
#																		
# Output: prevalence, viral load suppression (overall and pregnancy), 	
#			95-95-95 cascade												
#																		
# Instruction: This is a template for INSIDA 2021
#				The program can be run in separate pieces, or all at once.
#																		
#_________________________________________________________________________

### 1. Installing the statistical packages for PHIA survey analysis
### Install and load packages
### If not already installed, uncomment the install.packages command lines
#install.packages("survey") # Contains survey analysis specific functions
library(survey)
#install.packages("dplyr") # Package for data manipulation
library(dplyr)
#install.packages("rio") # Allows user to import files from SAS, Stata and SPSS, optional
#library(rio)
#install.packages("gmodels") # Unweighted tables of proportions and frequencies
library(gmodels)
#install.packages("expss") # Apply labels
library(expss)


### 2. Importing the PHIA data in R	
### Set working directory to where the data is saved 
setwd("G:/Shared drives/DMA/PHIA/Public Release/Output - Packages/Mozambique2")

### Load in Adult Bio and Adult Ind datasets from CSVs
adultbio <- read.csv("insida2021adultbio.csv", 
                     header = TRUE)
adultind <- read.csv("insida2021adultind.csv", 
                     header = TRUE)

### Alternatively the 'import' function from the rio package can be used to read in SAS format datasets
# adultbio <- import("insida2021adultbio.sas7bdat")
# adultind <- import("insida2021adultind.sas7bdat")

### 3. Merging datasets	
### Merge in selected variables from adultind into adultbio
adult <- adultbio %>% 
  left_join(select(adultind, personid, pregnancystatus))

### 4. Preparing variables for analysis

### Define analytic variables
vars <- c('hivstatusfinal', 'gender', 'vls', 'pregnancystatus', 'tri90', 'tri90aware', 'tri90art', 'tri90vls')

### Recode analytic outcomes to 0/1
svydata <- adult %>%
  mutate(across(
    all_of(vars), 
    ~if_else(as.numeric(.x) == 2, 0, as.numeric(.x))
    )
  )

### Apply variable labels
svydata = apply_labels(svydata,
                       gender = "Sex",
                       pregnancystatus = "Pregnancy Status",
                       hivstatusfinal = "Final HIV Status Determination",
                       vls = "Viral load suppressed indicator",
                       tri90 = "Include in cascade (adjusted for ARV data) analysis indicator",
                       tri90aware = "Aware recode (adjusted for ARV data) for cascade analysis",
                       tri90art = "ART recode (adjusted for ARV data) for cascade analysis",
                       tri90vls = "Viral load suppressed (VLS) recode (adjusted for ARV data) for cascade analysis")

### 5. Jackknife and Taylor Series variance estimation

### Jackknife
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

### Taylor Series
### Create survey object, Taylor series linearization.
### Replace 'jkdesign' with 'tsdesign' in the below calculations to use
### Taylor series instead of jackknife weights.

tsdesign <- svydesign(
  data = svydata,
  weights = ~btwt0,
  strata = ~varstrat,
  ids = ~varunit,
  nest = TRUE
)

### 6. Tabulating unweighted counts and weighted percentages
### Unweighted counts and proportions 
table(svydata$hivstatusfinal)

### Unweighted counts and proportions
# One-way analysis
CrossTable(svydata$hivstatusfinal, )
# Two-way analysis
CrossTable(svydata$gender, svydata$hivstatusfinal)

### Weighted counts
# One-way analysis
svytable(~hivstatusfinal, design = jkdesign)
# Two-way analysis
svytable(~hivstatusfinal + gender, design = jkdesign)

### Weighted proportions
# One-way analysis
svymean(~hivstatusfinal, 
        design = jkdesign)
# Two-way analysis
svyby(~hivstatusfinal, 
      by = ~gender, 
      design = jkdesign, 
      FUN = svymean)

### 7. Estimating prevalence 
### Conduct analyses using jackknife weights
### HIV prevalence results stored in the object 'HIVp' 
HIVp <- svyciprop(~hivstatusfinal,
                  design = jkdesign,
                  method = "beta",
                  level = 0.95,
                  df = 25)

HIVp # display results

### Using Taylor series
HIVp_ts <- svyciprop(~hivstatusfinal,
                     design = tsdesign,
                     method = "beta",
                     level = 0.95,
                     df = 25)

HIVp_ts # display results


### 8. Estimating vls, overall and by pregnancy status

## Overall
### Use 'subset' within the design option to include only HIV positive individuals with valid
### vls data (exclude those with values of 99).
### Results are stored in the object 'vlsp'
vlsp <- svyciprop(~vls,
                  design = subset(jkdesign, vls != 99 & hivstatusfinal == 1),
                  method = "beta",
                  level = 0.95,
                  df = 25)

vlsp # display results

# Unweighted counts of individuals
table(jkdesign$variables$vls)

### vls by pregnancy status results stored in the object 'vlsprP'
### Use 'subset' to include only HIV positive individuals with non-missing viral load and 
### pregnancy status (exclude those with values of 99)
### Use the function 'svyby' for estimates by a stratification variable
vlsprP <- svyby(~vls, 
                by = ~pregnancystatus,
                design = subset(jkdesign, hivstatusfinal == 1 & vls != 99 & pregnancystatus != 99),
                FUN = svyciprop,
                vartype = "ci", 
                method = "beta", 
                df = 25)

vlsprP # display results

# Unweighted counts
table(jkdesign$variables$pregnancystatus,
      jkdesign$variables$vls)

### 9. Estimating the 95-95-95 cascade, including confidence intervals and standard errors.
### The 'by' variable could be changed to produce results by any stratifier of interest.

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

