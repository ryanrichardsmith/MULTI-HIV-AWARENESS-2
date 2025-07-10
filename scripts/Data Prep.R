###loading packages

p_load("haven","tidyverse","labelled","srvyr","lubridate","table1",
       "ggplot2","gtsummary","survey","forcats","dplyr","cardx")

###reading in the data

##Mozambique
mz.adultind <- read_dta(here("INSIDA 2021","insida2021adultind.dta"))
mz.adultbio <- read_dta(here("INSIDA 2021","insida2021adultbio.dta"))

        # Rename the arvswitchwhy variable
        mz.adultind <- mz.adultind %>%
          rename(arvswitchwhy = arvswitchwhy_mz)
        
        #labelling the out of range values
        mz.adultind$numwif <- labelled(
          mz.adultind$numwif,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of wives or live-in partners in the household (top coded at 2)"
        )
        
        #labelling the out of range values for part12monum
        mz.adultind$part12monum <- labelled(
          mz.adultind$part12monum,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of sexual partners in last 12 months (top coded at 6)"
        )
        
        #recoding cerncnrslt variable
        mz.adultind <- mz.adultind %>%
          mutate(cerncnrslt = case_when(
            cerncnrslt == 3 ~ 2,
            TRUE ~ cerncnrslt
          ))
        
        mz.adultind$cerncnrslt <- labelled(
          mz.adultind$cerncnrslt,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Normal/Negative" = 1,
                     "Abnormal/Positive/Suspect Cancer" = 2,
                     "Unclear/InconclusiveDid Not Receive Results" = 5),
          label = "Result of last cervical cancer test"
        )
        
        #recoding cerncntrt variable
        mz.adultind <- mz.adultind %>%
          mutate(cerncntrt = case_when(
            cerncntrt == 2 ~ 1,
            TRUE ~ cerncntrt
          ))
        
        mz.adultind$cerncntrt <- labelled(
          mz.adultind$cerncntrt,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes, I Was Treated On The Same Day or On A Different Day" = 1,
                     "No" = 3),
          label = "Receive treatment after last test"
        )
        
        # Rename the workind variable
        mz.adultind <- mz.adultind %>%
          rename(workind = workind_mz)
        
        #recoding workind variable
        mz.adultind <- mz.adultind %>%
          mutate(workind = case_when(
            workind > 10 ~ 96,
            TRUE ~ workind
          ))
        
        mz.adultind$workind <- labelled(
          mz.adultind$workind,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Mining" = 1,
                     "Agriculture/Farming" = 2,
                     "Transport" = 3,
                     "Construction" = 4,
                     "Uniformed Personnel" = 5,
                     "Informal Trade" = 6,
                     "Garment Industries" = 7,
                     "Housekeeper" = 8,
                     "Sex Worker" = 9,
                     "Student" = 10,
                     "Other (Specify)" = 96),
          label = "Occupation"
        )
        
        # Rename the hivtstlocation variable
        mz.adultind <- mz.adultind %>%
          rename(hivtstlocation = hivtstlocation_mz)
        
