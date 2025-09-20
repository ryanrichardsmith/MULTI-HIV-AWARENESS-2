
/* --------------------------------------------------------------------------------  */
/* To run this as a standalone program, uncomment the line below and then fill       */
/* in the full directory path where you want the formats to be stored on your PC.    */
/* --------------------------------------------------------------------------------  */
/* %let phia2fmtloc =  C:\Temp;                                                                                              */
 %let phia2fmtloc =  G:\Shared drives\DMA\PHIA\Public Release\Output - Packages\Tanzania2\THIS 2022-2023 Format Libraries;  
 libname phia2f "&phia2fmtloc.";

proc format library=phia2f.this2022formats;

value addishivf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adherent95pf
1 = "(1) Missed 0 or 1 days"
2 = "(2) Missed 2 or more days"
99 = "(99) Missing or out of range"
;
value adhivprev_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_w_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivschmtgf
1 = "(1) 1-4 Times"
2 = "(2) 5-9 Times"
3 = "(3) 10 Or More Times"
4 = "(4) Did Not Attend School In The Past 12 Months"
0 = "(0) None"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adtpsxf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value age15_24f
1 = "(1) Age 15-24"
2 = "(2) Not age 15-24"
;
value age15_49f
1 = "(1) Age 15-49"
2 = "(2) Not age 15-49"
;
value age15_upf
1 = "(1) Age 15+"
2 = "(2) Not age 15+"
;
value age50_upf
1 = "(1) Age 50+"
2 = "(2) Not age 50+"
;
value agegroupf
1 = "(1) 0-4 years"
2 = "(2) 5-9 years"
3 = "(3) 10-14 years"
4 = "(4) 15-19 years"
5 = "(5) 20-24 years"
6 = "(6) 25-29 years"
7 = "(7) 30-34 years"
8 = "(8) 35-39 years"
9 = "(9) 40-44 years"
10 = "(10) 45-49 years"
11 = "(11) 50-54 years"
12 = "(12) 55-59 years"
13 = "(13) 60-64 years"
14 = "(14) 65+"
;
value agegroup10altf
1 = "(1) 0-14 years"
2 = "(2) 15-24 years"
3 = "(3) 25-34 years"
4 = "(4) 35-44 years"
5 = "(5) 45-54 years"
6 = "(6) 55-64 years"
7 = "(7) 65+ years"
;
value agegroup5populationf
1 = "(1) 0-4 years"
2 = "(2) 5-9 years"
3 = "(3) 10-14 years"
4 = "(4) 15-19 years"
5 = "(5) 20-24 years"
6 = "(6) 25-29 years"
7 = "(7) 30-34 years"
8 = "(8) 35-39 years"
9 = "(9) 40-44 years"
10 = "(10) 45-49 years"
11 = "(11) 50-54 years"
12 = "(12) 55-59 years"
13 = "(13) 60-64 years"
14 = "(14) 65-69 years"
15 = "(15) 70-74 years"
16 = "(16) 75-79 years"
17 = "(17) 80 + years"
;
value agegroupfirstsexaltf
1 = "(1) 0-14"
2 = "(2) 15-19"
3 = "(3) 20-24"
4 = "(4) 25+"
99 = "(99) Missing"
;
value agegroupmonthslastchildf
1 = "(1) 0-1 months"
2 = "(2) 2-3 months"
3 = "(3) 4-5 months"
4 = "(4) 6-8 months"
5 = "(5) 9-11 months"
6 = "(6) 12-17 months"
7 = "(7) 18-23 months"
8 = "(8) 24 + months"
99 = "(99) Missing"
;
value agemarf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alc12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alc30days_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcfivemore_tzf
1 = "(1) Less Than Monthly"
2 = "(2) Monthly"
3 = "(3) Weekly"
4 = "(4) Daily Or Almost Daily"
0 = "(0) Never"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcfreqf
1 = "(1) Monthly Or Less"
2 = "(2) 2-4 Times A Month"
3 = "(3) 2-3 Times A Week"
4 = "(4) 4 Or More Times A Week"
0 = "(0) Never"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcloc_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value alcnumdayf
1 = "(1) 3 Or 4"
2 = "(2) 5 Or 6"
3 = "(3) 7 To 9"
4 = "(4) 10 Or More"
0 = "(0) 1 Or 2"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value allpartspouselivein12mof
1 = "(1) All partners in the past 12 months were a spouse or live-in partner"
2 = "(2) At least one partner in the past 12 months was a non-marital non-cohabitating partner"
99 = "(99) Missing"
;
value anclastchildf
1 = "(1) Received antenatal care during last pregnancy"
2 = "(2) Did not receive antenatal care during last pregnancy"
3 = "(3) Mother, missing data on antenatal care during last pregnancy"
99 = "(99) Missing (non-mother)"
;
value anxiety_tzf
1 = "(1) Not At All"
2 = "(2) 1-7 Days"
3 = "(3) 8-11 Days"
4 = "(4) 12-14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value artf
1 = "(1) ARVs detectable, self-reported on ART, or both ARVs detectable and self-reported on ART"
2 = "(2) Unaware or aware, ARVs not detectable and self-reported not on ART, or aware, missing ARV testing data and self-reported not on ART"
99 = "(99) Missing"
;
value artinitiated12monthsf
1 = "(1) Initiated ART in the past 12 months"
2 = "(2) Initiated ART more than 12 months ago"
99 = "(99) Missing"
;
value artselfreportedf
1 = "(1) On ART"
2 = "(2) Not on ART"
99 = "(99) Missing"
;
value arvamtmf
1 = "(1) 0-1 month"
2 = "(2) 2 months"
3 = "(3) 3 months"
4 = "(4) 4-5 months"
6 = "(6) 6+ months"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvatvf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
;
value arvdtgf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
;
value arvefvf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
;
value arvftmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value arvftyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value arvfvstf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvinterrf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvinterraltf
1 = "(1) Yes"
2 = "(2) No"
3 = "(3) Never on ART"
99 = "(99) Missing"
;
value arvlocf
1 = "(1) Pick Up At The Local Clinic"
2 = "(2) Pick Up At The Hospital"
96 = "(96) Other"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvlocaltf
1 = "(1) Pick up at local clinic"
2 = "(2) Pick up at hospital"
3 = "(3) From the community support group/adherence club"
4 = "(4) Delivery"
5 = "(5) A family member or friend collects them"
6 = "(6) Not currently on ART"
99 = "(99) Missing"
;
value arvlpvf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
;
value arvnrpgf
1 = "(1) Was Not Prescribed"
2 = "(2) I Felt Healthy/Not Sick"
3 = "(3) Cost Of Medications"
4 = "(4) Cost Of Transport"
5 = "(5) Religious Reasons"
6 = "(6) Was Taking Traditional Medications"
7 = "(7) Medications Out Of Stock"
8 = "(8) Did Not Want People To Know HIV Status"
9 = "(9) Did Not Receive Permission From Spouse/Family"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvscurrentf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvsmissdaysf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvsnotcurrsnf
1 = "(1) I Have Trouble Taking A Tablet Everyday"
2 = "(2) I Had Side Effects"
3 = "(3) Facility Too Far Away For Me To Get Medicine Regularly"
4 = "(4) Cost Of Care"
5 = "(5) I Feel Healthy/Not Sick"
6 = "(6) Facility Was Out Of Stock"
7 = "(7) Religious Reasons"
8 = "(8) Taking Traditional Medications"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvsnottakef
1 = "(1) Not Eligible For Treatment"
2 = "(2) Health Care Provider Did Not Prescribe"
3 = "(3) HIV Medicines Not Available"
4 = "(4) I Feel Healthy/Not Sick"
5 = "(5) Cost Of Care"
6 = "(6) Religious Reasons"
7 = "(7) Taking Traditional Medications"
8 = "(8) Not Attending HIV Clinic"
9 = "(9) Clinic Is Too Far"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvspregnancydetailf
1 = "(1) Mom already taking ARVs at first antenatal visit"
2 = "(2) Mom newly initiated on ARVs during pregnancy or labor"
3 = "(3) Mom did not take ARVs during pregnancy or labor"
99 = "(99) Missing"
;
value arvstakenevf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvstatusf
1 = "(1) ARV detected"
2 = "(2) ARV not detected"
99 = "(99) Missing"
;
value arvswitchf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvswitchaltf
1 = "(1) Yes"
2 = "(2) No"
3 = "(3) Never on ART"
99 = "(99) Missing"
;
value arvswitchwhyf
1 = "(1) I Was Not Responding To My First Treatment"
2 = "(2) My Viral Load Wasn't Suppressed"
3 = "(3) I Wanted To Get Pregnant Or Was Pregnant"
4 = "(4) I Was Having/Worried About Serious Side Effects"
5 = "(5) National Art Regimen Change"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvtkpgf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value atttransmit_tzf
1 = "(1) Agree"
2 = "(2) Disagree"
-8 = "(-8) Don't Know/Not Sure/Depends"
-9 = "(-9) Refused"
;
value attviralload_tzf
1 = "(1) Agree"
2 = "(2) Disagree"
-8 = "(-8) Don't Know/Not Sure/Depends"
-9 = "(-9) Refused"
;
value avoidpregf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value awaref
1 = "(1) Aware or considered aware because ARVs detectable"
2 = "(2) Unaware and ARVs not detectable, or unaware and ARV testing results missing"
99 = "(99) Missing"
;
value awareartf
1 = "(1) Self-report as not previously diagnosed and ARVs not detectable"
2 = "(2) Self-report as previously diagnosed, not on ART and ARVs not detectable"
3 = "(3) Previously diagnosed, on ART or ARVs detectable"
99 = "(99) Missing, including incomplete tri90 information and HIV-negative people"
;
value awareartselfreportedf
1 = "(1) Self-report as not previously diagnosed"
2 = "(2) Self-report as previously diagnosed, not on ART"
3 = "(3) Previously diagnosed, on ART"
99 = "(99) Missing, including incomplete tri90 information"
;
value awareselfreportedf
1 = "(1) Self-report aware of HIV+ status"
2 = "(2) Self-report not aware of HIV+ status"
99 = "(99) missing"
;
value birthmonf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value birthyrf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value bloodtransf_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value breastfedlastchildf
1 = "(1) Never breastfed last child"
2 = "(2) Previously breastfed last child"
3 = "(3) Currently breastfeeding last child"
4 = "(4) Mother, missing data on breastfeeding status of last child"
99 = "(99) Missing (non-mother)"
;
value bt_statusf
1 = "(1) Lab blood test has a definite result"
2 = "(2) Lab blood test does not a definite result"
;
value buyfood_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure/Depends"
-9 = "(-9) Refused"
;
value cd4catf
1 = "(1) CD4 less than 100"
2 = "(2) CD4 greater than or equal to 100 and less than 200 (Combine first two categories for table reporting in PHIA2.0)"
3 = "(3) CD4 greater than or equal to 200 and less than 350"
4 = "(4) CD4 greater than or equal to 350 and less than 500"
5 = "(5) CD4 greater than or equal to 500"
99 = "(99) CD4 missing"
;
value cerncnrsltf
1 = "(1) Normal/Negative"
2 = "(2) Abnormal/Positive/Suspect Cancer"
5 = "(5) Inconclusive/Not received"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cerncntrtf
1 = "(1) Yes, I Was Treated On The Same Day"
2 = "(2) Yes, I Received Treatment On A Different Day"
3 = "(3) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cervcnabnormalf
1 = "(1) Abnormal, including suspect cancer"
2 = "(2) Normal"
99 = "(99) Missing, including Inconclusive, did not receive results, and males"
;
value cervcntsmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value cervcntstf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cervcntsyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value changres12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value chdeliverloc_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chdeliverloc_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chdeliverloc_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chdeliverloc_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chdeliverloc_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chenschf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value child14yr_tzf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value child19yr_tzf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childa2012f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childalive1f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childalive2f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childbrstfd1f
1 = "(1) Yes"
2 = "(2) No, Never Breastfed"
3 = "(3) No, Child Died Before Breastfeeding"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childbrstfdnow1f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childbrstfdnow2f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childlivew_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childlivewnum_tzf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childnotlivew_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childnotlivewnum_tzf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childtotalconf_tzf
1 = "(1) Confirmed"
2 = "(2) Not Confirmed"
;
value chroniccond_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_h_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronliver_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivagelastm1f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-5 = "(-5) Child Only Tested Once For HIV (First Test Is The Same As Last Test)"
;
value chtsthivagem1f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivbirth1f
1 = "(1) Yes"
2 = "(2) No, Not Tested For HIV"
3 = "(3) No, Child Died Before Testing"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivbrstfd1f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivresult1f
1 = "(1) Positive; Child Has HIV"
2 = "(2) Negative; Child Does Not Have HIV"
3 = "(3) Unknown/Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivresultlast1f
1 = "(1) Positive; Child Has HIV"
2 = "(2) Negative; Child Does Not Have HIV"
3 = "(3) Unknown/Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value clinchangef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_if
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_jf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cmethod_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomgetf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomlastnonmarital12mof
1 = "(1) Used condom at last sexual intercourse with their last non-martial non-cohabitating partner in the past 12 months"
2 = "(2) Did not use condom at last sexual intercourse with their last non-martial non-cohabitating partner in the past 12 months"
99 = "(99) Missing"
;
value condomlastsex12monthsf
1 = "(1) Used condom at last sexual intercourse in the past 12 months"
2 = "(2) Did not use condom at last sexual intercourse in the past 12 months"
3 = "(3) No sexual intercourse in the past 12 months"
99 = "(99) Missing"
;
value condomnoteasyrsn_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_j_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cookingfuelf
1 = "(1) Electricity"
2 = "(2) LPG/Natural Gas"
3 = "(3) Biogas"
4 = "(4) Paraffin/Kerosene"
6 = "(6) Charcoal From Wood"
7 = "(7) Firewood/Straw"
95 = "(95) No Food Cooked In Household"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value $countryf
"Tanzania" = "(Tanzania) Tanzania"
;
value covvac_tzf
1 = "(1) Yes (Vaccination Record Seen)"
2 = "(2) Yes (Vaccination Record Not Seen)"
3 = "(3) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvaccomplete_tzf
1 = "(1) Completed COVID-19 vaccine series"
2 = "(2) Did not complete COVID-19 vaccine series"
;
value covvacdiff_tzf
1 = "(1) Easy"
2 = "(2) Difficult"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_j_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_k_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_l_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdiffrsn_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacdose_tzf
1 = "(1) 1"
2 = "(2) 2"
3 = "(3) 3 Or More"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacfam_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacfirstm_tzf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value covvacfirsty_tzf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value covvacinfo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_h_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_w_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacmotiv_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacsafe_tzf
1 = "(1) Not At All Safe"
2 = "(2) A Little Safe"
3 = "(3) Moderately Safe"
4 = "(4) Very Safe"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvacsecm_tzf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value covvacsecy_tzf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value covvactrust_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_g_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_h_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_i_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_j_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_k_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_w_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactrust_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value covvactype_recode_tzf
1 = '(1) J&J Janssen'
2 = "(2) Pfizer"
3 = "(3) Sinopharm"
4 = "(4) Moderna"
5 = "(5) Sinovac"
96 = "(96) Other"
97 = "(97) Don't Know"
-9 = "(-9) Refused"
;
value covvactype_tzf
1 = '(1) J&J Janssen'
2 = "(2) Pfizer"
3 = "(3) Sinopharm"
4 = "(4) Moderna"
5 = "(5) Sinovac"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value curmarf
1 = "(1) Married"
2 = "(2) Living Together"
3 = "(3) Widowed"
4 = "(4) Divorced"
5 = "(5) Separated/Single"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dadaidsf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dadalivef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dadhhmf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dadsickf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value deathagemo1f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value deathsf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value delivered12monthsf
1 = "(1) Delivered in the past 12 months"
2 = "(2) Did not deliver in the past 12 months"
3 = "(3) Mother, missing data on last delivery date"
99 = "(99) Missing (non-mother)"
;
value delivered3yearsf
1 = "(1) Gave birth 3 years preceding survey"
2 = "(2) Did not give birth 3 years preceding survey"
3 = "(3) Mother, missing data on last delivery date"
99 = "(99) Missing (non-mother)"
;
value deniedserv12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value depressed_tzf
1 = "(1) Not At All"
2 = "(2) 1-7 Days"
3 = "(3) 8-11 Days"
4 = "(4) 12-14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dialysis_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagey_01f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagey_02f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagey_03f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagey_04f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagey_05f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dieddatey_01f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value dieddatey_02f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value dieddatey_03f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value dieddatey_04f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value dieddatey_05f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value diedgend_01f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedgend_02f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedgend_03f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedgend_04f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedgend_05f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value disclose_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value discrim_both_tzf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing"
;
value econsup12_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_hf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_if
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value econsup12_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value educationf
1 = "(1) No education"
2 = "(2) Primary"
3 = "(3) Secondary"
4 = "(4) More than secondary"
99 = "(99) Missing"
;
value emancipatedf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value evermarf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value everpregnantf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing"
;
value evertestedf
1 = "(1) Ever tested for HIV"
2 = "(2) Never tested for HIV"
99 = "(99) Missing"
;
value famshame_tzf
1 = "(1) Agree"
2 = "(2) Disagree"
-8 = "(-8) Don't Know/Not Sure/Depends"
-9 = "(-9) Refused"
;
value femguardhhmf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value firstsexbefore15f
1 = "(1) Had first sex before age 15"
2 = "(2) Did not have first sex before age 15"
99 = "(99) Missing"
;
value firstsxagef
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-96 = "(-96) Never Had Sex"
;
value gad2scoreoverthreef
1 = "(1) GAD-2 score over 3"
2 = "(2) GAD-2 score of 3 or less"
;
value genderf
1 = "(1) Male"
2 = "(2) Female"
;
value hepb_ab_tzf
1 = "(1) Hepatitis B antibody positive"
2 = "(2) Hepatitis B antibody negative"
99 = "(99) Missing"
;
value hepb_ag_tzf
1 = "(1) Hepatitis B antigen positive"
2 = "(2) Hepatitis B antigen positive"
99 = "(99) Missing"
;
value hepb_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hepbclivew_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hepbstatusfinal_tzf
1 = "(1) Hepatitis B positive"
2 = "(2) Hepatitis B negative"
99 = "(99) Missing"
;
value hepbtreat_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hepbvac_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hepc_ab_tzf
1 = "(1) Hepatitis C antibody positive"
2 = "(2) Hepatitis C antibody negative"
99 = "(99) Missing"
;
value hepc_ag_tzf
1 = "(1) Hepatitis C antigen positive"
2 = "(2) Hepatitis C antigen negative"
99 = "(99) Missing"
;
value hepc_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value $hepc_vl_tzf
"TND" = "(TND) TND - Target not detected"
"Titer min" = "(Titer min) Titer min - less than lower limit of detection"
"Values <= 10000000" = "(Values <= 10000000) Values <= 10000000"
;
value hepcstatusfinal_tzf
1 = "(1) Hepatitis C positive"
2 = "(2) Hepatitis C negative"
99 = "(99) Missing"
;
value hepctreat_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hepmedia_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hfhivtstofferf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hflast12mof
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_e_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhstatusf
1 = "(1) Eligible Responding Household"
2 = "(2) Eligible Nonresponding Household"
3 = "(3) Ineligible (Vacant Household, not a Dwelling, Dwelling Destroyed)"
4 = "(4) Unknown Eligibility Status"
;
value hivcaref
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivclmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value hivclyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value hivcnotrsnf
1 = "(1) Facility Is Too Far Away"
2 = "(2) I Don't Know Where To Get HIV Medical Care"
3 = "(3) Cost Of Care"
4 = "(4) Cost Of Transport"
5 = "(5) I Do Not Need It/I Feel Healthy/Not Sick"
6 = "(6) I Fear People Will Know That I Have HIV If I Go To A Clinic"
7 = "(7) Religious Reasons"
8 = "(8) I'm Taking Traditional Medicine"
9 = "(9) Do Not Trust The Staff/Quality Of Care"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivcrltcf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivlastnegmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value hivlastnegyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value hivposprovf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivposprovyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value hivpsbpf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivrtadf
1 = "(1) Positive"
2 = "(2) Negative"
3 = "(3) Unknown/Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivrtpgf
1 = "(1) Positive"
2 = "(2) Negative"
3 = "(3) Unknown/Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivselftstf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivstatusfinalf
1 = "(1) HIV Positive"
2 = "(2) HIV Negative"
99 = "(99) Missing"
;
value hivstatuslastpregnancyf
1 = "(1) Self-reported positive during last pregnancy or labor and delivery"
2 = "(2) Self-reported HIV negative during last pregnancy or labor and delivery"
99 = "(99) Missing"
;
value hivtestmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value hivtestyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value hivtfposmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value hivtfposyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value hivtprgf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtsadf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtsbpf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtsteverf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstlocationf
1 = "(1) VCT Facility"
2 = "(2) Mobile VCT"
3 = "(3) At Home"
4 = "(4) Health Clinic/Facility"
5 = "(5) Hospital Outpatient Clinic"
8 = "(8) Hospital Inpatient Wards"
9 = "(9) Blood Donating Center"
10 = "(10) ANC Clinic"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_hf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_if
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_jf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_kf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_lf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstrsltf
1 = "(1) Positive"
2 = "(2) Negative"
3 = "(3) Unknown/Inconclusive"
4 = "(4) Did Not Receive The Result"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstrsnf
1 = "(1) Was Offered Test By Health Care Or Outreach Worker"
2 = "(2) Wanted To Know My HIV Status"
3 = "(3) Felt At Risk"
4 = "(4) Felt Sick"
5 = "(5) New Partner"
6 = "(6) Pregnancy"
7 = "(7) My Partner Tested Positive"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value householdheadgenderf
1 = "(1) Household head is male"
2 = "(2) Household head is female"
99 = "(99) Missing"
;
value householdheadhivpositivef
1 = "(1) Household head is HIV positive"
2 = "(2) Household head is HIV negative"
3 = "(3) Household head was not tested/did not have a definite outcome"
99 = "(99) Missing"
;
value hpvvaccf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value huslivew_tzf
1 = "(1) Staying In A Different Household, Same Ward"
2 = "(2) Staying In A Different Ward, Same Region"
3 = "(3) Staying In A Different Region"
4 = "(4) Staying In A Different Country"
0 = "(0) Living In The Household"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value husnwiff
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value husotwiff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value ind0040f
1 = "(1) Not Available After All Visit Attempts"
2 = "(2) Refused"
3 = "(3) Incapacitated"
96 = "(96) Other (Specify)"
;
value indstatusf
1 = "(1) Eligible Respondent"
2 = "(2) Eligible Non-Respondent"
3 = "(3) Roster eligible but ineligible for weighting"
4 = "(4) Unknown Eligibility Status"
5 = "(5) Roster ineligible"
9 = "(9) Non-defacto Individuals"
;
value initiatedartselfreportedf
1 = "(1) Self-report as ever initiating ART"
2 = "(2) Self-report as never initiating ART"
99 = "(99) Missing"
;
value inj12monum_tzf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_a_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_b_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_c_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_d_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_f_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value inj12mopers_x_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value insult12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value island_tzf
1 = "(1) Unguja"
2 = "(2) Pemba"
;
value kidsschool_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure/Depends"
-9 = "(-9) Refused"
;
value knownhivstatusf
1 = "(1) Stated HIV negative"
2 = "(2) Stated HIV negative"
3 = "(3) Never tested"
99 = "(99) Don’t Know/Refused/Unknown/Indeterminate/Results Not Received"
;
value lastbornhivstatusf
1 = "(1) Result of last-born child’s first virologic HIV test was positive"
2 = "(2) Result of last-born child’s first virologic HIV test was negative"
3 = "(3) Don’t know or other result of last-born child’s first virologic HIV test"
99 = "(99) Missing"
;
value lastborntestedbirthdetailf
1 = "(1) Last-born child had an HIV test done at 2 months or less"
2 = "(2) Last-born child had an HIV test done between 3 and 11 months"
3 = "(3) Last-born child had an HIV test done at 12 months or more than 12 months"
4 = "(4) Last born child had an HIV test done, but the date of the test is unknown"
5 = "(5) Last born child did not have an HIV test done"
99 = "(99) Missing"
;
value lifetimesexf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value littleinterest_tzf
1 = "(1) Not At All"
2 = "(2) 1-7 Days"
3 = "(3) 8-11 Days"
4 = "(4) 12-14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value liveawayf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value liveawaymf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value liveawayyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value livebf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value livecountry_tzf
1 = "(1) Angola"
2 = "(2) Burundi"
4 = "(4) Comoros"
6 = "(6) India"
7 = "(7) Kenya"
10 = "(10) Nigeria"
11 = "(11) Pakistan"
13 = "(13) South Africa"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value liveheref
1 = "(1) Yes"
2 = "(2) No"
;
value liveregion_tzf
1 = "(1) Dodoma"
2 = "(2) Arusha"
3 = "(3) Kilimanjaro"
4 = "(4) Tanga"
5 = "(5) Morogoro"
6 = "(6) Pwani"
7 = "(7) Dar Es Salaam"
9 = "(9) Mtwara"
10 = "(10) Ruvuma"
11 = "(11) Iringa"
12 = "(12) Mbeya"
13 = "(13) Singida"
14 = "(14) Tabora"
16 = "(16) Kigoma"
17 = "(17) Shinyanga"
18 = "(18) Kagera"
19 = "(19) Mwanza"
20 = "(20) Mara"
22 = "(22) Njombe"
23 = "(23) Katavi"
25 = "(25) Geita"
53 = "(53) Mjini Magharibi"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value livetimeyf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-5 = "(-5) I Have Always Lived Here"
;
value lostjob12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value mainlandzanzibar_tzf
1 = "(1) Mainland Tanzania"
2 = "(2) Zanzibar"
;
value maleguardhhmf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value marriedf
1 = "(1) Never married"
2 = "(2) Married or living together"
3 = "(3) Divorced or separated"
4 = "(4) Widowed"
99 = "(99) Missing"
;
value matexwallsf
11 = "(11) No Walls"
12 = "(12) Cane/Palm/Trunks"
13 = "(13) Dung/Mud"
21 = "(21) Bamboo With Mud"
22 = "(22) Stone With Mud"
25 = "(25) Reused Wood"
31 = "(31) Cement"
32 = "(32) Stone With Lime/Cement"
33 = "(33) Bricks"
34 = "(34) Cement Blocks"
35 = "(35) Wood Planks/Shingles"
96 = "(96) Other (Specify)"
;
value matfloorf
11 = "(11) Earth/Sand"
21 = "(21) Wood Planks"
32 = "(32) Vinyl Or Asphalt Strip"
33 = "(33) Ceramic Tiles"
34 = "(34) Cement/Terazo"
35 = "(35) Carpet"
96 = "(96) Other (Specify)"
;
value matroof_tzf
11 = "(11) No Roof"
12 = "(12) Thatch/Palm Leaf"
13 = "(13) Dung/Mud"
21 = "(21) Corrugated Iron"
31 = "(31) Asbestos Sheet"
33 = "(33) Tiles"
96 = "(96) Other (Specify)"
;
value mcagef
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value mcdetailf
1 = "(1) Medical"
2 = "(2) Non-medical"
3 = "(3) Uncircumcised"
4 = "(4) Circumcised but provider unknown"
5 = "(5) Unknown if circumcised"
99 = "(99) Missing, including women"
;
value mcplansf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value mcstatusf
1 = "(1) Yes, Fully Circumcised"
2 = "(2) Yes, Partially Circumcised"
3 = "(3) Not Circumcised"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value mcwhomedf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value mcwhotradf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value medinhcurrf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value medinhmonthsf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value momaidsf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value momalivef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value momhhmf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value momsickf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value monthouteverf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value monthoutyearf
1 = "(1) Lived away from home for more than one month at a time in the past year"
2 = "(2) Did not live away from home for more than one month at a time in the past year"
99 = "(99) Missing"
;
value monthtimesf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value monthwhenmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value monthwhenyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value normworkf
1 = "(1) Home Community"
2 = "(2) Same Country, Different Community"
3 = "(3) Outside The Country"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value numwiff
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value outregiontypef
1 = "(1) City"
2 = "(2) Town"
3 = "(3) Rural Area"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value outregionwhrr_tzf
1 = "(1) Dodoma"
2 = "(2) Arusha"
3 = "(3) Kilimanjaro"
4 = "(4) Tanga"
5 = "(5) Morogoro"
6 = "(6) Pwani"
7 = "(7) Dar Es Salaam"
8 = "(8) Lindi"
9 = "(9) Mtwara"
10 = "(10) Ruvuma"
11 = "(11) Iringa"
12 = "(12) Mbeya"
13 = "(13) Singida"
14 = "(14) Tabora"
15 = "(15) Rukwa"
16 = "(16) Kigoma"
17 = "(17) Shinyanga"
18 = "(18) Kagera"
19 = "(19) Mwanza"
20 = "(20) Mara"
21 = "(21) Manyara"
22 = "(22) Njombe"
23 = "(23) Katavi"
24 = "(24) Simiyu"
25 = "(25) Geita"
26 = "(26) Songwe"
51 = "(51) Kaskazini Unguja"
52 = "(52) Kusini Unguja"
53 = "(53) Mjini Magharibi"
54 = "(54) Kaskazini Pemba"
55 = "(55) Kusini Pemba"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value ownchiknnumf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value owncownumf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value owndognumf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value owngoatnumf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value ownhorsenum_tzf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value part12monumf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partage1f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partage2f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partage3f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partgend1f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partgend2f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partgend3f
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value parthivsat1f
1 = "(1) He/She Is Positive (Did Not Test Together)"
2 = "(2) He/She Is Positive, Tested Together"
3 = "(3) He/She Is Negative (Did Not Test Together)"
4 = "(4) He/She Is Negative, Tested Together"
-8 = "(-8) Don't Know Status"
-9 = "(-9) Refused"
;
value parthivsat2f
1 = "(1) He/She Is Positive (Did Not Test Together)"
2 = "(2) He/She Is Positive, Tested Together"
3 = "(3) He/She Is Negative (Did Not Test Together)"
4 = "(4) He/She Is Negative, Tested Together"
-8 = "(-8) Don't Know Status"
-9 = "(-9) Refused"
;
value parthivsat3f
1 = "(1) He/She Is Positive (Did Not Test Together)"
2 = "(2) He/She Is Positive, Tested Together"
3 = "(3) He/She Is Negative (Did Not Test Together)"
4 = "(4) He/She Is Negative, Tested Together"
-8 = "(-8) Don't Know Status"
-9 = "(-9) Refused"
;
value partknowhiv1f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partknowhiv2f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partknowhiv3f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastcndm1f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastcndm2f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastcndm3f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastetoh1f
1 = "(1) Only I Was Drinking"
2 = "(2) Only Partner Was Drinking"
3 = "(3) Both Were Drinking"
4 = "(4) Neither"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastetoh2f
1 = "(1) Only I Was Drinking"
2 = "(2) Only Partner Was Drinking"
3 = "(3) Both Were Drinking"
4 = "(4) Neither"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlastetoh3f
1 = "(1) Only I Was Drinking"
2 = "(2) Only Partner Was Drinking"
3 = "(3) Both Were Drinking"
4 = "(4) Neither"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partlivew1f
1 = "(1) Yes"
2 = "(2) No"
;
value partlivew2f
1 = "(1) Yes"
2 = "(2) No"
;
value partlivew3f
1 = "(1) Yes"
2 = "(2) No"
;
value partrecent1f
1 = "(1) Yes"
2 = "(2) No"
;
value partrelation1f
1 = "(1) Husband/Wife"
2 = "(2) Live-In Partner"
3 = "(3) Partner, Not Live-In"
4 = "(4) Ex-Spouse/Ex-Partner"
5 = "(5) Friend/Acquaintance"
6 = "(6) Sex Worker"
8 = "(8) Stranger"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partrelation2f
1 = "(1) Husband/Wife"
2 = "(2) Live-In Partner"
3 = "(3) Partner, Not Live-In"
4 = "(4) Ex-Spouse/Ex-Partner"
5 = "(5) Friend/Acquaintance"
6 = "(6) Sex Worker"
8 = "(8) Stranger"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partrelation3f
1 = "(1) Husband/Wife"
2 = "(2) Live-In Partner"
3 = "(3) Partner, Not Live-In"
4 = "(4) Ex-Spouse/Ex-Partner"
5 = "(5) Friend/Acquaintance"
6 = "(6) Sex Worker"
8 = "(8) Stranger"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value phq2scoreoverthreef
1 = "(1) PHQ-2 score over 3"
2 = "(2) PHQ-2 score of 3 or less"
;
value piercing_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value $plaordbsf
"DBS" = "(DBS) LAg tested on DBS sample"
"PLA" = "(PLA) LAg tested on plasma sample"
;
value pregnancystatusf
1 = "(1) Currently pregnant"
2 = "(2) Not currently pregnant"
99 = "(99) Missing"
;
value pregnantf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Unsure"
-9 = "(-9) Refused"
;
value prepcurntf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value prepeverf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value prepwdtkf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value prgcaref
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value prgtwinf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value prpevrhdrf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value reasonawayf
1 = "(1) Work"
2 = "(2) School/University"
3 = "(3) Family/Marriage"
4 = "(4) Access Health Or Other Services"
5 = "(5) Conflict Or Natural Disaster (Floods, Cyclone, Drought)"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value recentlagvlf
1 = "(1) Positive: recent"
2 = "(2) Positive: long term"
99 = "(99) Missing/Not applicable"
;
value recentlagvlarvf
1 = "(1) Positive: recent"
2 = "(2) Positive: long term"
99 = "(99) Missing/Not applicable"
;
value regionf
1 = "(1) Dodoma"
2 = "(2) Arusha"
3 = "(3) Kilimanjaro"
4 = "(4) Tanga"
5 = "(5) Morogoro"
6 = "(6) Pwani"
7 = "(7) Dar Es Salaam"
8 = "(8) Lindi"
9 = "(9) Mtwara"
10 = "(10) Ruvuma"
11 = "(11) Iringa"
12 = "(12) Mbeya"
13 = "(13) Singida"
14 = "(14) Tabora"
15 = "(15) Rukwa"
16 = "(16) Kigoma"
17 = "(17) Shinyanga"
18 = "(18) Kagera"
19 = "(19) Mwanza"
20 = "(20) Mara"
21 = "(21) Manyara"
22 = "(22) Njombe"
23 = "(23) Katavi"
24 = "(24) Simiyu"
25 = "(25) Geita"
26 = "(26) Songwe"
51 = "(51) Kaskazini Unguja"
52 = "(52) Kusini Unguja"
53 = "(53) Mjini Magharibi"
54 = "(54) Kaskazini Pemba"
55 = "(55) Kusini Pemba"
;
value relattohhf
1 = "(1) Head"
2 = "(2) Wife/Husband/Partner"
3 = "(3) Son Or Daughter"
4 = "(4) Son-In-Law/Daughter-In-Law"
5 = "(5) Grandchild"
6 = "(6) Parent"
7 = "(7) Parent-In-Law"
8 = "(8) Brother/Sister"
10 = "(10) Other Relative"
11 = "(11) Adopted/Foster/Stepchild"
12 = "(12) Not Related"
-8 = "(-8) Don't Know"
;
value schcom_tzf
1 = "(1) Std 1"
2 = "(2) Std 2"
3 = "(3) Std 3"
4 = "(4) Std 4"
5 = "(5) Std 5"
6 = "(6) Std 6"
7 = "(7) Std 7"
8 = "(8) Std 8"
9 = "(9) Training After P/E"
10 = "(10) Adult Ed"
11 = "(11) Form 1"
12 = "(12) Form 2"
13 = "(13) Form 3"
14 = "(14) Form 4"
15 = "(15) Training After O-Level"
16 = "(16) Form 5"
17 = "(17) Form 6"
18 = "(18) Training After A-Level"
20 = "(20) Tertiary Non-Uni (At Least For One Year)"
21 = "(21) Tertiary Uni"
0 = "(0) Pre School"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value schlatf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value schlcurf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value schlhi_tzf
1 = "(1) Primary"
2 = "(2) Post-Primary Training"
3 = "(3) Secondary (O-Level)"
4 = "(4) Post Secondary (O-Level) Training"
5 = "(5) Secondary (A-Level)"
6 = "(6) Post Secondary (A-Level) Training"
7 = "(7) University"
0 = "(0) Pre-Primary"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value sex12monthsf
1 = "(1) Had sexual intercourse in the past 12 months"
2 = "(2) Did not have sexual intercourse in the past 12 months"
99 = "(99) Missing"
;
value sexeverf
1 = "(1) Ever had sexual intercourse"
2 = "(2) Never had sexual intercourse"
99 = "(99) Missing"
;
value sexpartners12monthsf
1 = "(1) One sexual partner in the past 12 months"
2 = "(2) Two or more sexual partners in the past 12 months"
99 = "(99) Missing"
0 = "(0) No sexual partners in the past 12 months"
;
value sexpartnerseverf
1 = "(1) One sexual partner ever"
2 = "(2) Two or more sexual partners ever"
99 = "(99) Missing"
0 = "(0) No sexual partners ever"
;
value shame12mo_tzf
1 = "(1) Agree"
2 = "(2) Disagree"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value sick3mof
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value sleepheref
1 = "(1) Yes"
2 = "(2) No"
;
value smoketob_tzf
1 = "(1) Daily"
2 = "(2) Less Than Daily"
3 = "(3) Not At All"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportemot12f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportemot3f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportmater12f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportmater3f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportmed12f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportschol12f
1 = "(1) Yes"
2 = "(2) No, Did Not Receive Support"
3 = "(3) No, Child Does Not Attend School"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportsocial12f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value supportsocial3f
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value surgeryproc_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value surveystyearf
2022 = "(2022) 2022"
2023 = "(2023) 2023"
;
value talkbad12mo_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know/Not Sure"
-9 = "(-9) Refused"
;
value tattoocuts_tzf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbclinhivtstf
1 = "(1) Yes"
2 = "(2) No, Was Not Tested For HIV"
3 = "(3) No, Already Know I Am HIV Positive"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbclinvisitf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbdiagnf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassess_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassess_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassess_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassess_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassess_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbsympassessanyf
1 = "(1) Screened for any TB symptoms"
2 = "(2) Not screened"
99 = "(99) Missing"
;
value tbtptf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbtreat6mofullf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbtreatedf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbttreatcurrf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tested12monthsf
1 = "(1) Tested for HIV in past 12 months"
2 = "(2) Not tested for HIV in the past 12 months"
3 = "(3) Not applicable, never tested for HIV"
99 = "(99) Missing"
;
value testedpregawaredetailf
1 = "(1) Tested HIV positive during pregnancy"
2 = "(2) Tested HIV negative during pregnancy"
3 = "(3) Already knew they were HIV positive before pregnancy"
4 = "(4) Tested for HIV during pregnancy but did not receive positive or negative result"
5 = "(5) Did not test during pregnancy and did not know they were HIV positive before pregnancy"
99 = "(99) Missing"
;
value toiletsharef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value toilettype_tzf
12 = "(12) Flush To Septic Tank"
13 = "(13) Flush To Pit Latrine"
14 = "(14) Flush To Somewhere Else"
15 = "(15) Flush, Don't Know Where"
16 = "(16) Flush To Piped Sewer System"
22 = "(22) Ventilated Improved Pit Latrine (Vip)"
23 = "(23) Pit Latrine With Slab (Not Washable)"
24 = "(24) Pit Latrine Without Slab/Open Pit"
25 = "(25) Pit Latrine With Slab (Washable)"
31 = "(31) Composting Toilet"
61 = "(61) No Facility/Bush/Field"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value traveldifff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value traveltimef
1 = "(1) Less Than Half Hour"
2 = "(2) Half Hour To One Hour"
3 = "(3) One To Two Hours"
4 = "(4) More Than Two Hours"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tri90f
1 = "(1) Observations to be included in the 90 90 90 analysis using ARV data."
2 = "(2) Observations to be excluded in the 90 90 90 analysis for ARV data due to incomplete data."
;
value tri90artf
1 = "(1) ARVs detectable, self-reported on ART, or both ARVs detectable and self-reported on ART"
2 = "(2) ARVs not detectable and self-reported not on ART or missing ARV data and self-reported not on ART"
3 = "(3) Recoded as not on ART (unaware and ARVs not detectable or unaware and ARVs missing)"
99 = "(99) Incomplete Tri90 information"
;
value tri90awaref
1 = "(1) Aware or considered aware because ARVs detectable"
2 = "(2) Unaware and ARVs not detectable or unaware and ARVs missing"
99 = "(99) Incomplete tri90 information"
;
value tri90srf
1 = "(1) Observations to be included in the 90 90 90 analysis using self-reported data."
2 = "(2) Observations to be excluded in the 90 90 90 analysis with self-reported data due to incomplete data."
;
value tri90srartf
1 = "(1) Self-reported on ART"
2 = "(2) Self-reported not on ART"
3 = "(3) Recoded as self-reported not on ART (unaware)"
99 = "(99) Incomplete tri90sr information"
;
value tri90srawaref
1 = "(1) Aware"
2 = "(2) Unaware"
99 = "(99) Incomplete tri90sr information"
;
value tri90srvlsf
1 = "(1) VLS"
2 = "(2) Not VLS"
3 = "(3) Recoded as not VLS (self-reported not on ART or unaware)"
99 = "(99) Incomplete tri90sr information"
;
value tri90vlf
1 = "(1) Observations to be included in the 90 90 90 analysis using viral load data."
2 = "(2) Observations to be excluded in the 90 90 90 analysis for viral load data due to incomplete data."
;
value tri90vlartf
1 = "(1) viral loads under 200, self-reported on ART, or both viral loads under 200 and self-reported on ART"
2 = "(2) viral loads not under 200 and self-reported not on ART or missing viral load data and self-reported not on ART"
3 = "(3) Recoded as not on ART (unaware and viral loads not under 200 or unaware and viral loads missing)"
99 = "(99) Incomplete Tri90 information"
;
value tri90vlawaref
1 = "(1) Aware or considered aware because viral load under 200"
2 = "(2) Unaware and viral load not under 200 or unaware and viral load data missing"
99 = "(99) Incomplete tri90 information"
;
value tri90vlsf
1 = "(1) VLS"
2 = "(2) Not VLS"
3 = "(3) Recoded as not VLS (self-reported not on ART or unaware and ARVs not detectable)"
99 = "(99) Incomplete Tri90 information"
;
value tri90vlvlsf
1 = "(1) VLS"
2 = "(2) Not VLS"
3 = "(3) Recoded as not VLS (self-reported not on ART and viral load not under 200, self-reported not on ART and viral load data missing, unaware and viral load not under 200, or unaware and viral load data missing)"
99 = "(99) Incomplete Tri90 information"
;
value uniontypef
1 = "(1) In polygynous union"
2 = "(2) Not in polygynous union"
3 = "(3) Not currently in union"
99 = "(99) Do not know/ missing"
;
value urbanf
1 = "(1) Urban"
2 = "(2) Rural"
;
value varstratf
1 = "(1) Variance stratum for Taylor Series variance estimation"
;
value vlsf
1 = "(1) Viral load suppressed (<1000 copies/mL)"
2 = "(2) Not viral load suppressed"
99 = "(99) Missing"
;
value vltestf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value vltestlstmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value vltestlstyf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value vltestresultf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value vlunder200f
1 = "(1) Viral load < 200"
2 = "(2) Viral load >= 200"
99 = "(99) Missing, including viral load not detectable at limit over 200 "
;
value watersourcef
11 = "(11) Piped Into Dwelling"
12 = "(12) Piped To Yard/Plot"
13 = "(13) Public Tap/Standpipe"
21 = "(21) Tube Well Or Borehole"
31 = "(31) Protected Well"
32 = "(32) Unprotected Well"
41 = "(41) Protected Spring"
42 = "(42) Unprotected Spring"
51 = "(51) Rainwater"
61 = "(61) Tanker Truck"
71 = "(71) Cart With Small Tank"
81 = "(81) Surface Water (River/Dam/Lake/ Pond/Stream/Canal)"
91 = "(91) Bottled Water"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value wealthquintilef
1 = "(1) Lowest"
2 = "(2) Second"
3 = "(3) Middle"
4 = "(4) Fourth"
5 = "(5) Highest"
99 = "(99) Missing"
;
value whereout_tzf
1 = "(1) Another Community In This District"
2 = "(2) Another District In This Region"
3 = "(3) Another Region"
4 = "(4) Another Country"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value whereoutr_tzf
1 = "(1) Dodoma"
2 = "(2) Arusha"
3 = "(3) Kilimanjaro"
4 = "(4) Tanga"
5 = "(5) Morogoro"
6 = "(6) Pwani"
7 = "(7) Dar Es Salaam"
8 = "(8) Lindi"
9 = "(9) Mtwara"
10 = "(10) Ruvuma"
11 = "(11) Iringa"
12 = "(12) Mbeya"
13 = "(13) Singida"
14 = "(14) Tabora"
15 = "(15) Rukwa"
16 = "(16) Kigoma"
17 = "(17) Shinyanga"
18 = "(18) Kagera"
19 = "(19) Mwanza"
20 = "(20) Mara"
21 = "(21) Manyara"
22 = "(22) Njombe"
23 = "(23) Katavi"
24 = "(24) Simiyu"
25 = "(25) Geita"
26 = "(26) Songwe"
51 = "(51) Kaskazini Unguja"
52 = "(52) Kusini Unguja"
53 = "(53) Mjini Magharibi"
54 = "(54) Kaskazini Pemba"
55 = "(55) Kusini Pemba"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value wifewhere_tzf
1 = "(1) Staying In A Different Household, Same Ward"
2 = "(2) Staying In A Different Ward, Same Region"
3 = "(3) Staying In A Different Region"
4 = "(4) Staying In A Different Country"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value wifliveewf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value work12mof
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value work7daysf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value workindf
1 = "(1) Mining"
2 = "(2) Agriculture/Farming"
3 = "(3) Transport"
4 = "(4) Construction"
5 = "(5) Uniformed Personnel"
6 = "(6) Informal Trade"
7 = "(7) Garment Industries"
8 = "(8) Housekeeper"
10 = "(10) Student"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value worry_tzf
1 = "(1) Not At All"
2 = "(2) 1-7 Days"
3 = "(3) 8-11 Days"
4 = "(4) 12-14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value yearsonartf
1 = "(1) less than 1 year"
2 = "(2) 1 to less than 5 years"
3 = "(3) 5 to less than 10 years"
4 = "(4) 10 years or more"
;
Run;
