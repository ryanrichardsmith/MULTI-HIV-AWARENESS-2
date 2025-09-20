*************************************************************************
* Project: Getting started with INSIDA 2021 data in Stata			*
* 																		*
* Purpose: The purpose of this file is to provide a template for 	  	*
* 			- 1. Importing the PHIA data in stata						*
*			- 2. Merging datasets										*
*			- 3. Labeling values and variables, recodes					*
*			- 4. Setting up surveyset for weighted estimates using		*
*				Jackknife and Taylor Series variance estimation			*
*			- 5. Tabulating unweighted counts and weighted percentages 	*
* 			- 6. Analyzing subpopulations								*
*			- 7. Estimating prevalence									*
*			- 8. Estimating vls, by select stratifiers					*
*			- 9. Estimating the 90-90-90 cascade						*		
*																		*
* Input: insida2021adultind.dta, insida2021adultbio.dta					*	
*        insida2021hh.dta											    *
*																		*
* Output: prevalence, viral load suppression (overall and pregnancy), 	*
*			95-95-95													*
*																		*
* Instruction: This template is for INSIDA 2021	and the program 		*
*				can be run in separate pieces or all at once.		    *
*																		*
*************************************************************************																		

*************************************************************************
* 1. Import PHIA data													*
*************************************************************************

// Specify filepath and dataset name
global filepath "C:\Desktop"
global country "Mozambique"
global dataset "adultbio"
global dataset2 "adultind"
global dataset3 "hh"
global survey "insida2021"
global weights "159" //This is the number of Jackknife replicate weights

// Import dataset
use "$filepath\\$survey$dataset.dta", clear


*************************************************************************
* 2. Merging datasets
*************************************************************************

*** Merge select ind variables from AdultInd dataset
merge m:1 personid using "$filepath\\$survey$dataset2.dta", keep(match master) keepusing(pregnancystatus) nogen

*** Merge select hh variables from HH dataset
merge m:1 householdid using "$filepath\\$survey$dataset3.dta", keep(match master) keepusing(householdheadgender) nogen

*************************************************************************
* 3. Labeling values and variables and creating recodes
*************************************************************************

// Run the "INSIDA 2021 STATA Formats.do" file for Stata formats

recode gender 1=1 2=0 //Recode values

recode pregnancystatus 1=1 2=0 

recode hivstatusfinal 1=1 2=0

recode vls 1=1 2=0 

recode tri90 1=1 2=0

recode tri90aware 1=1 2=0

recode tri90art 1=1 2=0 

recode tri90vls 1=1 2=0


*************************************************************************
* 4. Specify weights													
*************************************************************************

*** Declare survey design, JK2
* Note jkrweight option specifies 175 JK weights;
* Check that no. JK weights matches country specifications;
svyset [pw=btwt0], jkrweight(btwt001-btwt$weights, multiplier(1)) vce(jackknife) dof(25)

*** Declare survey design, Taylor series linearization
//Uncomment the following line for Taylor Series
//svyset varunit [pw=btwt0], strata(varstrat) vce(linearized) singleunit(scaled)

*************************************************************************
* 5. Tabulating unweighted counts and weighted percentages													
*************************************************************************

***Unweighted estimate  of HIV prevalence
tab hivstatusfinal if hivstatusfinal!=99

***Unweighted estimate of HIV prevalence, by gender
tab gender hivstatusfinal if hivstatusfinal !=99 //Frequency
proportion hivstatusfinal if hivstatusfinal !=99, over(gender) //Proportion

** Weighted estimate of HIV prevalence 
svy: tab hivstatusfinal if hivstatusfinal!=99, se ci col obs format(%8.3g)

*************************************************************************
* 6. Analyzing subpopulations												
*************************************************************************

***To analyze a subpopulation, one option is to specify over(subpopulation)
***This can be done for an unweighted or weighted estimate
***This example is a weighted estimate
svy: proportion hivstatusfinal if hivstatusfinal !=99, over(gender)

**In a weighted survey estimate, can also specify subpop(subpopulation)
**HIV prevalence for age 15-24 by gender 
svy, subpop(if age >= 15 & age <= 24 ): proportion hivstatusfinal, over(gender ) 


*************************************************************************
* 7. Estimating prevalence												
*************************************************************************

*** Conduct analyses using survey weights
*     Note for bivariate analyses, outcome is specified first
*     "col" option obtains column proportions

* HIV prevalence 
svy: tab hivstatusfinal if hivstatusfinal!=99, se ci col obs format(%8.3g)

* HIV prevalence by gender
svy: tab hivstatusfinal gender if hivstatusfinal!=99, se ci col obs format(%8.3g)


*************************************************************************
* 8. Estimating vls, overall and pregnancy											
*************************************************************************

* VLS, overall 
svy: tab vls if hivstatusfinal == 1 & vls != 99, se ci col obs format(%8.3g)

* VLS, by pregnancy status
svy: tab vls pregnancystatus if hivstatusfinal== 1 & vls != 99 & pregnancystatus != 99, se ci col obs format(%8.3g)


*************************************************************************
* 9. Estimate 95-95-95 indicators among adults 
*************************************************************************

*** Conduct analyses using survey weights, JK2

* HIV awareness, conditional on HIV positive status
svy: tab tri90aware if tri90==1 & hivstatusfinal==1 & tri90aware!=99, se ci obs format(%8.3g)

* ARV use, conditional on awareness
svy: tab tri90art if tri90==1 & tri90aware==1 & tri90art!=99, se ci obs format(%8.3g)

* Viral suppression, conditional on ARV use
svy: tab tri90vls if tri90==1 & tri90aware==1 & tri90art==1 & vls!=99, se ci obs format(%8.3g)