##Lesotho
ls.adultind <- read_dta(here("LePHIA 2020","lephia2020adultind.dta"))
ls.adultbio <- read_dta(here("LePHIA 2020","lephia2020adultbio.dta"))

        #recoding urban/rural variable
        ls.adultind <- ls.adultind %>%
          mutate(urban = case_when(
            urban == 1 ~ 1,
            urban == 2 ~ 1,
            urban == 3 ~ 2
          ))
        
        ls.adultind$urban <- labelled(
          ls.adultind$urban,
          labels = c("Urban" = 1, "Rural" = 2),
          label = "Urban/rural area Indicator"
        )
        
        #recoding arvswitchwhy variable
        ls.adultind <- ls.adultind %>%
          mutate(arvswitchwhy = case_when(
            arvswitchwhy == 52 ~ 5,
            arvswitchwhy == 51 ~ 6,
            TRUE ~ arvswitchwhy
          ))
        
        ls.adultind$arvswitchwhy <- labelled(
          ls.adultind$arvswitchwhy,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "I Was Not Responding To My First Treatment" = 1,
                     "My Viral Load Wasn't Suppressed" = 2,
                     "I Wanted To Get Pregnant Or Was Pregnant" = 3,
                     "I Was Having/Worried About Serious Side Effects" = 4,
                     "Change in national regimen/Treatment improvements" = 5, 
                     "Drug availability" = 6,
                     "Other (Specify)" = 96),
          label = "Reason why ARVs were changed"
        )
        
        #recoding mcstatus variable
        ls.adultind <- ls.adultind %>%
          mutate(mcstatus = case_when(
            mcstatus == 2 ~ 1,
            TRUE ~ mcstatus
          ))
        
        ls.adultind$mcstatus <- labelled(
          ls.adultind$mcstatus,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes" = 1,
                     "No" = 3),
          label = "Are you circumcised?"
        )
        
        #recoding hivtstlocation variable 
        ls.adultind <- ls.adultind %>%
          mutate(hivtstlocation = case_when(
            hivtstlocation > 10 ~ 96,
            TRUE ~ hivtstlocation
          ))
        
        ls.adultind$hivtstlocation <- labelled(
          ls.adultind$hivtstlocation,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Vct Facility" = 1,
                     "Mobile Vct" = 2,
                     "At Home" = 3,
                     "Health Clinic / Facility" = 4,
                     "Hospital Outpatient Clinic" = 5,
                     "Tb Clinic" = 6,
                     "Sti Clinic" = 7,
                     "Hospital Inpatient Wards" = 8,
                     "Blood Donating Center" = 9,
                     "Anc Clinic" = 10,
                     "Other (Specify)" = 96),
          label = "Where last HIV test was conducted"
        )
        
##Malawi
mw.adultind <- read_dta(here("MPHIA 2020-2021","mphia2020adultind.dta"))
mw.adultbio <- read_dta(here("MPHIA 2020-2021","mphia2020adultbio.dta"))

        #recoding arvswitchwhy variable
        mw.adultind <- mw.adultind %>%
          mutate(arvswitchwhy = case_when(
            arvswitchwhy == 51 ~ 5,
            TRUE ~ arvswitchwhy
          ))
        
        mw.adultind$arvswitchwhy <- labelled(
          mw.adultind$arvswitchwhy,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "I Was Not Responding To My First Treatment" = 1,
                     "My Viral Load Wasn't Suppressed" = 2,
                     "I Wanted To Get Pregnant Or Was Pregnant" = 3,
                     "I Was Having/Worried About Serious Side Effects" = 4,
                     "Change in national regimen/Treatment improvements" = 5, 
                     "Other (Specify)" = 96),
          label = "Reason why ARVs were changed"
        )
        
        #recoding numwif variable to be top coded at 2
        mw.adultind <- mw.adultind %>%
          mutate(numwif = case_when(
            numwif > 2 ~ -7,
            TRUE ~ numwif
          ))
        
        mw.adultind$numwif <- labelled(
          mw.adultind$numwif,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of wives or live-in partners in the household (top coded at 2)"
        )
        
        #labelling the out of range values for part12monum
        mw.adultind$part12monum <- labelled(
          mw.adultind$part12monum,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of sexual partners in last 12 months (top coded at 6)"
        )
        
        #recoding mcstatus variable
        mw.adultind <- mw.adultind %>%
          mutate(mcstatus = case_when(
            mcstatus == 2 ~ 1,
            TRUE ~ mcstatus
          ))
        
        mw.adultind$mcstatus <- labelled(
          mw.adultind$mcstatus,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes" = 1,
                     "No" = 3),
          label = "Are you circumcised?"
        )
        
        #recoding hivtstrsn variable
        mw.adultind <- mw.adultind %>%
          mutate(hivtstrsn = case_when(
            hivtstrsn == 8 ~ 96,
            TRUE ~ hivtstrsn
          ))
        
        mw.adultind$hivtstrsn <- labelled(
          mw.adultind$hivtstrsn,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Was Offered Test By Health Care Or Outreach Worker" = 1,
                     "Wanted To Know My HIV Status" = 2,
                     "Felt At Risk" = 3,
                     "Felt Sick" = 4,
                     "New Partner" = 5,
                     "Pregnancy" = 6,
                     "My Partner Tested Positive" = 7,
                     "Other (Specify)" = 96),
          label = "Main reason for last HIV test"
        )
        
        #recoding hivtstlocation variable 
        mw.adultind <- mw.adultind %>%
          mutate(hivtstlocation = case_when(
            hivtstlocation > 10 ~ 96,
            TRUE ~ hivtstlocation
          ))
        
        mw.adultind$hivtstlocation <- labelled(
          mw.adultind$hivtstlocation,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Vct Facility" = 1,
                     "Mobile Vct" = 2,
                     "At Home" = 3,
                     "Health Clinic / Facility" = 4,
                     "Hospital Outpatient Clinic" = 5,
                     "Tb Clinic" = 6,
                     "Sti Clinic" = 7,
                     "Hospital Inpatient Wards" = 8,
                     "Blood Donating Center" = 9,
                     "Anc Clinic" = 10,
                     "Other (Specify)" = 96),
          label = "Where last HIV test was conducted"
        )
        
