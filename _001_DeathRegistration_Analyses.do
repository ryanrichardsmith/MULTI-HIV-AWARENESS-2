/*******************************************************************************
* Replication code -- Analyses
* Gender disparities in death registration during the COVID-19 pandemic in an urban African setting
* Date last revised: 2 June 2025
*******************************************************************************/

* ---------------------------------------------------------------------------- *
* PART 1: Death registration outcomes and descriptives                         *
* ---------------------------------------------------------------------------- *

cd "\DemRes\_Repli\_data"
use "_1X_Death-registration_deaths.dta", clear

* Outcomes
recode register (3=1 "Yes or in progress") (2=0 "Not registered") (98=.) (100=.), ge(outcome_reg)
label var outcome_reg "Death has been registered"

recode register (3=1 "Yes or in progress") (2=0 "No, not registered") (98=3 "DK") (100=.), ge(dkoutcome_reg)
label var dkoutcome_reg "Death has been registered"
ta dkoutcome_reg regi

recode register (1/3=0 "Valid info") (98=1 "DK") (100=1), ge(unknown_reg)
label var unknown_reg "Unknown status"


/* [Uncomment and ensure table1_mc is available if needed.]

// TABLE 1: Characteristics of deaths
************************************

		table1_mc, by(d_sex) ///
		vars( ///
		age_death cat %4.1f \ ///
		educ_death_det cat %4.1f \ ///
		hd12  cat %4.1f \ ///
		hd11  cat %4.1f \ ///
		hd9  cat %4.1f \ ///
		hh_wealth cat %4.1f \ ///
		cat_hh_size  cat %4.1f \ ///
		) ///
		nospace onecol total(after) saving(x2)

		table1_mc if age_death_collapsed > 1, by(d_sex)  ///
		vars( ///
		age_death cat %4.1f \ ///
		educ_death_det cat %4.1f \ ///
		hd12  cat %4.1f \ ///
		hd11  cat %4.1f \ ///
		hd9  cat %4.1f \ ///
		hh_wealth cat %4.1f \ ///
		cat_hh_size  cat %4.1f \ ///
		) ///
		nospace onecol total(after) saving(x)
*/



* ---------------------------------------------------------------------------- */
* PART 2A: Logistic regressions - Imputed
* !NB! Sample includes respondents aged 15+                                                 
* ---------------------------------------------------------------------------- *

preserve 
keep if  age_death_collapsed > 1 //Sample aged 15+

recode educ_death_det (99 = .) (0 = 1 "No education") ///
       (1 = 2 "Primary (≤ 6th grade)") (2 = 3 "Secondary (7-12th grade)") ///
       (3 = 4 "Higher"), gen(mi_educ_death_det)

drop if mi_educ_death_det == 999 //dropping inapplicable


// Set up MI environment
************************************
mi set mlong
mi register imputed mi_educ_death_det age_death_collapsed facility
mi register regular hh_wealth cat_hh_size accidental d_sex


// Perform imputation
************************************
mi impute chained ///
    (mlogit, augment) mi_educ_death_det ///
    (mlogit, augment) age_death_collapsed ///
    (logit, augment) facility = hh_wealth cat_hh_size acc d_sex, ///
    add(20) rseed(12345)



// Define control variables
************************************
global indicontrols   "i.age_death_collapsed i.mi_educ_death_det i.hh_wealth i.cat_hh_size"
global deathscontrols "i.accidental ib1.facility"


// Regression models full sample
mi estimate, post: logit outcome_reg i.d_sex cmc_death $indicontrols $deathscontrols, or cluster(hh_se)
est store m2

// Regression models by gender
mi estimate, post: logit outcome_reg cmc_death $indicontrols $deathscontrols if d_sex == 0, or cluster(hh_se)
est store m3

mi estimate, post: logit outcome_reg cmc_death $indicontrols $deathscontrols if d_sex == 1, or cluster(hh_se)
est store m4

// Table 2_mi
esttab m* using "_Table 2 MI.xls", b(2) eform ci(2) ///
nobase tab collabels("OR/CI") stats(N, fmt(0 2) label(Observations)) label replace
restore
	

* ---------------------------------------------------------------------------- *
* PART 4: Reasons for (non-)registration
* ---------------------------------------------------------------------------- *		  

// Registration 
************************************
prop transfers comply burial justify savings2 to_reg govcount remember other_111 if refused_99!=1 & dk_98!=1		
		
		
// Non-registration 
*************************************
prop nobenefit dkabout cost dkhow notimpo causecovid person noid complex far worry othernoregreason if dknoregreason!=1 & refusenoregreason!=1 & age_death_c>1	



* ---------------------------------------------------------------------------- *
* PART 3A: Decomposition - imputing missing values for education
* ---------------------------------------------------------------------------- *

recode educ_death_det (99 = .) (0 = 1 "No education") ///
       (1 = 2 "Primary (≤ 6th grade)") (2 = 3 "Secondary (7-12th grade)") ///
       (3 = 4 "Higher"), gen(mi_educ_death_det)

