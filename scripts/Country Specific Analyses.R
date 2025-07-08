install.packages("pacman")
library(pacman)

p_load("source","here")

source(here("scripts","Data Prep.R"))

###Lesotho

##survey design
ls.ALL.survey <- allcountries %>%
  filter(country == "Lesotho") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(ls.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Lesotho 2020") %>%
  add_p()

##regression model
ls.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                   age + urban + education + curmar + gender, design = ls.ALL.survey,
                 family = binomial)

ls.table <- tbl_regression(ls.model, exponentiate = TRUE) %>%
  modify_caption("**[Lesotho 2020] Aware recode, adjusted for ARV data (Unaware = 1)**")

print(ls.table)

###Malawi

##survey design
mw.ALL.survey <- allcountries %>%
  filter(country == "Malawi") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(mw.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Malawi 2020-2021") %>%
  add_p()

##regression model
mw.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                     age + urban + education + curmar + gender, design = mw.ALL.survey,
                   family = binomial)

mw.table <- tbl_regression(mw.model, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(mw.table)

###Mozambique

##survey design
mz.ALL.survey <- allcountries %>%
  filter(country == "Mozambique") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(mz.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Mozambique 2021") %>%
  add_p()

##regression model
mz.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                     age + urban + education + curmar + gender, design = mz.ALL.survey,
                   family = binomial)

mz.table <- tbl_regression(ls.model, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(mz.table)

###Eswatini

##survey design
sz.ALL.survey <- allcountries %>%
  filter(country == "Eswatini") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(sz.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Eswatini 2021") %>%
  add_p()

##regression model
sz.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                     age + urban + education + curmar + gender, design = sz.ALL.survey,
                   family = binomial)

sz.table <- tbl_regression(ls.model, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(sz.table)

###Tanzania

##survey design
tz.ALL.survey <- allcountries %>%
  filter(country == "Tanzania") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(tz.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Tanzania 2022-2023") %>%
  add_p()

##regression model
tz.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                     age + urban + education + curmar + gender, design = tz.ALL.survey,
                   family = binomial)

tz.table <- tbl_regression(tz.model, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(tz.table)

###Uganda

##survey design
ug.ALL.survey <- allcountries %>%
  filter(country == "Uganda") %>%
  as_survey_design(strata = varstrat, 
                   weights = btwt0,
                   ids = personid)

##descriptive stats
tbl_svysummary(ug.ALL.survey, by = gender, 
               statistic = list(all_continuous() ~ "{mean} ({sd})"),
               include = c(age, urban, education, curmar, timesincelasttest, 
                           recentlagvl,tri90aware)) %>%
  modify_caption("Table of Descriptive Statistics: Uganda 2020-2021") %>%
  add_p()

##regression model
ug.model <- svyglm(as.numeric(tri90aware) - 1 ~ timesincelasttest + recentlagvl + 
                     age + urban + education + curmar + gender, design = ug.ALL.survey,
                   family = binomial)

ug.table <- tbl_regression(ls.model, exponentiate = TRUE) %>%
  modify_caption("**Aware recode, adjusted for ARV data (Unaware = 1)**")

print(ug.table)