##Eswatini
sz.adultind <- read_dta(here("SHIMS3 2021","shims32021adultind.dta"))
sz.adultbio <- read_dta(here("SHIMS3 2021","shims32021adultbio.dta"))

        #labelling out of range values
        sz.adultind$numwif <- labelled(
          sz.adultind$numwif,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of wives or live-in partners in the household (top coded at 2)"
        )
        
        #labelling the out of range values for part12monum
        sz.adultind$part12monum <- labelled(
          sz.adultind$part12monum,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of sexual partners in last 12 months (top coded at 6)"
        )
        
        #Renaming mcstatus variable
        sz.adultind <- sz.adultind %>%
          rename(mcstatus = mcstatus_sz)
        
        #recoding cerncnrslt variable
        sz.adultind <- sz.adultind %>%
          mutate(cerncnrslt = case_when(
            cerncnrslt == 3 ~ 2,
            TRUE ~ cerncnrslt
          ))
        
        sz.adultind$cerncnrslt <- labelled(
          sz.adultind$cerncnrslt,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Normal/Negative" = 1,
                     "Abnormal/Positive/Suspect Cancer" = 2,
                     "Unclear/InconclusiveDid Not Receive Results" = 5),
          label = "Result of last cervical cancer test"
        )
        
        #recoding cerncntrt variable
        sz.adultind <- sz.adultind %>%
          mutate(cerncntrt = case_when(
            cerncntrt == 2 ~ 1,
            TRUE ~ cerncntrt
          ))
        
        sz.adultind$cerncntrt <- labelled(
          sz.adultind$cerncntrt,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes, I Was Treated On The Same Day or On A Different Day" = 1,
                     "No" = 3),
          label = "Receive treatment after last test"
        )
        
        #recoding workind variable
        sz.adultind <- sz.adultind %>%
          mutate(workind = case_when(
            workind > 10 ~ 96,
            TRUE ~ workind
          ))
        
        sz.adultind$workind <- labelled(
          sz.adultind$workind,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Mining" = 1,
                     "Agriculture/Farming" = 2,
                     "Transport" = 3,
                     "Construction" = 4,
                     "Uniformed Personnel" = 5,
                     "Informal Trade" = 6,
                     "Garment Industries" = 7,
                     "Housekeeper" = 8,
                     "Sex Worker" = 9,
                     "Student" = 10,
                     "Other (Specify)" = 96),
          label = "Occupation"
        )
        
        # Rename the hivtstlocation variable
        sz.adultind <- sz.adultind %>%
          rename(hivtstlocation = hivtstlocation_sz)
        
        #recoding hivtstlocation variable 
        sz.adultind <- sz.adultind %>%
          mutate(hivtstlocation = case_when(
            hivtstlocation > 10 ~ 96,
            TRUE ~ hivtstlocation
          ))
        
        sz.adultind$hivtstlocation <- labelled(
          sz.adultind$hivtstlocation,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Vct Facility" = 1,
                     "Mobile Vct" = 2,
                     "At Home" = 3,
                     "Health Clinic / Facility" = 4,
                     "Hospital Outpatient Clinic" = 5,
                     "Tb Clinic" = 6,
                     "Sti Clinic" = 7,
                     "Hospital Inpatient Wards" = 8,
                     "Blood Donating Center" = 9,
                     "Anc Clinic" = 10,
                     "Other (Specify)" = 96),
          label = "Where last HIV test was conducted"
        )