drop if mi_educ_death_det == 999 //dropping inapplicable

// Set up MI environment
************************************

mi set mlong
mi register imputed mi_educ_death_det age_death_collapsed facility
mi register regular hh_wealth cat_hh_size accidental 


// Perform imputation
************************************

mi impute chained (mlogit, augment) mi_educ_death_det /// 
                   (mlogit, augment) age_death_collapsed /// 
                   (logit, augment) facility = hh_wealth cat_hh_size acc d_sex, ///
    add(20) rseed(12345)


// Generate passive indicators
************************************

mi passive: gen mi_D_edu1 = (mi_educ_death_det == 1)
mi passive: gen mi_D_edu2 = (mi_educ_death_det == 2)
mi passive: gen mi_D_edu3 = (mi_educ_death_det == 3)
mi passive: gen mi_D_edu4 = (mi_educ_death_det == 4)

mi passive: gen mi_D_facility1 = (facility == 0)
mi passive: gen mi_D_facility2 = (facility == 1)

mi passive: gen mi_D_age_death_1 = (age_death_collapsed == 1)
mi passive: gen mi_D_age_death_2 = (age_death_collapsed == 2)
mi passive: gen mi_D_age_death_3 = (age_death_collapsed == 3)
mi passive: gen mi_D_age_death_4 = (age_death_collapsed == 4)



// Define bootstrapping program
************************************

capture program drop fairlie_boot_all
program define fairlie_boot_all, rclass
    fairlie outcome_reg ///
        (age: mi_D_age_death_3-mi_D_age_death_4) mi_D_facility2 D_acc2 ///
        (educ: mi_D_edu2-mi_D_edu4) ///
        (wealth: D_we2-D_we5) ///
        (hh_size: D_hhs2-D_hhs3) ///
        if ageatd > 14, pooled(D_cmc2-D_cmc41) ///
        by(d_sex) cluster(hh_se)

    matrix b = e(b)
    return scalar age = b[1,1]
    return scalar mi_D_facility2 = b[1,2]
    return scalar D_acc2 = b[1,3]
    return scalar educ = b[1,4]
    return scalar wealth = b[1,5]
    return scalar hh_size = b[1,6]

    return scalar total_diff = e(diff)
    return scalar explained = e(expl)
    return scalar unexplained = e(diff) - e(expl)
end


// Loop over imputations, bootstrap each
************************************

tempfile boot_results_file
tempname boot_results_handle

postfile `boot_results_handle' impnum ///
    age var_age mi_D_facility2 var_mi_D_facility2 D_acc2 var_D_acc2 ///
    educ var_educ wealth var_wealth hh_size var_hh_size ///
    total_diff var_total_diff explained var_explained unexplained var_unexplained ///
    using `boot_results_file', replace

