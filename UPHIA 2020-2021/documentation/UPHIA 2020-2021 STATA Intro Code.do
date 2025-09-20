/****************************************************************************************************
Getting Started with PHIA Data: Stata Intro Code
Version 1.0

Purpose: The Intro Code included in this program provides Stata code examples to do the following: 

Section 1. Preparing the data for analysis: 

  1.  Set up program environment
  2.  Read PHIA datasets
  3   Recoding and labeling values and variables

Section 2. Example analyses: 

  4.  Estimate HIV prevalence overall and by gender using Jackknife variance estimation
  5.  Estimate the UNAIDS 90-90-90 / 95-95-95 cascade (ARV-adjusted)
  6.  Estimate annual incidence

Section 3. Other data tips: Merge datasets and using the survey status indicator flags (hhstatus, indstatus, bt_status)

******************************************************************************************************/

/*******************************************************************************************************
 *******************************************************************************************************
 Section 1. Preparing the data for analysis: 
	  --- Set up program environment
	  --- Read in PHIA datasets
	  --- Recoding 
	  --- Defining weights
 *******************************************************************************************************
*******************************************************************************************************/

/****************************************************************************************************** 
 1. Set up program environment
     --- Define global macro variables for standard country-specific elements and data location
******************************************************************************************************/

*cd "C:/Desktop"						//location of data for analysis

*global country "Uganda" //country name
*global survey uphia2020 			//survey prefix
*global weights "159" 		//Number of survey-specific jackknife replicate weights

/*************************************************************************************************** 
  2. Read-in data
     ---Read-in adultbio dataset for analysis
***************************************************************************************************/

//Adultbio
use "uphia2020adultbio.dta", clear

*************************************************************************
* 3. Creating recodes and labeling values and variables
*************************************************************************

//recoding numeric variables- recommend recode 99 (missing) to "."  
recode hivstatusfinal 1=1 2=2 99=.

//labelling values 
	*label define creates a value label, which is a set of individual numeric values and their corresponding labels
	*label values attaches a value label to variable or variable list
label define hiv 1 "1-HIV positive" 2 "2-HIV negative"
label values hivstatusfinal hiv

*************************************************************************
* 4. Specify weights													
*************************************************************************

*** Declare survey design, JK2
* Note jkrweight option specifies the number of JK weights;
* Check that no. JK weights matches country specifications;
svyset [pw=btwt0], jkrweight(btwt001-btwt$weights, multiplier(1)) vce(jackknife) dof(25)

*** Declare survey design, Taylor series linearization
//Uncomment the following line for Taylor Series
//svyset varunit [pw=btwt0], strata(varstrat) vce(linearized) singleunit(scaled)

/*******************************************************************************************************
 *******************************************************************************************************
 Section 2. Example Analyses: 
  ---Estimate HIV prevalence overall and by gender using Jackknife variance estimation
  ---Estimate HIV prevalence for subpopulations using Taylor Series variance estimation
  ---Estimate the UNAIDS 90-90-90 / 95-95-95 cascade
  ---Estimate annual incidence
 *******************************************************************************************************
*******************************************************************************************************/

/*******************************************************************************
   4. Estimate HIV prevalence using Jackknife variance estimation
********************************************************************************/

** Weighted estimate of HIV prevalence 
svy: tab hivstatusfinal, percent se level(95) ci obs format(%8.6g)
svy: tab hivstatusfinal, count se level(95) ci obs format(%12.6g)