##Tanzania
tz.adultind <- read_dta(here("THIS 2022-2023","this2022adultind.dta"))
tz.adultbio <- read_dta(here("THIS 2022-2023","this2022adultbio.dta"))

        #recoding numwif variable to be top coded at 2
        tz.adultind <- tz.adultind %>%
          mutate(numwif = case_when(
            numwif > 2 ~ -7,
            TRUE ~ numwif
          ))
        
        tz.adultind$numwif <- labelled(
          tz.adultind$numwif,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of wives or live-in partners in the household (top coded at 2)"
        )
        
        #labelling the out of range values for part12monum
        tz.adultind$part12monum <- labelled(
          tz.adultind$part12monum,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Out of Range" = -7),
          label = "Number of sexual partners in last 12 months (top coded at 6)"
        )
        
        #recoding mcstatus variable
        tz.adultind <- tz.adultind %>%
          mutate(mcstatus = case_when(
            mcstatus == 2 ~ 1,
            TRUE ~ mcstatus
          ))
        
        tz.adultind$mcstatus <- labelled(
          tz.adultind$mcstatus,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes" = 1,
                     "No" = 3),
          label = "Are you circumcised?"
        )
        
        #recoding cerncntrt variable
        tz.adultind <- tz.adultind %>%
          mutate(cerncntrt = case_when(
            cerncntrt == 2 ~ 1,
            TRUE ~ cerncntrt
          ))
        
        tz.adultind$cerncntrt <- labelled(
          tz.adultind$cerncntrt,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Yes, I Was Treated On The Same Day or On A Different Day" = 1,
                     "No" = 3),
          label = "Receive treatment after last test"
        )
        
        #recoding hivtstlocation variable 
        tz.adultind <- tz.adultind %>%
          mutate(hivtstlocation = case_when(
            hivtstlocation > 10 ~ 96,
            TRUE ~ hivtstlocation
          ))
        
        tz.adultind$hivtstlocation <- labelled(
          tz.adultind$hivtstlocation,
          labels = c("Refused" = -9,
                     "Don't Know" = -8,
                     "Vct Facility" = 1,
                     "Mobile Vct" = 2,
                     "At Home" = 3,
                     "Health Clinic / Facility" = 4,
                     "Hospital Outpatient Clinic" = 5,
                     "Tb Clinic" = 6,
                     "Sti Clinic" = 7,
                     "Hospital Inpatient Wards" = 8,
                     "Blood Donating Center" = 9,
                     "Anc Clinic" = 10,
                     "Other (Specify)" = 96),
          label = "Where last HIV test was conducted"
        )
        
        #renaming remaining variables that end in _tz
        colnames(tz.adultind) <- gsub("_tz$", "", colnames(tz.adultind))
        
