/****************************************************************************************************
Getting Started with PHIA Data: SAS Intro Code
Version 1.0

Purpose: The Intro Code included in this program provides SAS code examples to do the following: 

Section 1. Preparing the data for analysis: 

  1.  Set up program environment
  2.  Read PHIA datasets
  3   Recode, label, and format variables (note about perm library)

Section 2. Example analyses: 

  4.  Estimate HIV prevalence overall and by gender using Jackknife variance estimation
  5.  Estimate HIV prevalence for subpopulations using Taylor Series variance estimation
  6.  Estimate the UNAIDS 90-90-90 / 95-95-95 cascade (ARV-adjusted)
  7.  Estimate annual incidence

Section 3. Other data tips: 

  8.  Merge datasets and using the survey status indicator flags (hhstatus, indstatus, bt_status)

******************************************************************************************************/

/*******************************************************************************************************
 *******************************************************************************************************
 Section 1. Preparing the data for analysis: 
	  --- Set up program environment
	  --- Read PHIA datasets
	  --- Recode, label, and format variables (note about perm library)
 *******************************************************************************************************
*******************************************************************************************************/

/******************************************************************************** 
 1. Set up program environment
     --- Define global macro variables for standard country-specific elements and data location
********************************************************************************/

%let country  = Uganda;    * country name;

%let survey   = uphia2020; * survey prefix;

%let numreps  = 159;        * the number of Jackknife replicate weights for the survey;
				             * the number of Jackknife replicate weights are survey-specific and 
				                the country-specific supplement and/or codebook must be consulted 
				                to determine this number; 

%let filepath  = INSERT USER-SPECIFIC LOCATION; * location of datasets to be analyzed;

*	Establish libname used to read datasets;
libname phiadata "&filepath." access=readonly;

/******************************************************************************** 
  2. Read-in data
     ---Read-in PHIA main datasets and create temporary  datasets in the work library
********************************************************************************/

*Household; 
data hh; 
    set phiadata.&survey.hh; * &survey resolves into survey name set in macro 
	                           variable above, i.e. %let survey = ; 
run;

*Roster; 
data roster; 
    set phiadata.&survey.roster; * &survey resolves into survey name set in macro 
                                   variable above, i.e. %let survey = ; 
run;

*Adult interview; 
data adultind; 
    set phiadata.&survey.adultind; * &survey resolves into survey name set in macro 
                                     variable above, i.e. %let survey = ; 
run;

*Adult biomarker; 
data adultbio; 
    set phiadata.&survey.adultbio; * &survey resolves into survey name set in macro 
                                     variable above, i.e. %let survey = ; 
run;

/*******************************************************************************
  3. Formating variables
     ---Approach 1. Creating a temporary format
		This approach may be used if a new analysis variable is created. 
     ---Approach 2. Using the PHIA permanent format library
		 This example assumes that the SAS program "UPHIA 2020-2021 SAS Formats.sas" has been run. 
		   This is the SAS program that creates the permanant format library file and must be ran by 
            the user
********************************************************************************/

***Approach 1. Creating a temporary format;
proc format;
	value genderf
		1 = "(1) Male"
		2 = "(2) Female";

	value pregnancystatusf
		1 = "(1) Currently pregnant"
		2 = "(2) Not currently pregnant"
		99 = "(99) Missing";

	value hivstatusfinalf
		1 = "(1) HIV Positive"
		2 = "(2) HIV Negative"
		99 = "(99) Missing";

	value vlsf
		1 = "(1) Viral load suppressed (<1000 copies / mL)"
		2 = "(2) Not viral load suppressed"
		99 = "(99) Missing";

	value tri90awaref
		1 = "(1) Aware or considered aware because ARVs detectable"
		2 = "(2) Unaware and ARVs not detectable or unaware and ARVs missing"
		99 = "(99) Incomplete tri90 information"; 

	value tri90artf
		1 = "(1) ARVs detectable, self-reported on ART, or both ARVs detectable and self-reported on ART"
		2 = "(2) ARVs not detectable and self-reported not on ART or missing ARV data and self-reported not on ART"
		3 = "(3) Recoded as not on ART (unaware and ARVs not detectable or unaware and ARVs missing)"
		99 = "(99) Incomplete Tri90 information"; 

	value tri90vlsf
		1 = "(1) VLS"
		2 = "(2) Not VLS"
		3 = "(3) Recoded as not VLS"
		99 = "(99) Incomplete Tri90 information";