********************************************************************************
**Options for tabulation:                                                     **
**        percent- will display the point estimate as a percentage            **
**        count- will display the total counts of the weights                 **
**        se- will display the Standard Error                                 **
**        ci- display the confidence internal- default is level(95)           **
**        level(#) set the confidence level                                   **
**        obs- displays the observations                                      **
********************************************************************************

//Weighted estimate of HIV prevalence by gender

svy: tab hivstatusfinal gender, percent se ci col obs format(%8.6g)

/******************************************************************************
* 5. Estimate the ARV-adjusted conditional UNAIDS 90-90-90 / 95-95-95 cascade
       ---Note: tri90 variable is a flag indicating records are to be included in the
                    ARV adjusted cascade. Flow diagrams in the country-specific supplement 
                    are available for these analysis variables. 
******************************************************************************/

**create binary variables**
recode tri90 2=0
label define tri90 ///
	1  "(1) Observations to be included in the 90 90 90 analysis using ARV data"  ///
	0  "(0) Observations to be excluded in the 90 90 90 analysis for ARV data due to incomplete data" 
lab val tri90 tri90

recode tri90aware 2=0 3=0 99=.
label define tri90aware ///
 	1  "(1) Aware or considered aware because ARVs detectable" ///
	0 "(0) Unaware and ARVs not detectable or unaware and ARVs missing" 
lab val tri90aware tri90aware

recode tri90art 2=0  3=0 99=.
label define tri90art ///
	1  "(1) ARVs detectable, self-reported on ART, or both ARVs detectable and self-reported on ART" ///
	0  "(0) ARVs not detectable and self-reported not on ART or missing ARV data and unaware" 
lab val tri90art tri90art

recode tri90vls 2=0 3=0 99=.
label define tri90vls ///
	1  "(1) VLS"  ///
	0  "(0) Not VLS"  
lab val tri90vls tri90vls

//Estimating the ARV-adjusted 1st 90: Awareness
svy, subpop(tri90): tab tri90aware, percent se ci obs format(%8.6g)

//Estimating the ARV-adjusted 2nd 90: ARV use, conditional on awareness
svy, subpop(tri90aware):tab tri90art, percent se ci obs format(%8.6g)

//Estimating the ARV-adjusted 3rd 90: Viral suppression, conditional on awareness and ART use
svy, subpop(tri90art): tab tri90vls, percent se ci obs format(%8.6g)

/*******************************************************************************
6. Estimate annual incidence
   --- Annual incidence code was based on a SAS macro. 
********************************************************************************/

gen age15_49=1 if age >= 15 & age <= 49
replace age15_49=0 if age > 49

*if variable exists in data, do this: recode age15_49 1=1 2=0
label define age15_49 1 "1-Yes" 0 "0-No"
label values age15_49 age15_49

**************************
*** Specify parameters ***
**************************

// Data-related parameters
	// Filter variables: for example, if estimate of interest is among subsetted population (e.g., aged 15 to 49)
	keep if age15_49 == 1
	// diffvar - stratification variable by which incidence will be calculated separately (e.g., gender)-- one at a time
	global diffvar "gender"
	// Recency variable
	global recent "recentlagvlarv"

// Incidence estimator parameters
	// Mean duration of recent infection, MDRI (omega)
	global omega = 153
	// Variance(MDRI)
	global sig_omega2 = 162.6926
	// Proportion of false recents
	global pfr = 0
	// Variance(PFR)
	global sig_pfr2 = 0

****************************
*** Incidence calculator ***
****************************

// Subset to participants with valid data on HIV status
keep if inlist(hivstatusfinal,1,2)
keep if bt_status == 1

//Sort data by stratification variable
sort $diffvar

//Calculate sum of blood weights by diffvar
by $diffvar: egen sumbtwt0 = sum(btwt0)
	format sumbtwt0 %15.0f
egen _freq_ = count(1), by ($diffvar)

//Normalized weights such that sum of the weights = number of observations 
gen norm_btwt = btwt0 * (_freq_ / sumbtwt0)

//Create indicator for HIV/recency status (when_infected)
gen when_infected = 1 if hivstatusfinal == 1 & $recent == 1
replace when_infected = 2 if hivstatusfinal == 1 & $recent == 2
replace when_infected = 3 if hivstatusfinal == 1 & !inlist($recent,1,2)
replace when_infected = 4 if hivstatusfinal == 2

gen pplusn = 1
gen n_ = 1 if when_infected == 4
	replace n_ = 0 if when_infected != 4
gen p_ = when_infected
	recode p_ (1/3 = 1) (4=0)
gen q_ = when_infected
	recode q_ (1/2 = 1) (3=0) (4=0)
gen r_ = 1 if when_infected == 1
	replace r_ = 0 if when_infected != 1
	
gen pplusn_wtd = pplusn * norm_btwt
gen n_wtd = n_ * norm_btwt
gen p_wtd = p_ * norm_btwt
gen q_wtd = q_ * norm_btwt
gen r_wtd = r_ * norm_btwt

gen pplusn_pop = pplusn * btwt0
gen p_pop = p_ * btwt0
gen q_pop = q_ * btwt0
gen r_pop = r_ * btwt0

gen recent_over_all = 100 if $recent == 1
	replace recent_over_all = 0 if $recent != 1

// Estimate design effects and save for later use when calculating variance
	//Declare survey design
	svyset [pw=btwt0], jkrweight(btwt001-btwt$weights, multiplier(1)) vce(jackknife) //Note this calculator uses default df, instead of dof(25) used in final report calculations
	
	//For loop to calculate design effect over categories of stratification variable
	levelsof $diffvar, local(categories)
		foreach ctg in `categories' {
			svy jackknife: tab recent_over_all if $diffvar == `ctg', deff
			matrix deff_`ctg' = e(Deff)
			}
	
// Obtain aggregate counts
collapse (sum) 	pplusn_sum = pplusn ///
				p_sum = p_ ///
				q_sum = q_ ///
				r_sum = r_ ///
				pplusn_wtd_sum = pplusn_wtd ///
				p_wtd_sum = p_wtd ///
				q_wtd_sum = q_wtd ///
				r_wtd_sum = r_wtd ///
				pplusn_pop_sum = pplusn_pop ///
				p_pop_sum = p_pop ///
				q_pop_sum = q_pop ///
				r_pop_sum = r_pop ///
				, by($diffvar)
format *_pop_sum %15.2f

//Calculate incidence
gen neg_wtd = (pplusn_wtd_sum - p_wtd_sum) * (q_wtd_sum / p_wtd_sum) // this weights up P&Q to make up for indeterminate results on recency test
gen incid_instant = (r_wtd_sum - $pfr * q_wtd_sum) / ((1 - $pfr / $omega) * ($omega / 365) * neg_wtd) // reduces to (r_wtd_sum/neg_wtd)*(365/$omega.) if false recent rate (pfr) = 0
gen incid_annual = 100 *( 1 - exp(-incid_instant)) // expressed as annual percent

// Estimate number of new cases based on incidence and population at risk
gen neg_pop= pplusn_pop_sum - p_pop_sum
gen new_cases_pop = neg_pop*incid_annual/100
format neg_pop new_cases_pop %15.2f


//Variance
gen A = (1/q_wtd_sum)*((1/neg_wtd) + (r_wtd_sum * (p_wtd_sum - r_wtd_sum))/ (r_wtd_sum - $pfr * p_wtd_sum)^2)
gen B = $sig_omega2 * 1/ ($omega - $pfr * 365)^2
gen C = $sig_pfr2 * ( ( ( p_wtd_sum - r_wtd_sum) * $omega - r_wtd_sum * (365 - $omega))/ ((r_wtd_sum - $pfr * p_wtd_sum) * ($omega - $pfr *365))) ^ 2

//Formula for instantaneous incidence
gen c_sq = (A + B + C)
gen probit_test = invnormal(0.975)
gen lcl_i = incid_instant * (1 - sqrt(c_sq) * probit_test)
gen ucl_i = incid_instant * (1 + sqrt(c_sq) * probit_test)


//Convert upper and lower limits of the interval into annual incidence
gen lcl_a = 100 * (1 - exp(-lcl_i))
gen ucl_a = 100 * (1- exp(-ucl_i))


// design effect
// uses for loop to read in estimated design effects over levels of the stratification variable
gen designeffect = .
levelsof $diffvar, local(categories)
foreach ctg in `categories' {
	replace designeffect = deff_`ctg'[1, 1] if _n ==`ctg'
	}