##Uganda
ug.adultind <- read_dta(here("UPHIA 2020-2021","uphia2020adultind.dta"))
ug.adultbio <- read_dta(here("UPHIA 2020-2021","uphia2020adultbio.dta"))

          #renaming arvswitchwhy variable
          ug.adultind <- ug.adultind %>%
            rename(arvswitchwhy = arvswitchwhy_ug)
          
          #recoding numwif variable to be top coded at 2 and removing "out of range" category
          ug.adultind <- ug.adultind %>%
            mutate(numwif = case_when(
              numwif > 2 ~ 2,
              numwif == -7 ~ 2,
              TRUE ~ numwif
            ))
          
          ug.adultind$numwif <- labelled(
            ug.adultind$numwif,
            labels = c("Refused" = -9,
                       "Don't Know" = -8),
            label = "Number of wives or live-in partners in the household (top coded at 2)"
          )
          
          #Renaming mcstatus variable
          ug.adultind <- ug.adultind %>%
            rename(mcstatus = mcstatus_ug)
          
          #recoding mcstatus variable
          ug.adultind <- ug.adultind %>%
            mutate(mcstatus = case_when(
              mcstatus == 2 ~ 3,
              TRUE ~ mcstatus
            ))
          
          ug.adultind$mcstatus <- labelled(
            ug.adultind$mcstatus,
            labels = c("Refused" = -9,
                       "Don't Know" = -8,
                       "Yes" = 1,
                       "No" = 3),
            label = "Are you circumcised?"
          )
          
          #recoding hivtstrsn variable
          ug.adultind <- ug.adultind %>%
            mutate(hivtstrsn = case_when(
              hivtstrsn == 8 ~ 96,
              TRUE ~ hivtstrsn
            ))
          
          ug.adultind$hivtstrsn <- labelled(
            ug.adultind$hivtstrsn,
            labels = c("Refused" = -9,
                       "Don't Know" = -8,
                       "Was Offered Test By Health Care Or Outreach Worker" = 1,
                       "Wanted To Know My HIV Status" = 2,
                       "Felt At Risk" = 3,
                       "Felt Sick" = 4,
                       "New Partner" = 5,
                       "Pregnancy" = 6,
                       "My Partner Tested Positive" = 7,
                       "Other (Specify)" = 96),
            label = "Main reason for last HIV test"
          )
          
          # Rename the workind variable
          ug.adultind <- ug.adultind %>%
            rename(workind = workind_ug)
          
          #recoding workind variable
          ug.adultind <- ug.adultind %>%
            mutate(workind = case_when(
              workind > 10 ~ 96,
              TRUE ~ workind
            ))
          
          ug.adultind$workind <- labelled(
            ug.adultind$workind,
            labels = c("Refused" = -9,
                       "Don't Know" = -8,
                       "Mining" = 1,
                       "Agriculture/Farming" = 2,
                       "Transport" = 3,
                       "Construction" = 4,
                       "Uniformed Personnel" = 5,
                       "Informal Trade" = 6,
                       "Garment Industries" = 7,
                       "Housekeeper" = 8,
                       "Sex Worker" = 9,
                       "Student" = 10,
                       "Other (Specify)" = 96),
            label = "Occupation"
          )
          
          # Rename the hivtstlocation variable
          ug.adultind <- ug.adultind %>%
            rename(hivtstlocation = hivtstlocation_ug)
          
          #recoding hivtstlocation variable 
          ug.adultind <- ug.adultind %>%
            mutate(hivtstlocation = case_when(
              hivtstlocation > 10 ~ 96,
              TRUE ~ hivtstlocation
            ))
          
          ug.adultind$hivtstlocation <- labelled(
            ug.adultind$hivtstlocation,
            labels = c("Refused" = -9,
                       "Don't Know" = -8,
                       "Vct Facility" = 1,
                       "Mobile Vct" = 2,
                       "At Home" = 3,
                       "Health Clinic / Facility" = 4,
                       "Hospital Outpatient Clinic" = 5,
                       "Tb Clinic" = 6,
                       "Sti Clinic" = 7,
                       "Hospital Inpatient Wards" = 8,
                       "Blood Donating Center" = 9,
                       "Anc Clinic" = 10,
                       "Other (Specify)" = 96),
            label = "Where last HIV test was conducted"
          )
          
          #renaming remaining variables that end in _ug
          colnames(ug.adultind) <- gsub("_ug$", "", colnames(ug.adultind))
          
###joining biomarker and interview data for each country
countries = list("mz","ls","mw","sz","tz","ug")

for (country in countries) {

  ind_name <- paste0(country, ".adultind")
  bio_name <- paste0(country, ".adultbio")
  
  ind_data <- get(ind_name)
  bio_data <- get(bio_name)
  
  joined_data <- right_join(ind_data, bio_data)
  
  assign(paste0(country, ".ALL"), joined_data)
}

###denormalizing sample weights in preparation for pooled analyses 
##standard weight * (target population/number of completed cases) 
##[Source: DHS Sampling & Household Listing Manual]

ls.ALL <- ls.ALL %>%
  mutate(btwt0_b = btwt0*(1425835/nrow(ls.ALL))) 
#source: LePHIA 2020 Sampling & Weighting Technical Report p. 3-29

mz.ALL <- mz.ALL %>%
  mutate(btwt0_b = btwt0*(16825333/nrow(mz.ALL))) 
#source: INSIDA 2021 Sampling & Weighting Technical Report p. 3-41

mw.ALL <- mw.ALL %>%
  mutate(btwt0_b = btwt0*(10659079/nrow(mw.ALL))) 
#source: MPHIA 2020-2021 Sampling & Weighting Technical Report p. 3-31

sz.ALL <- sz.ALL %>%
  mutate(btwt0_b = btwt0*(745572/nrow(sz.ALL))) 
#source: SHIMS3 2021 Sampling & Weighting Technical Report p. 3-29

tz.ALL <- tz.ALL %>%
  mutate(btwt0_b = btwt0*(35341131/nrow(tz.ALL))) 
#source: THIS 2022 Sampling & Weighting Technical Report p. 3-33

ug.ALL <- ug.ALL %>%
  mutate(btwt0_b = btwt0*(22792900/nrow(ug.ALL))) 
#source: UPHIA 2020-2021 Sampling & Weighting Technical Report p. 3-30

