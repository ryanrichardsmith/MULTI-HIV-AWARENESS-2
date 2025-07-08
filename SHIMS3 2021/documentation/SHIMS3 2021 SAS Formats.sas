
/* --------------------------------------------------------------------------------  */
/* To run this as a standalone program, uncomment the line below and then fill       */
/* in the full directory path where you want the formats to be stored on your PC.    */
/* --------------------------------------------------------------------------------  */
/* %let phia2fmtloc =  C:\Temp;                                                      */
%let phia2fmtloc =  G:\Shared drives\DMA\PHIA\PI Release\Output – Packages\Eswatini2\Format Libraries;

libname phia2f "&phia2fmtloc.";

proc format library=phia2f.shims32021formats;

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
value adhivprev_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_wf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_xf
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
value agecircage1_szf
2 = "(2) Month"
3 = "(3) Year"
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
value alcfreqf
1 = "(1) Monthly Or Less"
2 = "(2) 2-4 Times A Month"
3 = "(3) 2-3 Times A Week"
4 = "(4) 4 Or More Times A Week"
0 = "(0) Never"
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
value alcsixmoref
1 = "(1) Less Than Monthly"
2 = "(2) Monthly"
3 = "(3) Weekly"
4 = "(4) Daily Or Almost Daily"
0 = "(0) Never"
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
value anxietyf
1 = "(1) Not At All"
2 = "(2) 1 - 7 Days"
3 = "(3) 8 - 11 Days"
4 = "(4) 12 - 14 Days"
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
value arvamdkf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvamtf
1 = "(1) Weeks"
2 = "(2) Months"
;
value arvamtcovid_szf
1 = "(1) Yes"
2 = "(2) No"
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
value arvinterrcovid_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvloc_szf
1 = "(1) Pick Up At The Local Clinic"
2 = "(2) Pick Up At The Hospital"
3 = "(3) From The Community Support Group/Adherence Club"
4 = "(4) They Are Delivered To My Home"
5 = "(5) A Family Member/Friend Collects Them"
6 = "(6) Private Pharmacy"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvlocalt_szf
1 = "(1) Pick up at local clinic"
2 = "(2) Pick up at hospital"
3 = "(3) From the community support group/adherence club"
4 = "(4) Delivery"
5 = "(5) A family member or friend collects them"
6 = "(6) Private pharmacy"
7 = "(7) Not currently on ART"
99 = "(99) Missing"
;
value arvloccovid_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvlpvf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
;
value arvnrpg_szf
1 = "(1) Was Not Prescribed"
2 = "(2) I Felt Healthy/Not Sick"
3 = "(3) Cost Of Medications"
4 = "(4) Cost Of Transport"
5 = "(5) Religious Reasons"
6 = "(6) Was Taking Traditional Medications"
7 = "(7) Medications Out Of Stock"
8 = "(8) Did Not Want People To Know HIV Status"
9 = "(9) Did Not Receive Permission From Spouse/Family"
10 = "(10) Covid-19 Partial Lockdown"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvnvpf
1 = "(1) Yes"
2 = "(2) No"
99 = "(99) Missing or Not Tested"
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
value arvsnotcurrsn_szf
1 = "(1) I Have Trouble Taking A Tablet Everyday"
2 = "(2) I Had Side Effects"
3 = "(3) Facility Too Far Away For Me To Get Medicine Regularly"
4 = "(4) Cost Of Care"
5 = "(5) I Feel Healthy/Not Sick"
6 = "(6) Facility Was Out Of Stock"
7 = "(7) Religious Reasons"
8 = "(8) Taking Traditional Medications"
9 = "(9) Covid-19 Partial Lockdown"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvsnottake_szf
1 = "(1) Not Eligible For Treatment"
2 = "(2) Health Care Provider Did Not Prescribe"
3 = "(3) HIV Medicines Not Available"
4 = "(4) I Feel Healthy/Not Sick"
5 = "(5) Cost Of Care"
6 = "(6) Religious Reasons"
7 = "(7) Taking Traditional Medications"
8 = "(8) Not Attending HIV Clinic"
9 = "(9) Clinic Is Too Far"
10 = "(10) Not Ready For Treatment"
11 = "(11) Covid-19 Partial Lockdown"
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
value birthdayf
-8 = "(-8) Don't Know Day"
-9 = "(-9) Refused Day"
;
value birthmonf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value birthyrf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
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
value cd4catf
1 = "(1) CD4 less than 100"
2 = "(2) CD4 greater than or equal to 100 and less than 200 (Combine first two categories for table reporting in PHIA2.0)"
3 = "(3) CD4 greater than or equal to 200 and less than  350"
4 = "(4) CD4 greater than or equal to 350 and less than 500"
5 = "(5) CD4 greater than or equal to 500"
99 = "(99) CD4 missing"
;
value cerncnrsltf
1 = "(1) Normal/Negative"
2 = "(2) Abnormal/Positive"
3 = "(3) Suspect Cancer"
4 = "(4) Unclear/Inconclusive"
5 = "(5) Did Not Receive Results"
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
value chenschf
1 = "(1) Yes"
2 = "(2) No"
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
value childbrstfd2f
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
value childlastsex1_szf
1 = "(1) Male"
2 = "(2) Female"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value childwascirc1_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_if
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_df
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_ef
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_ff
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_gf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_if
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_xf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivage1f
1 = "(1) Weeks"
2 = "(2) Months"
3 = "(3) Years"
;
value chtsthivagelast1f
1 = "(1) Weeks"
2 = "(2) Months"
3 = "(3) Years"
;
value chtsthivbirth1f
1 = "(1) Yes"
2 = "(2) No, Not Tested For HIV"
3 = "(3) No, Child Died Before Testing"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivbirth2f
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
3 = "(3) Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chtsthivresultlast1f
1 = "(1) Positive; Child Has HIV"
2 = "(2) Negative; Child Does Not Have HIV"
3 = "(3) Inconclusive"
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
value cmethod_bf
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
value cmethod_hf
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
value cmethod_kf
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
value condomnegotiate_szf
1 = "(1) High Confidence"
2 = "(2) Moderate Confidence"
3 = "(3) Slight Confidence"
4 = "(4) No Confidence"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_a_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_b_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_c_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_d_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_e_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_f_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_x_szf
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
2 = "(2) Lpg/Natural Gas"
3 = "(3) Biogas"
4 = "(4) Paraffin/Kerosene"
5 = "(5) Coal, Lignite"
6 = "(6) Charcoal From Wood"
7 = "(7) Firewood/Straw"
8 = "(8) Dung"
95 = "(95) No Food Cooked In Household"
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
value deathageyr1f
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
value depressedf
1 = "(1) Not At All"
2 = "(2) 1 - 7 Days"
3 = "(3) 8 - 11 Days"
4 = "(4) 12 - 14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedage_01f
1 = "(1) Days"
2 = "(2) Months"
3 = "(3) Years"
;
value diedage_02f
1 = "(1) Days"
2 = "(2) Months"
3 = "(3) Years"
;
value diedage_03f
1 = "(1) Days"
2 = "(2) Months"
3 = "(3) Years"
;
value diedagedk_01f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagedk_02f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diedagedk_03f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value dieddated_01f
-8 = "(-8) Don't Know Day"
-9 = "(-9) Refused Day"
;
value dieddated_02f
-8 = "(-8) Don't Know Day"
-9 = "(-9) Refused Day"
;
value dieddated_03f
-8 = "(-8) Don't Know Day"
-9 = "(-9) Refused Day"
;
value dieddatem_01f
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value dieddatem_02f
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value dieddatem_03f
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
;
value dieddatey_01f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
;
value dieddatey_02f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
;
value dieddatey_03f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
2021 = "(2021) 2021"
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
value diednamedk_01f
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value diednamedk_03f
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
value econsupcovid_szf
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
value firstsxagecf
1 = "(1) Yes"
2 = "(2) No"
;
value gad2scoreoverthreef
1 = "(1) GAD-2 score over 3"
2 = "(2) GAD-2 score of 3 or less"
;
value genderf
1 = "(1) Male"
2 = "(2) Female"
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
value hhcemancf
1 = "(1) Yes"
2 = "(2) No"
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
value $hhqovcins1f
"A" = "(A) Continue"
;
value hhqown_a_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_b_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_c_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_d_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_e_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_f_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_g_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_h_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_w_szf
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
value hivcnotrsn_szf
1 = "(1) Facility Is Too Far Away"
2 = "(2) I Don't Know Where To Get HIV Medical Care"
3 = "(3) Cost Of Care"
4 = "(4) Cost Of Transport"
5 = "(5) I Do Not Need It/I Feel Healthy/Not Sick"
6 = "(6) I Fear People Will Know That I Have HIV If I Go To A Clinic"
7 = "(7) Religious Reasons"
8 = "(8) I'm Taking Traditional Medicine"
9 = "(9) Do Not Trust The Staff/Quality Of Care"
10 = "(10) Covid-19 Partial Lockdown"
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
value hivlastnegdkf
3 = "(3) No Previous HIV Negative Test Before The Positive Test"
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
value hivposprovmf
-8 = "(-8) Don't Know Month"
-9 = "(-9) Refused Month"
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
3 = "(3) Inconclusive"
4 = "(4) Did Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivrtpgf
1 = "(1) Positive"
2 = "(2) Negative"
3 = "(3) Inconclusive"
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
value hivselftstconfirm_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivselftstloc_szf
1 = "(1) Health Facilty"
2 = "(2) Pharmacy"
3 = "(3) Community Based Organizations"
4 = "(4) Faith Based Organization"
5 = "(5) Sexual Partner"
6 = "(6) Family Member"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivselftstmethod_szf
1 = "(1) Self-Administered"
2 = "(2) Assisted"
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
value hivtstlocation_szf
1 = "(1) VCT Facility"
2 = "(2) Mobile VCT"
3 = "(3) At Home"
4 = "(4) Health Clinic/Facility"
5 = "(5) Hospital Outpatient Clinic"
6 = "(6) TB Clinic"
7 = "(7) STI Clinic"
8 = "(8) Hospital Inpatient Wards"
9 = "(9) Blood Donating Center"
10 = "(10) ANC Clinic"
11 = "(11) VMMC Clinic"
12 = "(12) Family Planning Clinic"
13 = "(13) At Work/School"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_a_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_b_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_c_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_d_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_e_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_f_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_g_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_h_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_i_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_j_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_k_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_l_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstnvrrsn_x_szf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hivtstrsltf
1 = "(1) Positive"
2 = "(2) Negative"
3 = "(3) Inconclusive"
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
value huslivewf
1 = "(1) Staying In A Different Household, Same Community"
2 = "(2) Staying In A Different Community, Same Region"
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
4 = "(4) Unknown Eligibility Status"
5 = "(5) Roster ineligible"
9 = "(9) Non-defacto Individuals"
;
value initiatedartselfreportedf
1 = "(1) Self-report as ever initiating ART"
2 = "(2) Self-report as never initiating ART"
99 = "(99) Missing"
;
value knownhivstatusf
1 = "(1) Stated HIV Positive"
2 = "(2) Stated HIV Negative"
3 = "(3) Never Tested"
99 = "(99) Don’t Know/Refused/Unknown/Indeterminate/Results Not Received"
;
value lastbornhivstatusf
1 = "(1) Result of last-born child’s first virologic HIV test was positive"
2 = "(2) Result of last-born child’s first virologic HIV test was negative"
3 = "(3) Don’t know or other result of last-born child’s first virologic HIV test"
99 = "(99) Missing"
;
value lastborntestedbirthdetailf
1 = "(1) Last born child had an HIV test done within two months of birth"
2 = "(2) Last born child had an HIV test done more than two months but less than 12 months after being born"
3 = "(3) Last born child had an HIV test done more than 12 months after being born"
4 = "(4) Last born child had an  HIV test done, but the date of the test is unknown"
5 = "(5) Last born child did not have an HIV test done"
99 = "(99) Missing"
;
value lifetimesexf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value littleinterestf
1 = "(1) Not At All"
2 = "(2) 1 - 7 Days"
3 = "(3) 8 - 11 Days"
4 = "(4) 12 - 14 Days"
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
value liveheref
1 = "(1) Yes"
2 = "(2) No"
;
value livetimef
2 = "(2) Months"
3 = "(3) Years"
;
value livetimedkf
3 = "(3) I Have Always Lived Here"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value lngnat_lng_szf
1 = "(1) English"
2 = "(2) Siswati"
96 = "(96) Other"
;
value lngvint_lng_szf
1 = "(1) English"
2 = "(2) Siswati"
;
value lngvqx_lng_szf
1 = "(1) English"
2 = "(2) Siswati"
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
23 = "(23) Plywood/Cardboard"
24 = "(24) Carton"
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
12 = "(12) Dung"
21 = "(21) Wood Planks"
22 = "(22) Palm/Bamboo"
31 = "(31) Parquet Or Polished Wood"
32 = "(32) Vinyl Or Asphalt Strip"
33 = "(33) Ceramic Tiles"
34 = "(34) Cement/Terazo"
35 = "(35) Carpet"
96 = "(96) Other (Specify)"
;
value matrooff
11 = "(11) No Roof"
12 = "(12) Thatch/Palm Leaf"
21 = "(21) Corrugated Iron"
22 = "(22) Tin Cans"
31 = "(31) Asbestos Sheet"
32 = "(32) Concrete"
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
value mcstatus_szf
1 = "(1) Yes"
3 = "(3) No"
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
value outregionwhr_szf
1 = "(1) Hhohho"
2 = "(2) Lubombo"
3 = "(3) Manzini"
4 = "(4) Shiselweni"
5 = "(5) South Africa"
6 = "(6) Mozambique"
7 = "(7) Zimbabwe"
8 = "(8) Lesotho"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
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
7 = "(7) Sex Worker Client"
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
7 = "(7) Sex Worker Client"
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
7 = "(7) Sex Worker Client"
8 = "(8) Stranger"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value phq2scoreoverthreef
1 = "(1) PHQ-2 score over 3"
2 = "(2) PHQ-2 score of 3 or less"
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
value reasonaway_szf
1 = "(1) Work"
2 = "(2) School/University"
3 = "(3) Family/Marriage"
4 = "(4) Access Health Or Other Services"
5 = "(5) Conflict Or Natural Disaster (Floods, Cyclone, Drought)"
6 = "(6) Covid-19 Partial Lockdown"
7 = "(7) Visit/Vacation"
8 = "(8) Arrested"
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
1 = "(1) Hhohho"
2 = "(2) Lubombo"
3 = "(3) Manzini"
4 = "(4) Shiselweni"
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
9 = "(9) Co-Wife"
10 = "(10) Other Relative"
11 = "(11) Adopted/Foster/Stepchild"
12 = "(12) Not Related"
-8 = "(-8) Don't Know"
;
value schcom_szf
1 = "(1) Level 0 (Grade 0)"
2 = "(2) Level 1 (Primary, Year 1)"
3 = "(3) Level 1 (Primary, Year 2)"
4 = "(4) Level 1 (Primary, Year 3)"
5 = "(5) Level 1 (Primary, Year 4)"
6 = "(6) Level 1 (Primary, Year 5)"
7 = "(7) Level 1 (Primary, Year 6)"
8 = "(8) Level 1 (Primary, Year 7)"
9 = "(9) Level 2 (Secondary, Form 1)"
10 = "(10) Level 2 (Secondary, Form 2)"
11 = "(11) Level 2 (Secondary, Form 3)"
12 = "(12) Level 2 (Secondary, Form 4)"
13 = "(13) Level 2 (Secondary, Form 5)"
14 = "(14) Level 2 (Secondary, Form 6)"
15 = "(15) Level 3 (Short Cycle Tertiary)"
16 = "(16) Level 3 (Bachelor's Program)"
17 = "(17) Level 3 (Master's Program)"
18 = "(18) Level 3 (Doctoral Program)"
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
value startintf
1 = "(1) Yes"
2 = "(2) No"
4 = "(4) Initiate Survey Stop"
;
value strtinstrf
1 = "(1) Start Interview"
2 = "(2) Cannot Collect Data"
3 = "(3) Reassign Individual To Another Tablet"
4 = "(4) Initiate Survey Stop"
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
value toilettypef
11 = "(11) Flush Or Pour Flush Toilet"
21 = "(21) Traditional Pit Latrine"
22 = "(22) Ventilated Improved Pit Latrine (Vip)"
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
2 = "(2) Observations to be excluded in the 90 90 90 analysis for ARV data due to incomplete data"
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
1 = "(1) Observations to be included in the 90 90 90 analysis using self-reported data"
2 = "(2) Observations to be excluded in the 90 90 90 analysis with self-reported data due to incomplete data"
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
1 = "(1) Viral loads under 200, self-reported on ART, or both viral loads under 200 and self-reported on ART"
2 = "(2) Viral loads not under 200 and self-reported not on ART or missing viral load data and self-reported not on ART"
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
3 = "(3) Recoded as not VLS (self-reported not on ART and ARVs not detectable, self-reported not on ART and ARVs missing, unaware and ARVs not detectable, or unaware and ARVs missing)"
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
99 = "(99) Do not know/missing"
;
value urbanf
1 = "(1) Urban"
2 = "(2) Rural"
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
81 = "(81) Surface Water (River/Dam/Lake/Pond/Stream/Canal)"
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
value whereout_szf
1 = "(1) Another Community In This Inkhundla"
2 = "(2) Another Inkhundla In This Region"
3 = "(3) Hhohho"
4 = "(4) Lubombo"
5 = "(5) Manzini"
6 = "(6) Shiselweni"
7 = "(7) South Africa"
8 = "(8) Mozambique"
9 = "(9) Zimbabwe"
10 = "(10) Lesotho"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value whynocirc1_szf
1 = "(1) Cost Is Too Much"
2 = "(2) Don't Know Where To Get It Done"
3 = "(3) Afraid Of The Pain Child Would Experience"
4 = "(4) Bad Experience With MC"
5 = "(5) Family Refused"
6 = "(6) Not Culturally Appropriate"
7 = "(7) No One Offered"
8 = "(8) Child Was Ill At Birth"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value wifewheref
1 = "(1) Staying In A Different Household, Same Community"
2 = "(2) Staying In A Different Community, Same Region"
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
9 = "(9) Sex Worker"
10 = "(10) Student"
11 = "(11) Sales/Services"
12 = "(12) Teacher"
13 = "(13) Healthcare"
14 = "(14) Clerical"
15 = "(15) Unemployed"
16 = "(16) Engineer/Tradesman"
17 = "(17) Forestry/Landscaping"
18 = "(18) Community Work/Social Services"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value worryf
1 = "(1) Not At All"
2 = "(2) 1 - 7 Days"
3 = "(3) 8 - 11 Days"
4 = "(4) 12 - 14 Days"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value yearsonartf
1 = "(1) Less than 1 year"
2 = "(2) 1 to less than 5 years"
3 = "(3) 5 to less than 10 years"
4 = "(4) 10 years or more"
;
Run;