;
run;

***Approach 2. Using the PHIA permanent format library; 
options fmtsearch=(phiadata.&survey.formats)
             nofmterr pageno=1  mprint mlogic spool; 
run;

*Apply the format to the variable of interest; 
proc freq data = adultbio;
   format  hivstatusfinal hivstatusfinalf.; *Apply one of the formats;
   tables  hivstatusfinal;
run;


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
      ---Proc surveymeans or proc surveyfreq can be used to calculate various PHIA results. 
          Example for both procedures are included.
********************************************************************************/

***proc surveymeans examples; 
title "HIV Prevalence Overall - &country. - &survey.";
proc surveymeans data = adultbio varmethod = jackknife df mean clm nobs; 
  format	hivstatusfinal hivstatusfinalf.;
  where	bt_status=1 and hivstatusfinal ne 99;
  weight  	btwt0;
  repweight btwt001-btwt&numreps / jkcoef = 1 DF = 25; *PHIA standardly applies jkcoef = 1 and df = 25;
                                                       *&numreps resolves into the maximum number 
                                                        of replicate weights, %let numreps = ; 
  class 	hivstatusfinal;
  var 	hivstatusfinal;
run;

title "HIV Prevalence by Gender - &country. - &survey.";
proc surveymeans data = adultbio varmethod = jackknife df mean clm nobs; 
  format	hivstatusfinal hivstatusfinalf.
				gender genderf.;
  domain gender;
  where	bt_status=1 and hivstatusfinal ne 99 and gender ne 99; 
  weight  	btwt0;
  repweight btwt001-btwt&numreps / jkcoef = 1 DF = 25; *PHIA standardly applies jkcoef = 1 and df = 25;
                                                       *&numreps resolves into the maximum number of replicate weights, %let numreps = ; 
  class 	hivstatusfinal;
  var 	hivstatusfinal;
run;

***proc surveyfreq examples; 
title "HIV Prevalence Overall - &country. - &survey.";
proc surveyfreq data=adultbio varmethod=jackknife nosummary;
  format     hivstatusfinal hivstatusfinalf.;
  where	     bt_status = 1 and hivstatusfinal ne 99;
  table      hivstatusfinal/ cl;
  weight     btwt0;
  repweights btwt001-btwt&numreps / jkcoefs=1 df=25; *PHIA standardly applies jkcoef = 1 and df = 25;
                                                     *&numreps resolves into the maximum number of replicate weights, %let numreps = ; 
run; 

title      "HIV Prevalence by Gender - &country. - &survey.";
proc surveyfreq data=adultbio varmethod=jackknife nosummary;
  format	hivstatusfinal hivstatusfinalf.
             	gender genderf.;
  where	bt_status = 1 and hivstatusfinal ne 99 and gender ne 99;
  table		gender * hivstatusfinal / cl row;
  weight  	btwt0;
  repweights btwt001-btwt&numreps / jkcoefs=1 df=25;*PHIA standardly applies jkcoef = 1 and df = 25; 
                                                                                          *&numreps resolves into the maximum number of replicate weights, %let numreps = ; 
run; 

/******************************************************************************
5. Estimate HIV Prevalence by subpopulations using Taylor Series estimation
   ---To analyze subpopulations with SAS, we use the Domain statement. 
   ---The where statement is typically not used in order to include all data in the analysis
   ---The following example is to estimate the HIV prevalence of women age 15+ and uses 
       Taylor Series for variance estimation
******************************************************************************/

title      "HIV Prevalence - subpopulation - &country. - &survey.";
proc surveymeans data = adultbio mean clm nobs;
  format	hivstatusfinal hivstatusfinalf.
   			  	gender genderf.;
  domain	gender;
  weight  	btwt0;
  strata     varstrat;
  cluster   varunit;
  class      hivstatusfinal; *Use the class statement with the var statement when estimating proportiosn for categorical variables;
  var      	hivstatusfinal;
  ods output domain = domain_gender; *outputs the results into a temporary dataset for additional manipulation;
run;

data hiv_prev_women; *Creates a temporary dataset with only the women's HIV prevalence weighted %; 
set domain_gender; 
if gender = 2 and VarLevel = "(1) HIV Positive"; 
run; 

