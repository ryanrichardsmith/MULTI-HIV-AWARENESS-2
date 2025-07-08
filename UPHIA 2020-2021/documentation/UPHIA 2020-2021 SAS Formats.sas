
/* --------------------------------------------------------------------------------  */
/* To run this as a standalone program, uncomment the line below and then fill       */
/* in the full directory path where you want the formats to be stored on your PC.    */
/* --------------------------------------------------------------------------------  */
/* %let phia2fmtloc =  C:\Temp;                                                                                              */
 %let phia2fmtloc =  g:\shared drives\dma\phia\public release\output - packages\uganda2\format libraries;                  
 libname phia2f "&phia2fmtloc.";

proc format library=phia2f.uphia2020formats;

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
value adhivprev_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_b_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_g_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_w_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value adhivprev_x_ugf
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
1 = "(1) Last-born child 0-1 months"
2 = "(2) Last-born child 2-3 months"
3 = "(3) Last-born child 4-5 months"
4 = "(4) Last-born child 6-8 months"
5 = "(5) Last-born child 9-11 months"
6 = "(6) Last-born child 12-17 months"
7 = "(7) Last-born child 18-23 months"
8 = "(8) Last-born child 24 + months"
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
value arvamtcovid_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvamtmf
1 = "(1) 0 or 1 month"
2 = "(2) 2 months"
3 = "(3) 3 months"
5 = "(5) 4 or 5 months"
6 = "(6) 6 or more months"
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
value arvinterrcovid_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value arvlocf
1 = "(1) Pick Up At The Local Clinic"
2 = "(2) Pick Up At The Hospital"
3 = "(3) From The Community Support Group/Adherence Club"
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
value arvloccovid_ugf
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
value arvswitchwhy_ugf
1 = "(1) I Was Not Responding To My First Treatment"
2 = "(2) My Viral Load Wasn't Suppressed"
4 = "(4) I Was Having/Worried About Serious Side Effects"
5 = "(5) Change Of Guidelines"
6 = "(6) Drug Stock-Outs"
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
value birthyrf
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
;
value brthwhr_ugf
1 = "(1) At Home"
2 = "(2) At A Health Facility"
3 = "(3) In Transit"
4 = "(4) Traditional Birth Attendant (TBa)"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value bt_statusf
1 = "(1) Lab blood test has a definite result"
2 = "(2) Lab blood test does not a definite result"
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
5 = "(5) Unclear/InconclusiveDid Not Receive Results"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value cerncntrtf
1 = "(1) Yes, I Was Treated On The Same Day/On A Different Day"
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
value chroniccond_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_b_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_g_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_i_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_j_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chroniccond_x_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_b_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_g_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_i_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_j_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value chronicmed_x_ugf
1 = "(1) Yes"
2 = "(2) No"
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
value condomnoteasyrsn_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_v_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_w_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomnoteasyrsn_x_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_b_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_g_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value condomwhere_x_ugf
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
"Ugand" = "(Ugand)"
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
3 = "(3) Mother, missing data Yon last delivery date"
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
value dieddatey_01f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2018 = "(2018) 2018"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
;
value dieddatey_02f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2018 = "(2018) 2018"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
;
value dieddatey_03f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2018 = "(2018) 2018"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
;
value dieddatey_04f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2018 = "(2018) 2018"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
;
value dieddatey_05f
-8 = "(-8) Don't Know Year"
-9 = "(-9) Refused Year"
2018 = "(2018) 2018"
2019 = "(2019) 2019"
2020 = "(2020) 2020"
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
value econsupcovid_ugf
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
value ethnic_ugf
1 = "(1) Baganda"
2 = "(2) Banyankore"
3 = "(3) Iteso"
4 = "(4) Lugbara/Madi"
5 = "(5) Basoga"
6 = "(6) Langi"
7 = "(7) Bakiga"
8 = "(8) Karimojong"
9 = "(9) Acholi"
10 = "(10) Bagisu/Sabiny"
11 = "(11) Alur/Jopadhola"
12 = "(12) Banyoro"
13 = "(13) Batoro"
14 = "(14) Other Bantu"
15 = "(15) Rwandan"
96 = "(96) Other (Specify)"
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
-7 = "(-7) Response inconsistent"
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
value hhqitems_a_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_b_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_c_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_d_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_e_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_f_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqitems_g_ugf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_af
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_bf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_cf
1 = "(1) Yes"
2 = "(2) No"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value hhqown_ef
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
value hivcnotrsn_ugf
1 = "(1) Facility Is Too Far Away"
2 = "(2) I Don't Know Where To Get HIV Medical Care"
3 = "(3) Cost Of Care"
4 = "(4) Cost Of Transport"
5 = "(5) I Do Not Need It/I Feel Healthy/Not Sick"
6 = "(6) I Fear People Will Know That I Have HIV If I Go To A Clinic"
7 = "(7) Religious Reasons"
8 = "(8) I'm Taking Traditional Medicine"
9 = "(9) Do Not Trust The Staff/Quality Of Care"
10 = "(10) Covid-19 Shutdown"
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
value hivselftsta_ugf
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
value hivtstlocation_ugf
1 = "(1) VCT Facility"
2 = "(2) Mobile VCT"
3 = "(3) At Home"
4 = "(4) Health Clinic/Facility"
5 = "(5) Hospital Outpatient Clinic"
7 = "(7) STI Clinic"
8 = "(8) Hospital Inpatient Wards"
9 = "(9) Blood Donating Center"
10 = "(10) ANC Clinic"
11 = "(11) VMMC Clinic"
12 = "(12) Community (KP Drop-In Center)"
13 = "(13) Integrated Outreach"
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
8 = "(8) Mandated By Work Or Health Care Provider"
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
value huslivew_ugf
1 = "(1) Staying In A Different Household, Same Subcounty"
2 = "(2) Staying In A Different Sub-County Same District"
3 = "(3) Staying In A Different District"
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
value lifetimesexf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-7 = "(-7) Out of range"
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
value livedistrict_ugf
1 = "(1) Kampala"
2 = "(2) Kalangala"
5 = "(5) Rakai"
9 = "(9) Bukomansimbi"
25 = "(25) Kyankwanzi"
26 = "(26) Kassanda"
27 = "(27) Bugiri"
34 = "(34) Buyende"
35 = "(35) Luuka"
36 = "(36) Namayingo"
43 = "(43) Kibuku"
44 = "(44) Butebo"
47 = "(47) Sironko"
48 = "(48) Bududa"
49 = "(49) Bukwo"
52 = "(52) Kween"
53 = "(53) Namisindwa"
59 = "(59) Bukedea"
66 = "(66) Nakapiripirit"
69 = "(69) Amudat"
71 = "(71) Nabilatuk"
72 = "(72) Karenga"
73 = "(73) Apac"
78 = "(78) Alebtong"
79 = "(79) Kole"
81 = "(81) Kwania"
84 = "(84) Pader"
87 = "(87) Lamwo"
90 = "(90) Adjumani"
91 = "(91) Arua"
92 = "(92) Moyo"
93 = "(93) Nebbi"
94 = "(94) Yumbe"
95 = "(95) Koboko"
96 = "(96) Maracha"
98 = "(98) Pakwach"
99 = "(99) Madi Okollo"
100 = "(100) Obongi"
108 = "(108) Kikuube"
110 = "(110) Kabarole"
113 = "(113) Kyenjojo"
115 = "(115) Ntoroko"
124 = "(124) Buhweju"
125 = "(125) Mitooma"
128 = "(128) Kazo"
134 = "(134) Rubanda"
135 = "(135) Rukiga"
996 = "(996) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value liveheref
1 = "(1) Yes"
2 = "(2) No"
;
value livetimeyf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-5 = "(-5) I Have Always Lived Here"
;
value lngnat_lng_ugf
1 = "(1) English"
2 = "(2) Ateso"
3 = "(3) Karamajong"
4 = "(4) Luganda"
5 = "(5) Lugbara"
6 = "(6) Luo"
7 = "(7) Runyankole-Rukiga"
8 = "(8) Runyoro-Rutoro"
96 = "(96) Other (Specify)"
;
value lngvint_lng_ugf
1 = "(1) English"
2 = "(2) Ateso"
3 = "(3) Karamajong"
4 = "(4) Luganda"
5 = "(5) Lugbara"
6 = "(6) Luo"
7 = "(7) Runyankole-Rukiga"
8 = "(8) Runyoro-Rutoro"
96 = "(96) Other (Specify)"
;
value lngvqx_lng_ugf
1 = "(1) English"
2 = "(2) Ateso"
3 = "(3) Karamajong"
4 = "(4) Luganda"
5 = "(5) Lugbara"
6 = "(6) Luo"
7 = "(7) Runyankole-Rukiga"
8 = "(8) Runyoro-Rutoro"
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
12 = "(12) Cane/Palm/Trunks"
13 = "(13) Dung/Mud"
21 = "(21) Bamboo With Mud"
22 = "(22) Stone With Mud"
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
32 = "(32) Vinyl Or Asphalt Strip"
33 = "(33) Ceramic Tiles"
34 = "(34) Cement/Terazo"
35 = "(35) Carpet"
96 = "(96) Other (Specify)"
;
value matrooff
12 = "(12) Thatch/Palm Leaf"
13 = "(13) Dung/Mud"
21 = "(21) Corrugated Iron"
22 = "(22) Tin Cans"
31 = "(31) Asbestos Sheet"
32 = "(32) Concrete"
33 = "(33) Tiles"
96 = "(96) Other (Specify)"
;
value mcage_ugf
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
value mcstatus_ugf
1 = "(1) Yes"
2 = "(2) No"
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
-7 = "(-7) Out of range"
;
value outregiontype_ugf
1 = "(1) Kampala"
2 = "(2) Town"
3 = "(3) Rural Area"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value outregionwhrc_ugf
136 = "(136) Democratic Republic Of The Congo (DRC)"
137 = "(137) Kenya"
138 = "(138) South Sudan"
139 = "(139) Rwanda"
996 = "(996) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value outregionwhrd_ugf
1 = "(1) Kampala"
3 = "(3) Masaka"
4 = "(4) Mpigi"
5 = "(5) Rakai"
6 = "(6) Ssembabule"
7 = "(7) Wakiso"
8 = "(8) Lyantonde"
9 = "(9) Bukomansimbi"
10 = "(10) Butambala"
11 = "(11) Gomba"
12 = "(12) Kalungu"
13 = "(13) Lwengo"
14 = "(14) Kyotera"
15 = "(15) Kiboga"
16 = "(16) Luwero"
17 = "(17) Mubende"
18 = "(18) Mukono"
19 = "(19) Nakasongola"
20 = "(20) Kayunga"
21 = "(21) Mityana"
22 = "(22) Nakaseke"
23 = "(23) Buikwe"
24 = "(24) Buvuma"
25 = "(25) Kyankwanzi"
26 = "(26) Kassanda"
27 = "(27) Bugiri"
28 = "(28) Iganga"
29 = "(29) Jinja"
30 = "(30) Kamuli"
31 = "(31) Mayuge"
32 = "(32) Kaliro"
33 = "(33) Namutumba"
34 = "(34) Buyende"
35 = "(35) Luuka"
36 = "(36) Namayingo"
37 = "(37) Bugweri"
38 = "(38) Busia"
39 = "(39) Pallisa"
40 = "(40) Tororo"
41 = "(41) Budaka"
42 = "(42) Butaleja"
43 = "(43) Kibuku"
44 = "(44) Butebo"
45 = "(45) Kapchorwa"
46 = "(46) Mbale"
47 = "(47) Sironko"
48 = "(48) Bududa"
50 = "(50) Manafwa"
51 = "(51) Bulambuli"
52 = "(52) Kween"
53 = "(53) Namisindwa"
54 = "(54) Katakwi"
55 = "(55) Kumi"
56 = "(56) Soroti"
57 = "(57) Kaberamaido"
58 = "(58) Amuria"
59 = "(59) Bukedea"
60 = "(60) Ngora"
61 = "(61) Serere"
63 = "(63) Kalaki"
64 = "(64) Kotido"
65 = "(65) Moroto"
66 = "(66) Nakapiripirit"
67 = "(67) Abim"
68 = "(68) Kaabong"
69 = "(69) Amudat"
70 = "(70) Napak"
71 = "(71) Nabilatuk"
72 = "(72) Karenga"
73 = "(73) Apac"
74 = "(74) Lira"
75 = "(75) Amolatar"
76 = "(76) Dokolo"
77 = "(77) Oyam"
78 = "(78) Alebtong"
79 = "(79) Kole"
81 = "(81) Kwania"
82 = "(82) Gulu"
83 = "(83) Kitgum"
84 = "(84) Pader"
85 = "(85) Amuru"
86 = "(86) Agago"
87 = "(87) Lamwo"
88 = "(88) Nwoya"
89 = "(89) Omoro"
90 = "(90) Adjumani"
91 = "(91) Arua"
92 = "(92) Moyo"
93 = "(93) Nebbi"
94 = "(94) Yumbe"
95 = "(95) Koboko"
96 = "(96) Maracha"
97 = "(97) Zombo"
98 = "(98) Pakwach"
99 = "(99) Madi Okollo"
101 = "(101) Hoima"
102 = "(102) Kibaale"
103 = "(103) Masindi"
105 = "(105) Kiryandongo"
109 = "(109) Bundibugyo"
110 = "(110) Kabarole"
111 = "(111) Kasese"
112 = "(112) Kamwenge"
113 = "(113) Kyenjojo"
114 = "(114) Kyegegwa"
115 = "(115) Ntoroko"
116 = "(116) Bunyangabu"
118 = "(118) Bushenyi"
119 = "(119) Mbarara"
120 = "(120) Ntungamo"
122 = "(122) Isingiro"
123 = "(123) Kiruhura"
124 = "(124) Buhweju"
125 = "(125) Mitooma"
126 = "(126) Rubirizi"
127 = "(127) Sheema"
128 = "(128) Kazo"
129 = "(129) Rwampara"
130 = "(130) Kabale"
131 = "(131) Kisoro"
132 = "(132) Rukungiri"
133 = "(133) Kanungu"
134 = "(134) Rubanda"
135 = "(135) Rukiga"
996 = "(996) Other (Specify)"
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
value ownhorsenumf
-9 = "(-9) Refused"
-7 = "(-7) Own But Not Sure How Many"
;
value part12monumf
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
-7 = "(-7) Out of range"
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
3 = "(3) Partner, Not Living With Respondent"
4 = "(4) Ex-Spouse/Ex-Partner"
5 = "(5) Friend/Acquaintance"
8 = "(8) Stranger"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value partrelation2f
1 = "(1) Husband/Wife"
2 = "(2) Live-In Partner"
3 = "(3) Partner, Not Living With Respondent"
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
3 = "(3) Partner, Not Living With Respondent"
4 = "(4) Ex-Spouse/Ex-Partner"
5 = "(5) Friend/Acquaintance"
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
-7 = "(-7) Response inconsistent"
;
value pregncr_ugf
1 = "(1) Clinic Was Too Far Away"
8 = "(8) Used Traditional Birth Attendant/Healer"
96 = "(96) Other (Specify)"
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
value reasonaway_ugf
1 = "(1) Work"
2 = "(2) School/University"
3 = "(3) Family/Marriage"
4 = "(4) Access Health Or Other Services"
5 = "(5) Conflict Or Natural Disaster (Floods, Drought, Landslide)"
6 = "(6) Covid-19 Shutdown"
51 = "(51) Holiday/Social visit/Event"
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
1 = "(1) Central 1: South Buganda"
2 = "(2) Central 2: North Buganda"
3 = "(3) East Central"
4 = "(4) Kampala"
5 = "(5) Mid Eastern"
6 = "(6) Mid North"
7 = "(7) Mid Western"
8 = "(8) Northeast: Karamoja"
9 = "(9) Northeast: Teso"
10 = "(10) South Western"
11 = "(11) West Nile"
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
value religion_ugf
1 = "(1) Catholic"
2 = "(2) Anglican/Protestant"
3 = "(3) SDA"
4 = "(4) Orthodox"
5 = "(5) Pentecostal"
6 = "(6) Other Christian"
7 = "(7) Muslim"
11 = "(11) None"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value resultndtf
1 = "(1) Household Not Available At All Visit Attempts"
2 = "(2) Refused"
3 = "(3) Dwelling Vacant Or Address Not A Dwelling"
4 = "(4) Dwelling Destroyed"
5 = "(5) Dwelling Not Found"
6 = "(6) Household Absent For Extended Period Of Time"
96 = "(96) Other"
;
value schcom_ugf
1 = "(1) Primary 1"
2 = "(2) Primary 2"
3 = "(3) Primary 3"
4 = "(4) Primary 4"
5 = "(5) Primary 5"
6 = "(6) Primary 6"
7 = "(7) Primary 7"
9 = "(9) Secondary 1"
10 = "(10) Secondary 2"
11 = "(11) Secondary 3"
12 = "(12) Secondary 4"
13 = "(13) Secondary 5"
14 = "(14) Secondary 6"
15 = "(15) Tertiary"
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
value tbclinvisit_ugf
2 = "(2) No"
11 = "(11) Yes, Visited A TB Clinic"
12 = "(12) Yes, Visited A Non-TB Clinic"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value tbdiagn_ugf
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
2 = "(2) Observations to be excluded in the 90 90 90 analysis using ARV data."
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
2 = "(2) Observations to be excluded in the 90 90 90 analysis using viral load data."
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
3 = "(3) Recoded as not VLS"
99 = "(99) Incomplete Tri90 information"
;
value tri90vlvlsf
1 = "(1) VLS"
2 = "(2) Not VLS"
3 = "(3) Recoded as not VLS"
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
value whereout_ugf
1 = "(1) Another Area In This District"
2 = "(2) Another District In Uganda"
3 = "(3) Another Country"
96 = "(96) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value whereoutc_ugf
136 = "(136) Democratic Republic Of The Congo (DRC)"
137 = "(137) Kenya"
138 = "(138) South Sudan"
996 = "(996) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value whereoutd_ugf
1 = "(1) Kampala"
3 = "(3) Masaka"
4 = "(4) Mpigi"
6 = "(6) Ssembabule"
7 = "(7) Wakiso"
15 = "(15) Kiboga"
16 = "(16) Luwero"
17 = "(17) Mubende"
18 = "(18) Mukono"
20 = "(20) Kayunga"
21 = "(21) Mityana"
23 = "(23) Buikwe"
28 = "(28) Iganga"
29 = "(29) Jinja"
30 = "(30) Kamuli"
38 = "(38) Busia"
40 = "(40) Tororo"
46 = "(46) Mbale"
55 = "(55) Kumi"
56 = "(56) Soroti"
58 = "(58) Amuria"
61 = "(61) Serere"
65 = "(65) Moroto"
73 = "(73) Apac"
74 = "(74) Lira"
82 = "(82) Gulu"
88 = "(88) Nwoya"
91 = "(91) Arua"
96 = "(96) Maracha"
99 = "(99) Madi Okollo"
101 = "(101) Hoima"
102 = "(102) Kibaale"
103 = "(103) Masindi"
105 = "(105) Kiryandongo"
110 = "(110) Kabarole"
111 = "(111) Kasese"
117 = "(117) Kitagwenda"
118 = "(118) Bushenyi"
119 = "(119) Mbarara"
120 = "(120) Ntungamo"
122 = "(122) Isingiro"
123 = "(123) Kiruhura"
126 = "(126) Rubirizi"
130 = "(130) Kabale"
132 = "(132) Rukungiri"
996 = "(996) Other (Specify)"
-8 = "(-8) Don't Know"
-9 = "(-9) Refused"
;
value wifewhere_ugf
1 = "(1) Staying In A Different Household, Same Subcounty"
2 = "(2) Staying In A Different Sub-County Same District"
3 = "(3) Staying In A Different District"
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
value workind_ugf
1 = "(1) Mining"
2 = "(2) Agriculture/Farming"
3 = "(3) Transport"
4 = "(4) Construction"
5 = "(5) Uniformed Personnel"
6 = "(6) Informal Trade"
7 = "(7) Garment Industries"
8 = "(8) Housekeeper"
10 = "(10) Student"
11 = "(11) Clerical"
12 = "(12) Sales And Services"
51 = "(51) Office/Professional"
52 = "(52) Retail/Restaurant"
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
1 = "(1) less than 1 year"
2 = "(2) 1 to less than 5 years"
3 = "(3) 5 to less than 10 years"
4 = "(4) 10 years or more"
;
Run;