forvalues i = 1/20 {
    preserve
    mi extract `i', clear
    di "Bootstrapping imputation `i'..."

    tempfile bsfile
    bootstrap r(age) r(mi_D_facility2) r(D_acc2) r(educ) r(wealth) r(hh_size) ///
              r(total_diff) r(explained) r(unexplained), ///
        reps(100) cluster(hh_se) seed(2025) saving(`bsfile', replace): fairlie_boot_all

    use `bsfile', clear

    foreach j in 1 2 3 4 5 6 7 8 9 {
        summarize _bs_`j', detail
        scalar m`j' = r(mean)
        scalar v`j' = r(Var)
    }

    post `boot_results_handle' (`i') ///
        (m1) (v1) ///
        (m2) (v2) ///
        (m3) (v3) ///
        (m4) (v4) ///
        (m5) (v5) ///
        (m6) (v6) ///
        (m7) (v7) ///
        (m8) (v8) ///
        (m9) (v9)

    restore
}
postclose `boot_results_handle'


// Rubin's Rules with 95% Confidence Intervals
***********************************************

// Rubin's Rules with 95% Confidence Intervals

use `boot_results_file', clear

capture program drop RUB
program define RUB, rclass
    syntax varlist(min=2 max=2)
    tempvar diff U

    gen double `diff' = `1'
    gen double `U' = `2'

    quietly summarize `diff'
    scalar Q_bar = r(mean)

    quietly summarize `U'
    scalar U_bar = r(mean)

    quietly summarize `diff', detail
    scalar B = r(Var)

    scalar M = 20
    scalar T = U_bar + (1 + 1/M)*B
    scalar SE = sqrt(T)
    scalar lambda = (1 + 1/M) * B / T
    scalar nu = (M - 1) * (1/lambda)^2
    scalar t_crit = invttail(nu, 0.025)
    scalar ci_lower = Q_bar - t_crit * SE
    scalar ci_upper = Q_bar + t_crit * SE
    scalar z = abs(Q_bar / SE)
    scalar p = 2 * (1 - normal(z))

    return scalar Q_bar = Q_bar
    return scalar SE = SE
    return scalar p = p
    return scalar ci_lower = ci_lower
    return scalar ci_upper = ci_upper
end

local vars total_diff explained unexplained age mi_D_facility2 D_acc2 educ wealth hh_size

matrix results = J(9, 5, .)

local row = 1
foreach v in `vars' {
    RUB `v' var_`v'
    matrix results[`row',1] = r(Q_bar)
    matrix results[`row',2] = r(SE)
    matrix results[`row',3] = r(p)
    matrix results[`row',4] = r(ci_lower)
    matrix results[`row',5] = r(ci_upper)
    local ++row
}

matrix colnames results = Estimate SE p_value CI_lower CI_upper
matrix rownames results = total_diff explained unexplained age mi_D_facility2 D_acc2 educ wealth hh_size

matlist results, format(%9.4f)



		
/* ---------------------------------------------------------------------------- *
* APPENDIX 1: Household-level sample & descriptives                            *
* ---------------------------------------------------------------------------- *

use "_2X_Death-registration_HH.dta", clear

/* [Uncomment and ensure table1_mc is available if needed.]

*  TABLE C1: Characteristics of household respondents

 		table1_mc,  ///
		vars( ///
		age cat %4.1f \ ///
		resp_d_sex cat %4.1f \ ///
		educ cat %4.1f \ ///
		marstat  cat %4.1f \ ///
		hh_wealth  cat %4.1f \ ///
		cat_hh_size  cat %4.1f \ ////
		) ///
		nospace onecol total(after) missing 
*/		


use "_1X_Death-registration_deaths.dta", clear

* Outcomes
recode register (3=1 "Yes or in progress") (2=0 "Not registered") (98=.) (100=.), ge(outcome_reg)
label var outcome_reg "Death has been registered"

recode register (3=1 "Yes or in progress") (2=0 "No, not registered") (98=3 "DK") (100=.), ge(dkoutcome_reg)
label var dkoutcome_reg "Death has been registered"
ta dkoutcome_reg regi

recode register (1/3=0 "Valid info") (98=1 "DK") (100=1), ge(unknown_reg)
label var unknown_reg "Unknown status"

/*
*  TABLE C2: Deaths with/without valid information on registration status 

		table1_mc if sample==1, by(unknown_reg) ///
		vars( ///
		age_death cat %4.1f \ ///
		d_sex cat %4.1f \ ///
		educ_death_de cat %4.1f \ ///
		hd12  cat %4.1f \ ///
		hd11  cat %4.1f \ ///
		hd9  cat %4.1f \ ///
		hh_wealth cat %4.1f \ ///
		cat_hh_size  cat %4.1f \ ///
		) ///
		nospace onecol total(after) 
 
*/



* ---------------------------------------------------------------------------- *
* PART 2A: Logistic regressions - not imputed
* !NB! Sample includes respondents aged 15+ and with valid dates of death                                                
* ---------------------------------------------------------------------------- *


// Define sample and control variables
global sample if age_death_collapsed > 1
global indicontrols   "i.age_death_collapsed i.educ_death_det i.hh_wealth i.cat_hh_size"
global deathscontrols "i.accidental ib2.facility"

// Regression models full sample
logit outcome_reg i.d_sex cmc_death $indicontrols $deathscontrols $sample, cluster(hh_se) or
est store m2

// Regression models by gender
logit outcome_reg cmc_death $indicontrols $deathscontrols $sample & d_sex == 0, cluster(hh_se)
est store m3

logit outcome_reg cmc_death $indicontrols $deathscontrols $sample & d_sex == 1, cluster(hh_se)
est store m4

// Table 2
esttab m* using "_Table 2.xls",  b(2) eform ci(2) ///
nobase tab collabels("Beta/SE") stats(N, fmt(0 2) label(Observations)) label bra replace
est clear	


* ---------------------------------------------------------------------------- *
* PART 3B: Decomposition - not imputed (including) missing values for education
* ---------------------------------------------------------------------------- *

preserve
drop if hd_y>2023 | hd_m>12 // Exclude inapplicable

fairlie outcome_reg  ///
		  (age: D_eta3-D_eta4) D_facility2 D_acc2 (educ: D_edu2-D_edu4) (wealth: D_we2-D_we5) (hh_size: D_hhs2-D_hhs3) ///
		  if ageatd>14, pooled(D_cmc2-D_cmc41)  by(d_sex) cluster(hh_se) ro reps(1000)
		  
restore
		  
preserve
drop if hd_y>2023 | hd_m>12 // Exclude inapplicable

fairlie outcome_reg  ///
		  (age: D_eta3-D_eta4) D_facility2 D_acc2 (educ: D_edu2-D_edu3) (wealth: D_we2-D_we5) (hh_size: D_hhs2-D_hhs3) ///
		  if ageatd>14, pooled(D_cmc2-D_cmc41)  by(d_sex) cluster(hh_se) ro reps(1000) nolegend
		  
restore