/******************************************************************************
* 6. Estimate the ARV-adjusted conditional UNAIDS 90-90-90 / 95-95-95 cascade
       ---Note: tri90 variable is a flag indicating records are to be included in the
                    ARV adjusted cascade. Flow diagrams in the country-specific supplement 
                    are available for these analysis variables. 
******************************************************************************/

*Estimating the ARV-adjusted 1st 90: Awareness; 
 title "ARV-Adjusted 90-90-90 - &country. - &survey. - Awareness";
proc surveymeans data = adultbio varmethod = jackknife df mean clm nobs;
  where	hivstatusfinal=1 and tri90=1 and tri90aware ne 99;
  format 	hivstatusfinal hivstatusfinalf.
  				tri90aware tri90awaref.; 
  weight   btwt0;
  repweight btwt001-btwt&numreps / jkcoefs=1 df=25;
  class 		tri90aware;
  var    		tri90aware;
run;

*Estimating the ARV-adjusted 2nd 90: ARV use, conditional on awareness;
title "ARV-Adjusted 90-90-90 - &country. - &survey. - ARV Use";
proc surveymeans data = adultbio varmethod = jackknife df mean clm nobs;
  where     hivstatusfinal=1 and tri90=1 and tri90aware=1 and tri90art ne 99;
  format 	hivstatusfinal hivstatusfinalf.
   				tri90art tri90artf.; 
  weight    btwt0;
  repweight btwt001-btwt&numreps / jkcoefs=1 df=25;
  class     	tri90art;
  var       	tri90art;
run;

*Estimating the ARV-adjusted 3rd 90: Viral suppression, conditional on awareness and ART use;
title "ARV-Adjusted 90-90-90 - &country. - &survey. - Viral suppression";
proc surveymeans data = adultbio varmethod = jackknife df mean clm nobs;
  where	hivstatusfinal=1 and tri90=1 and tri90aware=1 and tri90art=1 and tri90vls ne 99;
  format 	hivstatusfinal hivstatusfinalf.
				tri90vls tri90vlsf.; 
  weight   btwt0;
  repweight btwt001-btwt&numreps / jkcoefs=1 df=25;
  class    	tri90vls;
  var       	tri90vls;
run;

/*******************************************************************************
7. Estimate annual incidence
   ---Annual incidence is calculated using a SAS macro. The macro is included just 
	   below this comment. Dataset preparation and calls that use the macro are further down just after 
	   the end of the macro. The macro includes comments that explain its use;
********************************************************************************/

/**********************  Macro starts here  ********************************/

/* This macro calculates annual incidence, PHLIV, the estimated number of new infections in the
    previous year along with thier confidence intervals.

    The macro expects a dataset named all_biomarker;

	The required input dataset variables are:
		hivstatusfinal - hiv status (positive or negative) from blood testing
		recentLAGVLarv - Recent infection indicator derived from LAg Avidity testing and our recent infection algorithm	
		btwt0, btwt001-btwtNNN - blood test weights and replicate weights		
		gender and age variables for table breakdowns as needed.

	Input Parameters:
        diffvar    - variable for which differentials will be calculated separately (i.e., gender = male, female) 
        filter_var - variable preset to 1 for observations to be included in calculation (i.e., use age15_49 to select all ages 15-49)
        nrep       - Number of replicates to be used in proc surveyfreq with varmethod=jackknife to get the design effec
        omega      - the MDRI (Mean Duration of Recent Infection)
        sig_omega2 - the standard deviation (sigma**2) of omega, derived as =(12/(NORMSINV(0.975)))**2 using CDC figures   */

*The SAS Intro Code is written to support analyses across all PHIA2 countries. Uganda has unique parameters for the incidence macro. 
If this macro is being used to generate incidence in Uganda, please uncomment this line of code. And then, comment out the line of code that follows "All Other Sites" (below). 

* PHIA2 Uganda (UPHIA 2020-2021) parameters;
%macro incidence_diff(diffvar, filter_var, nrep, incidence_var=recentLAGVLarv, omega=153, sig_omega2=162.6926,    pfr=0, sig_pfr2=0);

* All other sites;
%*macro incidence_diff(diffvar, filter_var, nrep, incidence_var=recentLAGVLarv, omega=130, sig_omega2=37.48575911, pfr=0, sig_pfr2=0);

data temp;
	set all_biomarker;
	where &filter_var. = 1;