###merging joined datasets 
allcountries <- bind_rows(mz.ALL, ls.ALL, mw.ALL, sz.ALL, tz.ALL, ug.ALL)

###filtering to only include HIV+ people 
allcountries <- allcountries %>%
  filter(tri90 == 1)

###creating categorical variable for age
allcountries <- allcountries %>% 
  mutate(age_cat = case_when(
  age >= 15 & age <= 24 ~ "15-24",
  age >= 25 & age <= 34 ~ "25-34",
  age >= 35 & age <= 44 ~ "35-44",
  age >= 45 & age <= 54 ~ "45-54",
  age >= 55 & age <= 64 ~ "55-64",
  age >= 65 & age <= 74 ~ "65-74",
  age >= 75 ~ "75+"
  ))

###creating variable for time elapsed since last test

##creating date object for date of last HIV test & date of survey
allcountries <- allcountries %>% 
  mutate(hivtesty = case_when(
    hivtesty %in% c(-9, -8) ~ NA,
    TRUE ~ hivtesty), 
    hivtestm = case_when(
    hivtestm %in% c(-9, -8) ~ NA,
    TRUE ~ hivtestm) 
    ) %>%
  mutate(lasttestdate = make_date(hivtesty, hivtestm, 1)) %>%
  mutate(surveydate = make_date(surveystyear, surveystmonth, 1)) 

##calculating time since last test 
allcountries <- allcountries %>% 
  mutate(monthssincelasttest = floor(time_length(interval(lasttestdate,surveydate), "months")))

##converting hivtesty and surveystyear so they can be preoperly compared
allcountries$surveystyear <- as.numeric(as.character(allcountries$surveystyear))
allcountries$hivtesty <- as.numeric(as.character(allcountries$hivtesty))

##creating variable to indicate which observations require imputation of test recency
allcountries <- allcountries %>% 
  mutate(needsrecencyimputing = case_when(
    !is.na(monthssincelasttest) ~ "No - Complete Date",
    
    is.na(monthssincelasttest) & surveystyear == hivtesty & is.na(hivtestm) 
     ~ "No - Test Completed This Year",
    
    is.na(monthssincelasttest) & (is.na(hivtestm) | is.na(hivtesty)) & 
      surveystyear != hivtesty & tri90sraware == 2 & arvstatus == 1 
    ~ "Yes - Self-Reported Unawareness But ARVs Detected",
    
    is.na(monthssincelasttest) & (is.na(hivtestm) | is.na(hivtesty))
    ~ "Yes - Incomplete Date"
  ))

####categorizing time since last test semi-dichotomously 
allcountries <- allcountries %>% 
   mutate(timesincelasttest = case_when(
     monthssincelasttest < 12 | 
       needsrecencyimputing == "No - Test Completed This Year" ~ "<1 year",
     monthssincelasttest >= 12 & monthssincelasttest < 35 ~ "1-2 years",
     monthssincelasttest >= 36 & monthssincelasttest < 59 ~ "3-4 years",
     monthssincelasttest > 60 | hivtstever == 2 ~ "5+ years and never tested"
   ))

##creating variable to indicate which observations require imputation of recentlagvl
allcountries <- allcountries %>% 
  mutate(needsrecentlagvlimputing = if_else(recentlagvl == 99,"Yes","No"))


allcountries <- allcountries %>% mutate(across(where(is.labelled), to_factor))

#recoding NA values for marital status, education level, HIV status awareness & recentlagvl
allcountries <- allcountries %>%
  mutate(
    curmar = fct_recode(curmar, NULL = "(-9) Refused"),
    curmar = fct_recode(curmar, NULL = "(-8) Don't Know"),
    recentlagvl = fct_recode(recentlagvl, NULL = "(99) Missing/Not applicable"),
    tri90sraware = fct_recode(tri90sraware, NULL = "(99) Incomplete tri90sr information"),
    tri90aware = fct_recode(tri90aware, NULL = "(99) Incomplete tri90 information"),
    education = fct_recode(education, NULL = "(99) Missing")
  )

var_label(allcountries$timesincelasttest) <- "Time since last test"
var_label(allcountries$curmar) <- "Marital status"
var_label(allcountries$recentlagvl) <- "LAg: recent/long term infection, final code"
var_label(allcountries$tri90aware) <- "Aware recode (adjusted for ARV data) for cascade analysis"

###exporting cleaned data in a .dta file to be used in Stata
write_dta(allcountries, "allcountries.dta")