//Second confidence interval adjusts for the design effect
// When design effect < 1, use 1
gen adj_c_sq = max(1.0, designeffect) * (A + B + C) 
gen probit_calc = invnormal(0.975)
gen adj_lcl_i = incid_instant * (1 - sqrt(adj_c_sq) * probit_calc)
gen adj_ucl_i = incid_instant * (1 + sqrt(adj_c_sq) * probit_calc)

//Clopper-Pearson CI for cases where R = 0
replace adj_lcl_i = 0 if r_wtd == 0
gen r_cpucl_adj = neg_wtd * (1- (0.05/2)^( max(1.0, designeffect) / pplusn_wtd_sum)) 				if r_wtd_sum == 0
replace adj_ucl_i = (r_cpucl_adj - $pfr * q_wtd_sum) / ((1 - $pfr/ $omega) * ($omega/365)*neg_wtd) 	if r_wtd == 0

//Convert upper and lower limits of the interval into annual incidence
gen adj_lcl_a = 100 *(1 - exp(-adj_lcl_i))
gen adj_ucl_a = 100 *(1 - exp(-adj_ucl_i))

/*******************************************************************************************************
 *******************************************************************************************************
 Section 3. Other data tips: 
	  ---How to merge datasets
		     ---Some analyses require merging datasets. 
                -Example 1: Creates a merged dataset for those who were interviewed (indstatus=1) and 
                 had a blood test result (bt_status = 1)
                -Example 2: Creates a merged dataset with all rostered household members in an eligible responding household
 *******************************************************************************************************
*******************************************************************************************************/

********************************************************************************
**   merge joins corresponding observations from the dataset currently in     **
**   memory (called the master dataset) with those from filename.dta (called  **
**   the using dataset), matching on one or more key variables. merge can     **
**   perform match merges (one-to-one, one-to-many, many-to-one, and          **
**   many-to-many).                                                           **
**   merge creates a new variable,_merge, containing numeric codes concerning ** 
**   the source and thecontents of each observation in the merged dataset. You**
**   will need to drop the _merge variable if plan to continue merging other  **
**   datasets.                                                                **
********************************************************************************

//One-to-one merge
//Merge the adult individual dataset with the adult bio dataset using the unique identifier "personid" 
use "uphia2020adultind.dta", clear
merge 1:1 personid using uphia2020adultbio.dta
tab _merge 
drop _merge
keep if indstatus==1 & bt_status==1 

//One-to-many
//Merge the houshold dataset (1 household) with the roster data (rostered people in each household)
use "uphia2020hh.dta", clear
merge 1:m householdid using uphia2020roster.dta

//Many-to-one
//Merge the individual dataset with the household dataset and only keep eligible and responding people
use "uphia2020adultind.dta", clear
merge m:1 householdid using uphia2020hh.dta
tab _merge 
drop _merge
keep if indstatus==1 & hhstatus==1
tab indstatus //Number of people who interviewed