run;

Proc sort data=temp; by &diffvar.;
run;

proc summary data = temp;
	by &diffvar.;
	var btwt0;
	output out = totals sum = sumbtwt0;
run;

Proc sort data=totals; 
	by &diffvar.;
run;

** Data step creates the normalized weights for observations and the variables for getting aggregate counts ***;
data temp2; 
	merge temp totals; 
	by &diffvar.;
  	norm_btwt = btwt0*(_freq_ / sumbtwt0); **normalized weight such that sum of the weights = number of observation;
  	if hivstatusfinal = 1 then do;
		if &incidence_var. = 1 then when_infected = 1;
		else if &incidence_var. = 2 then when_infected = 2;
		else when_infected = 3; ** Positive but not classified by Lag test;
  	end; 
  	else when_infected = 4; ** HIV negative;

  	PplusN = 1;
	n = (when_infected = 4);
	p = (when_infected in (1,2,3));
  	q = (when_infected in (1,2));
  	r = (when_infected = 1);

  	PplusN_wtd = PplusN * norm_btwt;
	n_wtd = n * norm_btwt;
	p_wtd = p * norm_btwt;
  	q_wtd = q * norm_btwt;
  	r_wtd = r * norm_btwt;

	PplusN_pop = PplusN * btwt0;
  	p_pop = p * btwt0;
  	q_pop = q * btwt0;
  	r_pop = r * btwt0;

  	Recent_over_all = 100 * (&incidence_var. = 1);
run;

* Counts for table 2.1.X;
proc summary data=temp2;	
	by &diffvar.;
	var PplusN n_wtd p_wtd q_wtd r_wtd;
	output out=counts_aux sum=;
run;

data counts_aux;
	set counts_aux;
	rename n_wtd = n
	       p_wtd = p
		   q_wtd = q
		   r_wtd = r;
run;

*** Summary gets aggregate weighted and unweighted counts ***;
proc summary data=temp2;
	by &diffvar.;
	var PplusN p q r PplusN_wtd p_wtd q_wtd r_wtd PplusN_pop p_pop q_pop r_pop;
	output out=counts sum=;
run;

data calc_incidence; 
	set counts; 
	neg_wtd = (PplusN_wtd - p_wtd) * (q_wtd / p_wtd);	
	incid_instant = (r_wtd - &pfr. * q_wtd) / ((1 - &pfr. / &omega.) * (&omega. / 365) * neg_wtd); ** reduces to (r_wtd/neg_wtd)*(365/130) if false recent rate = 0;
	incid_annual = 100 *( 1 - exp(-incid_instant)); ** expressed as annual percent;	

	* Estimate number of new cases based on incidence and population at risk;
	neg_pop = PplusN_pop - p_pop;	
	NewCases = neg_pop * incid_annual / 100;
run;

* Compute design effect for recent infection using blood test weights;
* Note: the &nrep parameter gives the number of replicate weights in the biomarker dataset;
proc surveyfreq data=temp2 VARMETHOD=JACKKNIFE nosummary;
	by &diffvar.;
	ods output oneway=sfreq_results; ** OneWay is a table produced by Surveyfreq with some results in a one way table;
	weight BTWT0;
	repweights BTWT001-BTWT&nrep.; **Note: defaults used for df and jkcoefs parameters; 
	table Recent_over_all / DEFF;
run;

proc sort data=sfreq_results; 
	by &diffvar.; 
run;

data sfreq_results2; 
	set sfreq_results; 
	by &diffvar.;
	if first.&diffvar.; *select first line of results for each subpopulation;
run;

*** add the design effect for the proportion recent/all to the counts needed for Incidence Calculator ***;
data combine; 
	merge calc_incidence sfreq_results2; 
	by &diffvar.;	
run;

* This formula comes from Kassanjee et al, Epidemiology, Vol 23, No 5, September 2012;
* A, B, and C are the 3 main terms in equation (e7) in the online appendix;
data variance;
	set combine;
	A = (1/q_wtd)*( (1/neg_wtd) + (r_wtd * ( p_wtd - r_wtd)) / (r_wtd - &pfr. * p_wtd * (&omega. - &pfr. * 365))**2);
	B = &sig_omega2. * 1 / (&omega. - &pfr. * 365 )**2;
	C = &sig_pfr2. * (
		( (p_wtd - r_wtd) * &omega. - r_wtd * (365 - &omega.) ) /
		( (r_wtd - &pfr. * p_wtd) * (&omega. - &pfr. * 365) )
		)**2;

	* Confidence interval not including the design effect;
	* Note this formula is for instantaneous incidence;
	c_sq = (A + B + C);
	UCL_i = incid_instant * (1 + sqrt(c_sq) * probit(0.975));
	LCL_i = incid_instant * (1 - sqrt(c_sq) * probit(0.975));

	* Clopper-Pearson CI for cases where R = 0;
	if r_wtd = 0 then do;
		R_CPUCL = neg_wtd * (1 - (0.05/2)**(1/neg_wtd));
		UCL_i = (r_CPUCL - &pfr. * q_wtd) / ((1 - &pfr. / &omega.) * (&omega. / 365) * neg_wtd);
		LCL_i = 0.0;
	end;
	**;

	* Convert upper and lower limits of the interval into annual incidence limits;
	UCL_a = 100 *( 1 - exp(-UCL_i));
	LCL_a = 100 *( 1 - exp(-LCL_i));
	
	* Confidence interval adjusting for the design effect;	
	* Design effect < 1 is treated as equal to 1;
	if (DesignEffect > 1) then
		adj_c_sq = DesignEffect * (A + B + C);
	else if (DesignEffect <= 1) then
		adj_c_sq = 1.0 * (A + B + C);
	
	adj_UCL_i = incid_instant * (1 + sqrt(adj_c_sq) * probit(0.975));
	adj_LCL_i = incid_instant * (1 - sqrt(adj_c_sq) * probit(0.975));

	* Use Clopper-Pearson CI for cases where R = 0;
	if r_wtd = 0 then do;
		R_CPUCL_adj = neg_wtd * (1 - (0.05/2)**( max(1.0, DesignEffect) / neg_wtd));
		adj_UCL_i = (r_CPUCL_adj - &pfr. * q_wtd) / ((1 - &pfr. / &omega.) * (&omega. / 365) * neg_wtd); 
					*(R_CPUCL_adj / neg_wtd) * (365 / &omega.);
		adj_LCL_i = 0.0;
	end;

	* Convert upper and lower limits of the interval into annual incidence;
	adj_UCL_a = 100 *( 1 - exp(-adj_UCL_i));
	adj_LCL_a = 100 *( 1 - exp(-adj_LCL_i));	
run;

* Create tables in appropriate format with the desired output variables;
data tab_output_incidence;
	length Row $ 8 gend $ 8;
	set variance;
	Row = translate( substr("&filter_var.", index("&filter_var.","e") + 1), '-', '_');
	
	if gender = 1 then gend = 'Male';
	else if gender = 2 then gend = 'Female';
	else gend = 'Total';
run;

* Output weighted counts (normalized to the sample size);
data tab_output_x (keep = Row gend n p q r);
	length Row $ 8 gend $ 8;
	set Counts_aux;
	Row = translate( substr("&filter_var.", index("&filter_var.","e") + 1), '-', '_');
	
	if gender = 1 then gend = 'Male';
	else if gender = 2 then gend = 'Female';
	else gend = 'Total';
run;


** Create columns for number of new cases;
proc surveyfreq data = all_biomarker method = jackknife;	
	where &filter_var. = 1 and bt_status = 1;
	weight BTWT0;
	repweights BTWT001-BTWT&nrep. / jkcoefs=1 df = 25;
	tables &diffvar. * hivstatusfinal / row CL CLWT;
    ods output crosstabs = AdultPrev_&filter_var._out;
run;

data AdultPrev_&filter_var.;
	length gend $10;
	set AdultPrev_&filter_var._out;
	where hivstatusfinal = 1;

	if gender = 1 then gend = 'Male';
	else if gender = 2 then gend = 'Female';
	else gend = 'Total';

	if gend ne 'Total' then	do;
		Percent = RowPercent;
		StdErr = RowStdErr;
		LowerCL = RowLowerCL;
		UpperCL = RowUpperCL;
	end;

	drop Table F_: _SkipLine RowPercent RowStdErr RowLowerCL RowUpperCL hivstatusfinal;
	rename wgtfreq = PLHIV
		   lowerclwgtfreq = PLHIVLCL
		   upperclwgtfreq = PLHIVUCL
		   StdDev = PLHIVStdErr
		   Percent = Prevalence
		   LowerCL = PrevalenceLCL
		   UpperCL = PrevalenceUCL
		   StdErr = PrevalenceStdErr;
run;

proc sql;
	create table PLHIV_new as
	select i.*, p.PLHIV, p.PLHIVStdErr, p.PLHIVLCL, p.PLHIVUCL, 
			p.Prevalence, p.PrevalenceStdErr, 
			p.PrevalenceLCL, p.PrevalenceUCL
	from tab_output_incidence i
	left join adultprev_&filter_var. p
	on i.gend = p.gend;
	quit;
run;

data tab_output_newcases;
	set PLHIV_new;
	
	neg_pop = PLHIV*100.0/Prevalence - PLHIV;
	
	if incid_annual = 0 then do;
		NewCasesLCL = 0.0;
		NewCasesUCL = neg_pop * (adj_UCL_a/100) * (1 + (Prevalence - PrevalenceLCL) / Prevalence);

		NewCasesRelErr = .;
	end;
	else do;
		NewCasesRelErr = SQRT( ((Prevalence - PrevalenceLCL) / Prevalence)**2
					       + ((Incid_annual - adj_LCL_a) / Incid_annual)**2
						   );
	
		NewCasesLCL = MAX(0.0, NewCases * (1 - NewCasesRelErr));
		NewCasesUCL = NewCases * (1 + NewCasesRelErr);

		NewCasesStdErr = (NewCases - NewCasesLCL) / 2.0635;
	end;
run;

* Filter and rearrange output variables in final tables;

data tab_output_incidence;
	retain Row gend Designeffect incid_annual LCL_a UCL_a adj_LCL_a adj_UCL_a;
	
	set tab_output_incidence;

	if LCL_a < 0 then LCL_a = 0;
	if adj_LCL_a < 0 then adj_LCL_a = 0;

	keep Row gend Designeffect incid_annual LCL_a UCL_a adj_LCL_a adj_UCL_a;
run;

data tab_output_newcases;
	retain Row gend PLHIV PLHIVStdErr PLHIVLCL PLHIVUCL 
		NewCases NewCasesStdErr NewCasesLCL NewCasesUCL;

	set tab_output_newcases;
	keep Row gend PLHIV PLHIVStdErr PLHIVLCL PLHIVUCL 
		NewCases NewCasesStdErr NewCasesLCL NewCasesUCL;
run;

** End new cases calculation;

** Print results to SAS output;

proc print data = tab_output_incidence;	
	title3 "Incidence (from tab_output_incidence)";
run;

proc print data = tab_output_newcases;
	title3 "PHLIV and New Cases (from tab_output_newcases)";
run;

proc print data = tab_output_x;
	title3 "NPQR (from tab_output_x)";
run;

** End printing results;

%mend incidence_diff;
/********* Macro ends here *********/

***Prepare dataset and set-up macro calls; 
*Create dataset needed by the incidence macro;
proc sort data = adultind; by personid; run; 
proc sort data = adultbio; by personid; run; 

data all_biomarker; 
	merge adultind adultbio; 
	by personid;
	all = 1; 
	if indstatus = 1 and bt_status = 1; *Selecting participants who were interviewed and had a blood test result; 
	format 	gender 				genderf.
			hivstatusfinal 		hivstatusfinalf.
			age15_up			age15_upf.;
run;

*Set-up macro calls to calculate incidence by gender and for total;
%incidence_diff(diffvar = gender, filter_var = age15_up,  nrep = &numreps);
%incidence_diff(diffvar = all,    filter_var = age15_up,  nrep = &numreps);

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

***How to merge datasets; 
*Example 1: Create a merged dataset for those who were interviewed and had a blood test result; 
proc sort data = adultind; by personid; run; 
proc sort data = adultbio; by personid; run; 

data adult_ind_bio; 
merge adultind adultbio; 
by personid; 
if indstatus = 1 and bt_status = 1; *Selecting participants who were interviewed and had a blood test result; 
run; 

*Example 2: Create a merge dataset with all rostered individuals in an eligible responding household; 
proc sort data = hh; by householdid; run; 
proc sort data = roster; by householdid; run; 

data hh_roster; 
merge hh roster; 
by householdid; 
if hhstatus = 1; *Selecting responding eligible households with rostered household members; 
run; 

/**************************************  PROGRAM END ***************************************************/
