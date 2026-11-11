# V2 verification pass: Area D (feedback and motor learning) and Area E (personalisation and grouping)

Checked 2026-11-07. This is a verification pass on `D_feedback_motor_learning.md` and `E_personalisation_grouping.md`, not new research. The original notes were not edited.

**Method.**
- Bibliographic data came from the Crossref REST API (`api.crossref.org/works/<DOI>` or a `query.bibliographic` search).
- Citation counts:
  - "Crossref cited-by, 2026-11-07" is Crossref `is-referenced-by-count`.
  - "S2, 2026-11-07" is Semantic Scholar `citationCount`, taken from one batch POST of 82 IDs. It returned HTTP 200 on the 5th attempt after four 429s, and 81 of 82 IDs resolved.
  - One separate S2 call, for St. Germain 2023, succeeded on its 6th attempt. A second S2 batch for abstracts failed six times with 429, so I didn't use it.
- Numbers in abstracts were checked against PubMed records. I fetched 42 abstracts in one eutils `efetch` call.
- Some abstracts came from Crossref records instead, including PsyArXiv preprints that Crossref links to the journal version. Five numbers were checked in PMC or Frontiers full text: Bull 2020, Phillips 2017, Hunter 2009, and Chromik 2022 (which holds the 72-99% figure).
- Hosts that failed this session:
  - eur-lex.europa.eu: curl got HTTP 202 with an empty body (a bot challenge, which I did not try to get around), and WebFetch got DNS "host not allowed".
  - ico.org.uk returned 403, and edpb.europa.eu did not connect.
  - dl.acm.org and academic.oup.com were not tried, since they are outside the allowed list.
- Because of those failures, all EU legal wording below remains **STILL UNVERIFIED**. To finish it, eur-lex.europa.eu must be reachable in the session's network settings.
- Counts are never estimated. "n/a" means no record was found.

Design codes: SR = systematic review; MA = meta-analysis; RCT = randomised trial; NR = narrative review; Exp = experiment; Qual = qualitative; Sys+US = system and user study.

---

## 1. Citation table

### 1a. Area D (feedback, motor learning, modality, latency, accessibility)

| Short ref | DOI | Title / venue / year verified? | Design | Crossref cited-by (2026-11-07) | S2 (2026-11-07) | File |
|---|---|---|---|---|---|---|
| Salmoni, Schmidt & Walter 1984 | 10.1037/0033-2909.95.3.355 | Yes: Psychol Bull 95(3):355-386 | NR | 1099 | 1510 | D |
| Winstein & Schmidt 1990 | 10.1037/0278-7393.16.4.677 | Yes: "Reduced frequency of knowledge of results enhances motor skill learning", J Exp Psychol Learn Mem Cogn 16(4):677-691 | Exp | 410 | 754 | D |
| Sherwood 1988 | 10.2466/pms.1988.66.2.535 | Yes: "Effect of Bandwidth Knowledge of Results on Movement Consistency", Percept Mot Skills 66(2):535-542 | Exp | 103 | 164 | D |
| Lee & Carnahan 1990 | 10.1080/14640749008401249 | Yes: "Bandwidth Knowledge of Results and Motor Learning: More than Just a Relative Frequency Effect", Q J Exp Psychol A 42(4):777-789 | Exp | 61 | 105 | D |
| McKay et al. 2022 (PSE) | 10.1016/j.psychsport.2022.102165 | Yes: Psychol Sport Exerc 61:102165, 2022. Preprint DOI 10.31234/osf.io/v2cp7 (Crossref "is-preprint-of" this DOI) | MA | 32 | 30 | D |
| Marschall, Bund & Wiemeyer 2007 | none found | STILL UNVERIFIED: no Crossref record (E-Journal Bewegung und Training) | MA | n/a | n/a | D |
| Marco-Ahulló et al. 2024 (Sensors, "PMC10933749") | 10.3390/s24051404 | Yes: "Effect of Reduced Feedback Frequencies on Motor Learning in a Postural Control Task in Young Adults", Sensors 24(5):1404 | Exp | 16 | 16 | D |
| Weakley et al. 2023 | 10.1007/s40279-023-01877-2 | Yes: Sports Med 53(9):1789-1803 | SR/MA | 83 | 84 | D |
| Weakley et al. 2019 (JSCR) | 10.1519/JSC.0000000000002133 | Yes: J Strength Cond Res 33(9):2420-2425 | Exp | 89 | 115 | D |
| Sigrist et al. 2013 | 10.3758/s13423-012-0333-8 | Yes: Psychon Bull Rev 20(1):21-53 (online Nov 2012) | NR | 1314 | 1494 | D |
| Sigrist et al. 2015 | 10.1007/s00221-014-4167-7 | Yes: Exp Brain Res 233(3):909-925 (online Dec 2014) | Exp | 145 | 6 (S2 record looks wrong) | D |
| Sattelmayer et al. 2016 | 10.1186/s12909-016-0538-z | Yes: BMC Med Educ 16, 2016 | SR/MA | 48 | 57 | D |
| Moinuddin et al. 2021 (Cureus, "PMC8681883") | 10.7759/cureus.19695 | Yes: "The Role of Augmented Feedback on Motor Learning: A Systematic Review", Cureus 2021 | SR | 47 | 70 | D |
| McKay, Yantha et al. 2022 (Meta-Psychology) | 10.15626/MP.2021.2803 | Yes: Meta-Psychology vol. 6, 2022 | MA | 33 | not returned (null) | D |
| St. Germain et al. 2023 | 10.3758/s13423-022-02170-5 | Yes: Psychon Bull Rev 30(2):621-633 (online Sep 2022). **DOI added** (the notes had none) | Exp (2 experiments) | 19 | 22 | D |
| Wulf 2013 | 10.1080/1750984X.2012.723728 | Yes: Int Rev Sport Exerc Psychol 6(1):77-104 | NR | 1044 | 1177 | D |
| Chua et al. 2021 | 10.1037/bul0000335 | Yes: Psychol Bull 147(6):618-645 | SR/MA | 190 | 194 | D |
| McKay et al. 2024 | 10.1037/bul0000451 | Yes: Psychol Bull 150(11):1347-1362 | robust Bayesian MA | 28 | 27 | D |
| Grgic, Mikulic & Mikulic 2021 | 10.3390/sports9110153 | Yes: Sports 9(11):153 | MA | 23 | 28 | D |
| Grgic & Mikulic 2022 | 10.3390/ijerph19010089 | **Corrected/added venue:** Int J Environ Res Public Health 19(1):89 (online 22 Dec 2021) | MA | 34 | 28 | D |
| Schoenfeld et al. 2018 | 10.1080/17461391.2018.1447020 | Yes: Eur J Sport Sci 18(5):705-712 | RCT | 40 | 55 | D |
| Wulf & Lewthwaite 2016 (OPTIMAL) | 10.3758/s13423-015-0999-9 | Yes: Psychon Bull Rev 23(5):1382-1414 | theory/NR | 1107 | 62 (S2 record looks wrong) | D |
| McKay, Bacelar et al. (IRSEP) | 10.1080/1750984X.2023.2207255 | **Corrected title:** "The combination of reporting bias and underpowered study designs has substantially exaggerated the motor learning benefits of self-controlled practice and enhanced expectancies: a meta-analysis", IRSEP 18(1):242-262 (online 4 May 2023) | Bayesian re-analysis of 2 MAs | 39 | 38 | D |
| Chiviacowsky & Wulf 2007 | 10.1080/02701367.2007.10599402 | Yes: Res Q Exerc Sport 78(2):40-47 | small RCT | 199 | 286 | D |
| Schaffert et al. 2019 | 10.3389/fpsyg.2019.00244 | Yes: Front Psychol 10:244 | NR | 182 | 197 | D |
| van Breda et al. 2017 | 10.1136/bmjsem-2016-000216 | Yes: BMJ Open Sport Exerc Med 3(1):e000216 | SR | 55 | 57 | D |
| YouMove (Anderson et al.) | 10.1145/2501988.2502045 | Yes: UIST '13, pp. 311-320 | Sys+US | 308 | 359 | D |
| Kaia Motion Coach (Biebl et al. 2021) | 10.2196/26658 | **Corrected title:** "App-Based Feedback for Rehabilitation Exercise Correction in Patients With Knee or Hip Osteoarthritis: Prospective Cohort Study", J Med Internet Res 23(7):e26658 | cohort (n = 24) | 31 | 29 | D |
| OffiStretch (Adolf et al.) | 10.1007/s00371-024-03450-y | Yes: Visual Computer 41(3):1555-1571 (online May 2024) | Sys+US | 11 | 11 | D |
| BlazePose tele-exercise ("PMC11013996"; Sideridou et al.) | 10.3390/s24072037 | Identified: "Towards Automating Personal Exercise Assessment and Guidance with Affordable Mobile Technology", Sensors 24(7):2037 | feasibility | 7 | 7 | D |
| Buszard et al. 2017 | 10.3389/fpsyg.2017.01350 | Yes: Front Psychol 8:1350 | Exp (children) | 58 | 70 | D |
| Midgley, Marchant & Levy | 10.1111/cpf.12454 | **Corrected:** "...verbal encouragement during maximal exercise testing", Clin Physiol Funct Imaging 38(4):547-553 (2018 issue, online 2017) | NR | 67 | 70 | D |
| Encouragement scoping review (49 studies; Ketelhut et al.) | 10.1123/ijspp.2025-0086 | Identified: Int J Sports Physiol Perform 20(10):1319-1330, 2025 | scoping review | 1 | 1 | D |
| McCormick, Meijen & Marcora 2015 ("PMC4473096") | 10.1007/s40279-015-0319-6 | Identified: "Psychological Determinants of Whole-Body Endurance Performance", Sports Med 45(7):997-1015 | SR | 256 | 277 | D |
| van Vugt & Tillmann 2014 | 10.1371/journal.pone.0087176 | Yes: PLoS ONE 9(2):e87176 | Exp | 32 | 35 | D |
| "Front Hum Neurosci 2015" EEG (Toida, Ueno & Shimada) | 10.3389/fnhum.2015.00688 | Identified: "Neural Basis of the Time Window for Subjective Motor-Auditory Integration", vol. 9 (Crossref issued Jan 2016) | Exp (EEG) | 11 | 15 | D |
| "Front Psychol 2012" (Fujisaki) | 10.3389/fpsyg.2012.00061 | Identified: "Effects of Delayed Visual Feedback on Grooved Pegboard Test Performance" | Exp | 17 | 26 | D |
| "ACM 2024" latency JND (Schmid, Ambros, Bogon & Wimmer) | 10.1145/3678299.3678331 | **Corrected venue:** Audio Mostly 2024 (ACM), pp. 325-331, "Measuring the Just Noticeable Difference for Audio Latency" | Exp | 8 | 12 | D |
| BMC Nursing 2025 alarm fatigue (Michels et al.) | 10.1186/s12912-025-03369-2 | Yes: BMC Nurs 24:664 | scoping review | 86 | 83 | D |
| Front Digit Health 2022 (Chromik et al.) | 10.3389/fdgth.2022.843747 | Identified: "Computational approaches to alleviate alarm fatigue in intensive care medicine: A systematic literature review", 4:843747 | SR | 57 | 54 | D |
| Eyes-Free Yoga (Rector, Bennett & Kientz) | 10.1145/2513383.2513392 | Yes: ASSETS '13, pp. 1-8 | Sys+US | 108 | 135 | D |
| Eyes-Free Yoga follow-up (Rector et al.) | 10.1145/3022729 | **Now verified:** "Design and Real-World Evaluation of Eyes-Free Yoga", ACM Trans Access Comput 9(4):1-25, 2017 | lab + 8-wk deployment | 40 | 44 | D |
| Rector et al. 2015 stakeholder study | 10.1145/2700648.2809846 | **Now verified:** "Exploring the Opportunities and Challenges with Exercise Technologies for People who are Blind or Low-Vision", ASSETS '15, pp. 203-214 | Qual | 49 | 65 | D |
| PunchPulse (Kamath et al.) | 10.1145/3663547.3746365 | Yes: ASSETS '25, pp. 1-21 (arXiv 2508.02610) | co-design | 5 | 7 | D |
| HaptStarter (Shitara et al.) | 10.1016/j.ijhcs.2023.103168 | **Corrected year:** Int J Hum-Comput Stud 182:103168, Feb 2024 issue (online 2023) | Sys+US | 6 | 2 | D |
| Haptics for hearing-impaired review (Ganis et al.) | 10.3390/mti8010001 | Yes: Multimodal Technol Interact 8(1):1 (published Dec 2023) | SR | 7 | 8 | D |
| Kakebeeke et al. 2013 (also considered) | 10.3390/sports1020037 | Yes: Sports 1(2):37-54 | SR | 5 | 9 | D |
| Welsby et al. 2024 DCD feedback (also considered) | 10.3389/fped.2024.1327445 | Yes: Front Pediatr 12 | SR | 14 | 16 | D |
| UbiPhysio (also considered) | arXiv 2308.10526 | S2 lists the venue as Proc ACM IMWUT, so the notes' "not peer-reviewed" is probably wrong. DOI not checked in Crossref | Sys+US | not checked | 13 | D |
| SCAPPS/JEMS retention-timing abstract; CEUR-WS Vol-4266 workshop paper | none | Not checked (conference/workshop items, no DOI) | n/a | n/a | n/a | D |

### 1b. Area E (personalisation, grouping, fairness)

| Short ref | DOI | Title / venue / year verified? | Design | Crossref cited-by (2026-11-07) | S2 (2026-11-07) | File |
|---|---|---|---|---|---|---|
| Roberts, Nuckols & Krieger 2020 | 10.1519/JSC.0000000000003521 | Yes: J Strength Cond Res 34(5):1448-1460 | SR/MA | 223 | 197 | E |
| Refalo et al. 2025 | 10.7717/peerj.19042 | Yes: PeerJ 13:e19042 (25 Feb 2025) | SR + Bayesian MA | 42 | 37 | E |
| Jones et al. 2021 | 10.1007/s40279-020-01388-4 | Yes: Sports Med 51(3):503-517 (online Dec 2020) | SR/MA | 89 | 88 | E |
| Hunter 2014 | 10.1111/apha.12234 | Yes: Acta Physiol 210(4):768-789 | NR | 545 | 571 | E |
| Hunter 2016 | 10.1113/EP085370 | Yes: Exp Physiol 101(2):250-255 (online Nov 2015) | NR | 165 | 166 | E |
| Hunter 2009 ("PMC2909485", age) | 10.1097/JES.0b013e3181aa63e2 | Identified: "Sex differences and mechanisms of task-specific muscle fatigue", Exerc Sport Sci Rev 37(3):113-122 | NR | 202 | 249 | E |
| McNulty et al. 2020 | 10.1007/s40279-020-01319-3 | Yes: Sports Med 50(10):1813-1827 | SR/MA (incl. network MA) | 732 | 697 | E |
| Colenso-Semple et al. 2023 | 10.3389/fspor.2023.1054542 | Yes: Front Sports Act Living 5:1054542 | umbrella review | 166 | 153 | E |
| Diaz-Canestro & Montero 2019 | 10.1007/s40279-019-01180-z | Yes: Sports Med 49(12):1949-1956 | SR/MA | 69 | 66 | E |
| Senefeld et al. comment + authors' reply | 10.1007/s40279-020-01270-3; reply 10.1007/s40279-020-01271-2 | **Corrected pages:** comment 50(5):1047-1048; reply 1049-1050 (the notes gave 1049-1050 for both) | letters | 1 / 0 | 1 / not queried | E |
| Bull et al. 2020 (WHO guidelines) | 10.1136/bjsports-2020-102955 | Yes: Br J Sports Med 54(24):1451-1462 | guideline | 10568 | 10662 | E |
| ACSM 2009 position stand | 10.1249/MSS.0b013e3181915670 | Yes: Med Sci Sports Exerc 41(3):687-708 | guideline | 3388 | 4223 | E |
| ACSM 2026 position stand ("PMC12965823"; Currier et al.) | 10.1249/MSS.0000000000003897 | Identified: "ACSM Position Stand. Resistance Training Prescription for Muscle Function, Hypertrophy, and Physical Performance in Healthy Adults: An Overview of Reviews", MSSE 58(4):851-872, 2026 | overview of 137 SRs | 92 | 68 | E |
| Phillips et al. 2017 | 10.1172/jci.insight.95581 | Yes: JCI Insight 2(17):e95581 | non-randomised 3-cohort training study | 86 | 86 | E |
| Ross et al. 2019 | 10.1136/bjsports-2018-100328 | Yes: Br J Sports Med 53(18):1141-1153 | consensus statement | 271 | 254 | E |
| Noar, Benac & Harris 2007 | 10.1037/0033-2909.133.4.673 | Yes: Psychol Bull 133(4):673-693 | MA | 1664 | 2255 | E |
| "Later review" PMC4578294 (Jensen et al. 2012) | 10.1111/j.1460-2466.2012.01668.x | **Corrected:** a primary mediation analysis of a breast-cancer screening intervention, not a review. "Why are Tailored Messages More Effective?...", J Commun 62(5):851-868 | RCT secondary analysis | 143 | 167 | E |
| Lustria et al. 2013 | 10.1080/10810730.2013.768727 | Yes: J Health Commun 18(9):1039-1069 | MA | 638 | 690 | E |
| Ekkekakis 2009 "Let them roam free?" | 10.2165/11315210-000000000-00000 | Yes: Sports Med 39(10):857-888. **DOI added** | NR | 220 | 182 | E |
| Ekkekakis, Parfitt & Petruzzello 2011 | 10.2165/11590680-000000000-00000 | Yes: Sports Med 41(8):641-671 | NR | 1026 | 1210 | E |
| Oliveira, Deslandes & Santos 2015 | 10.3389/fpsyg.2015.01105 | Yes: Front Psychol 6:1105 | MA (10 studies) | 60 | 67 | E |
| Andrade, Bastos & Teixeira 2024 | 10.6018/cpd.569371 | Yes: Cuad Psicol Deporte 24(1):119-153 | SR | 6 | 6 | E |
| De Croon et al. 2021 | 10.2196/18035 | Yes: J Med Internet Res 23(6):e18035 | SR | 131 | 126 | E |
| Hors-Fraile et al. 2018 | 10.1016/j.ijmedinf.2017.12.018 | Yes: Int J Med Inform 114:143-155. PubMed types it as a scoping review | scoping review | 73 | 76 | E |
| Ghanvatkar et al. 2019 | 10.2196/11098 | Yes: JMIR mHealth uHealth 7(1):e11098 | scoping review | 105 | 105 | E |
| Brons et al. 2024 | 10.2196/47774 | Yes: J Med Internet Res 26:e47774 | scoping review | 20 | 21 | E |
| JMIR Human Factors 2024 (Gabarron et al.) | 10.2196/55964 | **Now verified:** "Human Factors in AI-Driven Digital Solutions for Increasing Physical Activity: Scoping Review", JMIR Hum Factors 11:e55964 | scoping review | 39 | 34 | E |
| Galesic & Bosnjak 2009 | 10.1093/poq/nfp031 | Yes: Public Opin Q 73(2):349-360 | randomised experiment | 974 | 1278 | E |
| Obermeyer et al. 2019 | 10.1126/science.aax2342 | Yes: Science 366(6464):447-453 | empirical | 6676 | 6577 | E |
| Wilcox et al. CHI 2023 | 10.1145/3544548.3581040 | **Corrected authors:** Wilcox, **Shelby**, Veeraraghavan, Haimson, Cruz Erickson, Turken, Gulotta (the notes left out Renee Shelby). CHI '23, pp. 1-17 | Qual (diary) | 34 | 43 | E |
| Cifor & Garcia | 10.1145/3364685 | **Venue confirmed:** ACM Transactions on Social Computing 2(4):1-22 (Crossref issued 2019-12-31) | duoethnography | 37 | 28 | E |
| "This Whole Thing Smacks of Gender" (Albert & Delano) | 10.1145/3442188.3445898 | **Corrected:** peer-reviewed at ACM FAccT '21, pp. 342-352 (the notes said "preprint") | critical analysis | 8 | 12 | E |
| Polito et al. 2021 | 10.1080/02640414.2021.1924978 | Yes: "Moderators of strength gains and hypertrophy in resistance training: A systematic review and meta-analysis", J Sports Sci 39(19):2189-2198 | SR/MA | 13 | 15 | E |
| Said 2025 | arXiv 2508.07980 | S2 lists the venue as RecSoGood@RecSys 2025 (a workshop), so it is a workshop paper, not only a preprint | position paper | not checked | 1 | E |
| imec explanation-modality study; HealthRecSys 2017 (CEUR Vol-1953); Survey Research Methods length study | none found | STILL UNVERIFIED: no Crossref match (imec); no DOI (CEUR); SRM item not resolved | n/a | n/a | n/a | E |

Notes on counts: Crossref and S2 usually agree to within about ±20%. Three S2 counts are far below Crossref: Wulf & Lewthwaite 2016 (62 vs 1107), Sigrist 2015 (6 vs 145) and HaptStarter (2 vs 6). These look like S2 record problems, so prefer Crossref for those. S2 returned null for the Meta-Psychology DOI.

---

## 2. Claim checks

### 2a. Area D

| Claim (notes' wording, brief) | File | Verdict | Primary source |
|---|---|---|---|
| McKay 2022 PSE: "no significant effect of reduced feedback frequency at any time point"; "pooled effect sizes and k were not retrievable" | D | **CONFIRMED.** Added detail: 61 papers, k = 75, N = 2,228. There was no significant change from acquisition or immediate retention to delayed retention, and z-curve analysis suggested the studies were "severely underpowered". This abstract is from the preprint, which Crossref links to the PSE article | https://api.crossref.org/works/10.31234/osf.io/v2cp7 |
| Self-controlled MA: naive g = .44 (k = 52) falls to g = .107 after bias correction; only published studies showed a benefit; p-curve lacked evidential value | D | **CONFIRMED.** Added: N = 2,061; naive 95% CI [.31, .56]; corrected 95% CI [.047, .18]; conclusion "small and not currently distinguishable from zero" | https://api.crossref.org/works/10.15626/MP.2021.2803 |
| St. Germain et al. 2023, N = 228; no self-controlled advantage; choice did not raise autonomy, competence or intrinsic motivation; PB&R 30(2):621-633 | D | **CONFIRMED** (DOI 10.3758/s13423-022-02170-5) | https://pubmed.ncbi.nlm.nih.gov/36163607/ |
| Weakley 2023: 20 studies; velocity about 8.4%, g = 0.63 (0.36-0.90); verbal 0.47 vs visual 1.11; feedback after every rep works best; chronic jump g = 0.39 (CI crosses 0), sprint 0.47 | D | **CONFIRMED** on every number | https://pubmed.ncbi.nlm.nih.gov/37410360/ |
| Weakley 2023: "no significant moderation by load, upper vs lower body, mean vs peak velocity, single vs multiple sets" | D | **STILL UNVERIFIED.** The abstract doesn't mention these moderators, and I didn't check the PMC full text (PMC10432365) | https://pubmed.ncbi.nlm.nih.gov/37410360/ |
| Chua 2021: performance g = 0.264 (73 studies, 1,824 participants); retention 0.583 and transfer 0.584 (40 studies, 1,274 participants); no moderation by age, health or skill; EMG analysis of 12 studies | D | **CONFIRMED.** Added: EMG g = 0.833 (12 studies, 216 participants); distal vs proximal external focus g = 0.224 | https://pubmed.ncbi.nlm.nih.gov/34843301/ |
| McKay 2024: bias-adjusted g = 0.01 / 0.15 / 0.09 / 0.06 / -0.01; BF01 from 1.3 to 5.75; clear heterogeneity | D | **CONFIRMED.** It also notes that "seven previous meta-studies" had reported external-focus superiority | https://pubmed.ncbi.nlm.nih.gov/39480294/ |
| Grgic 2021: "Acute (10 studies): SMD 0.34 (0.22-0.46)"; long-term 0.32 (-0.08 to 0.73); lower body 0.47 (0.07-0.87) | D | **CORRECTED (minor).** All numbers are right, but the 10 studies are the whole review, not the acute analysis alone | https://pubmed.ncbi.nlm.nih.gov/34822352/ |
| Grgic & Mikulic 2022: external focus enhanced muscular endurance; "effect sizes not retrieved" | D | **CONFIRMED, gap closed.** External vs internal d = 0.58 (0.34-0.82; 7 comparisons); external vs control d = 0.42 (0.08-0.76); internal vs control d = -0.19 (-0.45 to 0.07, not significant). Venue is IJERPH | https://pubmed.ncbi.nlm.nih.gov/35010348/ |
| Schoenfeld 2018: n = 30 untrained men (15 per group); 8 weeks; elbow-flexor thickness +12.4% vs +6.9%; strength not significant | D | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/29533715/ |
| McKay et al. IRSEP: Bayesian re-analysis of the enhanced-expectancies and autonomy-support (self-controlled) meta-analyses; true effects "small, uncertain, and potentially null"; average power 6% (5-13%) | D | **CONFIRMED.** The figures are from the preprint abstract; the journal abstract wasn't retrievable. Correct the title in the notes (see table) | https://api.crossref.org/works/10.31234/osf.io/3nhtc |
| Sigrist 2013: bibliographic details | D | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/23132605/ |
| Sigrist 2013 quote: concurrent feedback "can enhance performance in the acquisition phase, but the performance gains are lost in retention tests" | D | **STILL UNVERIFIED.** The quote isn't in the abstract, and I couldn't reach the full text | https://pubmed.ncbi.nlm.nih.gov/23132605/ |
| Schaffert 2019: evidence of "feasibility and effectiveness" of auditory information | D | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/30809175/ |
| Vibrotactile review 2017: no evidence that adding tactile feedback helps acquire new skills | D | **CONFIRMED.** It also says "None of the studies show a significant learning effect" | https://pubmed.ncbi.nlm.nih.gov/28761708/ |
| YouMove: UIST 2013, DOI 10.1145/2501988.2502045 | D | **CONFIRMED** | https://api.crossref.org/works/10.1145/2501988.2502045 |
| YouMove: improved learning and short-term retention "by a factor of 2" | D | **STILL UNVERIFIED.** Crossref has no abstract, and the ACM DL and Autodesk pages weren't reachable | n/a |
| Action-sound latency: about 180 ms (SD 104) for non-musicians vs about 102 ms for musicians; "find the exact paper" | D | **CONFIRMED.** The paper is van Vugt & Tillmann 2014, PLoS ONE 9(2):e87176, "Thresholds of auditory-motor coupling measured with a simple task in musicians and non-musicians: was the sound simultaneous to the key press?" Thresholds are 180 ± 104 ms vs 102 ± 65 ms (pianists and brass players pooled) for a keystroke followed by a woodblock sound | https://pubmed.ncbi.nlm.nih.gov/24498299/ |
| EEG study: 50% detection point around 200 ms | D | **STILL UNVERIFIED** (number not checked). The paper is identified as Toida, Ueno & Shimada, Front Hum Neurosci 9:688 | https://api.crossref.org/works/10.3389/fnhum.2015.00688 |
| "ACM 2024" JND: 49 / 27 / 77 ms | D | **STILL UNVERIFIED** (no abstract available). Venue corrected to Audio Mostly 2024 | https://api.crossref.org/works/10.1145/3678299.3678331 |
| Buszard 2017: children with lower working memory learned basketball shooting worse under repeated explicit instructions | D | **CONFIRMED.** Details: 90 children aged 8-10 were screened; 24 low-WM and 24 high-WM children were tested; five explicit instructions before each 20-shot block; 240 trials; 1-week retention. The low-WM group got worse | https://pubmed.ncbi.nlm.nih.gov/28878701/ |
| Alarm-fatigue review: "72% to 99% of patient-monitoring alarms are technically false or clinically non-actionable" | D | **CORRECTED (attribution).** The sentence is in the introduction of Chromik et al. 2022, which cites Sendelbach & Funk 2013 (AACN Adv Crit Care 24:378-86, DOI 10.4037/NCI.0b013e3182a903f9). It is not a finding of the review. The review itself covered 69 publications on IT approaches and found "strong evidence that alarm fatigue can be alleviated by IT-based solutions". Cite Sendelbach & Funk for the 72-99% figure | https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2022.843747/full ; https://pubmed.ncbi.nlm.nih.gov/36052315/ |
| BMC Nursing 2025 quote: alarm fatigue is "a form of alarm desensitization, caused by factors such as high number of false alarms" | D | **CORRECTED (wording).** The abstract (32 publications; Michels et al.) says repeated exposure to "frequent or non-actionable alarms leads to sensory overload, emotional strain, and a gradual desensitization or reduced responsiveness". The notes' quote may come from the full text but is not confirmed | https://pubmed.ncbi.nlm.nih.gov/40542361/ |
| Eyes-Free Yoga (ASSETS 2013): 16 participants | D | **CONFIRMED** through the 2017 journal abstract ("a controlled study with 16 people who are blind or low vision") | https://api.crossref.org/works/10.1145/3022729 |
| Eyes-Free Yoga: 12 blind and 4 low vision; ages 13-60; 13 of 16 would recommend it | D | **STILL UNVERIFIED** (ACM DL unreachable; no abstract in Crossref) | n/a |
| Eyes-Free Yoga follow-up: 8-week home deployment, about 17 hours over 24 days; participants preferred personalised feedback | D | **CONFIRMED and CORRECTED.** It is now verified at its primary source (TACCESS 9(4), 2017). The deployment had only **n = 4**: "Average hours = 17; Average days of practice = 24" | https://api.crossref.org/works/10.1145/3022729 |
| Salmoni 1984; Winstein & Schmidt 1990; Sherwood 1988; Lee & Carnahan 1990 (bibliographic) | D | **CONFIRMED** (see table). The notes didn't retrieve these papers; their findings are in section 3 | Crossref links in table |
| Chiviacowsky & Wulf 2007: beanbag throws with the non-dominant arm; feedback on 3 of every 6 trials; the "best trials" group learned better at delayed retention | D | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/17479573/ |
| Kaia JMIR 2021: "agreement statistics ... not verified" | D | **CONFIRMED, gap closed.** n = 24 osteoarthritis patients, 6 exercises. Percent agreement was 0.828 for the app vs physiotherapists and 0.833 between the two physiotherapists, so the app was non-inferior. Author affiliations still not checked | https://pubmed.ncbi.nlm.nih.gov/34255677/ |
| Midgley: the one RCT found encouragement every 20 s helped while every 60 s or 180 s did not | D | **CONFIRMED.** The venue is Clin Physiol Funct Imaging 2018 | https://pubmed.ncbi.nlm.nih.gov/28737294/ |
| Scoping review of 49 studies found verbal encouragement, especially frequent and individualised, generally improved performance | D | **CORRECTED (scope).** The quote is right, but the 49 studies covered all encouragement strategies: music 41%, self-talk 21%, attentional focus 16%, **verbal encouragement only 12%**, competition 10% (Ketelhut et al., IJSPP 2025) | https://pubmed.ncbi.nlm.nih.gov/40858277/ |
| Sensors 2024: 67% feedback frequency beat 100%, lower frequencies and none | D | **CONFIRMED.** Groups got 0/33/67/100%; only the 67% group improved at post-test and retention; there was no difference on the transfer task | https://api.crossref.org/works/10.3390/s24051404 |

### 2b. Area E

| Claim (notes' wording, brief) | File | Verdict | Primary source |
|---|---|---|---|
| Roberts 2020: hypertrophy ES 0.07 ± 0.06, P = 0.31 (12 outcomes, 10 studies); upper-body strength ES -0.60 ± 0.16, P = 0.002 (19 outcomes, 17 studies); lower body -0.21, P = 0.20 | E | **CONFIRMED** exactly. The protocol was PROSPERO-registered and the population is described as "young to middle-aged" | https://pubmed.ncbi.nlm.nih.gov/32218059/ |
| Refalo 2025: 2,720 screened, 29 studies, ages 18-45; absolute SMD 0.19 (HDI 0.11-0.28); relative gains similar; upper-body absolute favoured males; training experience did not matter; type II fibres similar | E | **CONFIRMED.** Added: relative change 0.69% (HDI -1.50 to 2.88%). **Correction by omission:** type I fibre hypertrophy *slightly favoured males* | https://pubmed.ncbi.nlm.nih.gov/40028215/ |
| Jones 2021: 30 studies, 41 groups, 1,410 participants (651 M, 759 F); quality 14.7/29; men gained more absolute strength and size; women more relative lower-body strength; upper-body relative p = 0.08 | E | **CONFIRMED.** Added: relative lower-body g = -0.21 (-0.33 to -0.10). **Gap closed:** "older adults" means **older than 50 years** | https://pubmed.ncbi.nlm.nih.gov/33332016/ |
| Jones 2021: men may respond more to intensity, women to volume | E | **STILL UNVERIFIED** (not in the abstract; full text not read) | https://pubmed.ncbi.nlm.nih.gov/33332016/ |
| McNulty 2020: 78 studies, 51 in the pairwise MA; performance trivially reduced in the early follicular phase; recommends a personalised approach | E | **CONFIRMED.** Added: ES0.5 = -0.06 (CrI -0.16 to 0.04); evidence quality rated "low" | https://pubmed.ncbi.nlm.nih.gov/32661839/ |
| Colenso-Semple 2023 umbrella review: "premature" to conclude hormone fluctuations matter | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/37033884/ |
| Diaz-Canestro & Montero 2019: 8 studies, 175 people (90 M, 85 F); +191 ml/min (99-283); +1.95 ml/kg/min (0.76-3.15); I² = 0% | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/31494865/ |
| Phillips 2017: lean mass +5.24% (young) vs 1.12% (midlife) vs 1.33% (older); n = 11/20/17; 20 weeks supervised | E | **CONFIRMED** in the full text. The authors call it a "cross-sectional intervention study" (non-randomised) | https://pmc.ncbi.nlm.nih.gov/articles/PMC5621901/ |
| Ross 2019 BJSM consensus: large interindividual differences in response, with a genetic component | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/30862704/ |
| Hunter: women less fatigable in isometric tasks at the same relative intensity; in dynamic tasks it depends on velocity and muscle group | E | **CONFIRMED** (Hunter 2014 and 2016 abstracts) | https://pubmed.ncbi.nlm.nih.gov/24433272/ ; https://pubmed.ncbi.nlm.nih.gov/26440505/ |
| Hunter: "the sex difference narrows with age (PMC2909485)" | E | **CONFIRMED.** That PMC record is Hunter 2009, ESSR. The full text says the sex difference "is lessened or disappears among older adults", and its pooled regression puts it at negligible by about age 72 | https://pmc.ncbi.nlm.nih.gov/articles/PMC2909485/ |
| Hunter: mechanism is "slower calcium handling and relaxation" | E | **STILL UNVERIFIED** in detail. The abstracts say "contractile mechanisms" but don't mention calcium | https://pubmed.ncbi.nlm.nih.gov/26440505/ |
| Ekkekakis 2009: imposed intensities reduce pleasure even when only slightly above the self-selected level | E | **CONFIRMED** (correct DOI is in the table) | https://pubmed.ncbi.nlm.nih.gov/19757863/ |
| Oliveira 2015: the affective advantage of self-selected exercise depends on imposed intensity | E | **CONFIRMED.** 10 studies; overall SMD -0.41, ranging from -0.10 (equal intensity) to -1.30 (above the ventilatory/lactate threshold) | https://pubmed.ncbi.nlm.nih.gov/26300805/ |
| Noar 2007: r = .074; 57 studies; N = 58,454; moderators include demographic vs behavioural tailoring | E | **CONFIRMED.** The *direction* of the demographic moderator is still **STILL UNVERIFIED** (the abstract lists moderators only) | https://pubmed.ncbi.nlm.nih.gov/17592961/ |
| Noar CI ".06 to .08 as reported in a later review (PMC4578294)" | E | **CORRECTED (source type).** PMC4578294 is Jensen et al. 2012 (J Commun), a mediation analysis, not a review. The CI itself was not checked | https://pmc.ncbi.nlm.nih.gov/articles/PMC4578294/ |
| Lustria 2013: d = .139 (.111-.166), 40 studies, N = 20,180; follow-up "about d = .16 (secondary source)" | E | **CONFIRMED and gap closed.** Follow-up d = .158 (95% CI .124-.192, k = 21), and the authors found no evidence of publication bias | https://pubmed.ncbi.nlm.nih.gov/23750972/ |
| De Croon 2021: 73 studies; half evaluated only the algorithm | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/34185014/ |
| Hors-Fraile 2018: 19 papers, 33 features; none had the nine behaviour-change features; tailoring principles not used | E | **CONFIRMED.** It is a scoping review (PubMed publication type) | https://pubmed.ncbi.nlm.nih.gov/29331276/ |
| Ghanvatkar 2019: 49 studies; six personalisation categories | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/30664474/ |
| Brons 2024: 40 papers, 27 projects, 4 groups; supervised learning for content; reinforcement learning mostly for feedback-message type | E | **CONFIRMED.** Also: RL mostly personalised **reminder timing** | https://pubmed.ncbi.nlm.nih.gov/39546334/ |
| JMIR Hum Factors 2024: "title and authors not verified"; recommenders most common; "very low certainty" | E | **CONFIRMED and gap closed.** Gabarron, Larbi, Rivera-Romero et al.; 15 studies, 899 participants; recommender systems in 10 of 15. Certainty was moderate for AI tools overall raising physical activity, very low for recommenders specifically | https://pubmed.ncbi.nlm.nih.gov/38959064/ |
| Galesic & Bosnjak 2009: POQ 73(2):349-360 | E | **CONFIRMED** (bibliographic) | https://api.crossref.org/works/10.1093/poq/nfp031 |
| Galesic & Bosnjak 2009: 75% started the 10-min version vs 65% the 20-min one | E | **STILL UNVERIFIED** (no abstract in Crossref; OUP not reachable) | n/a |
| Obermeyer 2019: share of Black patients flagged would rise from 17.7% to 46.5% | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/31649194/ |
| Wilcox CHI 2023: DOI and authors | E | **CORRECTED.** Add Renee Shelby as second author | https://api.crossref.org/works/10.1145/3544548.3581040 |
| Wilcox CHI 2023: 64 participants (Mexico 24, US 22, India 18) | E | **STILL UNVERIFIED** (no abstract retrieved) | n/a |
| Cifor & Garcia: venue "believed to be ACM Transactions on Social Computing" | E | **CONFIRMED.** TSC 2(4):1-22, 2019. The abstract confirms a duoethnography of the Jawbone UP3 and the "masculinist design values" argument | https://api.crossref.org/works/10.1145/3364685 |
| Bioimpedance "Smacks of Gender" paper: "treat as preprint" | E | **CORRECTED.** It is peer-reviewed, ACM FAccT 2021 (Albert & Delano) | https://api.crossref.org/works/10.1145/3442188.3445898 |
| WHO 2020: one recommendation for adults 18-64; muscle-strengthening "at moderate or greater intensity ... all major muscle groups on 2 or more days a week"; 150-300 / 75-150 min | E | **CONFIRMED** in the full text of Bull et al. The heading reads "Adults (aged 18–64 years) including those with chronic conditions and those living with disability", and the strength item is a strong recommendation. Nuance: the 18-64 recommendation explicitly *includes* people with chronic conditions or disability, so they are not a separate band for this recommendation | https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/ ; https://pubmed.ncbi.nlm.nih.gov/33239350/ |
| ACSM 2009: novice 8-12 RM; frequency 2-3 / 3-4 / 4-5 days; "contingent upon ... target goals, physical capacity, and training status" | E | **CONFIRMED** | https://pubmed.ncbi.nlm.nih.gov/19204579/ |
| "A later ACSM overview of reviews updates parts of this stand (PMC12965823)" | E | **CONFIRMED and gap closed.** It is the 2026 ACSM Position Stand (Currier et al., MSSE 58(4):851-872) and explicitly updates the 2009 stand; see section 3 | https://pubmed.ncbi.nlm.nih.gov/41843416/ |
| Senefeld et al. comment and reply "Sports Med 50:1049-1050" | E | **CORRECTED.** The comment is 50(5):1047-1048 and the reply is 1049-1050 | https://api.crossref.org/works/10.1007/s40279-020-01270-3 |
| EU Directive 2004/113/EC Art. 4(5) wording and Recital 16 examples | E | **STILL UNVERIFIED.** eur-lex.europa.eu was unreachable (HTTP 202 challenge to curl; DNS failure in WebFetch). The notes rely on a legislation.gov.uk copy, which was not re-checked | https://eur-lex.europa.eu/eli/dir/2004/113/oj/eng (not reached) |
| Test-Achats C-236/09: Art. 5(2) invalid with effect from 21 December 2012; Grand Chamber, 1 March 2011 | E | **STILL UNVERIFIED** (same EUR-Lex block) | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:62009CJ0236 (not reached) |
| GDPR Art. 22(1)-(3) wording; UK GDPR Art. 22 replaced by Arts 22A-22D | E | **STILL UNVERIFIED.** EUR-Lex was blocked, ico.org.uk returned 403 and edpb.europa.eu didn't connect | https://eur-lex.europa.eu/eli/reg/2016/679/oj (not reached) |

---

## 3. New facts that close gaps in the notes

| # | New fact | Closes gap in | Evidence label | Source |
|---|---|---|---|---|
| 1 | **Bandwidth feedback, Sherwood 1988.** Feedback was given only when movement time fell outside a 10% band. That group received feedback less often during practice, yet showed less within-subject variability at transfer than the 5%-band and every-trial groups | D Q1 gap (bandwidth papers not retrieved) | weak (single lab experiment, foundational) | https://api.crossref.org/works/10.2466/pms.1988.66.2.535 |
| 2 | **Bandwidth feedback, Lee & Carnahan 1990.** With frequency held equal through yoking, bandwidth feedback still reduced error and stabilised performance more than matched relative-frequency feedback, and gave better consistency at retention. So bandwidth is not just a lower-frequency effect | D Q1 gap | weak (single lab experiment, foundational) | https://api.crossref.org/works/10.1080/14640749008401249 |
| 3 | **McKay 2022 PSE scale.** 61 papers, k = 75, N = 2,228. Z-curve analysis suggested the included studies were "severely underpowered" | D Q1 ("pooled effect sizes and k not retrievable") | strong (MA) | https://api.crossref.org/works/10.31234/osf.io/v2cp7 |
| 4 | **Graded vs binary feedback (St. Germain 2023).** Error or graded feedback supported acquisition and learning. Binary right/wrong feedback produced *no* improvement from pre-test. For Delva, a bare "good / bad" cue is likely less useful than a graded one such as "a bit deeper" | D Q5 (positive vs corrective content) | weak (one 2-experiment lab study; N = 228 is large for the field) | https://pubmed.ncbi.nlm.nih.gov/36163607/ |
| 5 | **Attention focus and muscular endurance (Grgic & Mikulic 2022).** External vs internal d = 0.58 (0.34-0.82) across 7 comparisons; internal vs control was not significant. The result held for upper and lower body. This fits bodyweight sets to near-failure | D Q2 (effect sizes not retrieved) | strong by the notes' definition (MA), but small k = 7 and no bias correction, so read it as moderate | https://pubmed.ncbi.nlm.nih.gov/35010348/ |
| 6 | **Weakley 2023, the authors' own advice.** "high-frequency, visual feedback is consistently provided ... particularly useful during periods of low motivation" | D Q1/Q3 | strong (SR/MA) | https://pubmed.ncbi.nlm.nih.gov/37410360/ |
| 7 | **Kaia Motion Coach agreement.** App vs physiotherapists 0.828 agreement vs 0.833 between physiotherapists. n = 24 knee/hip OA patients at a university hospital, 6 exercises; no difference by age (≤70 vs >70), gender or BMI subgroup | D Q4 (agreement statistics) | weak (small cohort, industry product) | https://pubmed.ncbi.nlm.nih.gov/34255677/ |
| 8 | **Eyes-Free Yoga at home** (TACCESS 2017, now primary-verified). The 8-week deployment had n = 4 and averaged 17 hours over 24 practice days. Motivational techniques increased frequency and exercise time. Personalised posture feedback was preferred in the lab study (n = 16) | D Q6 (2017 follow-up only from a secondary summary) | weak (very small n) | https://api.crossref.org/works/10.1145/3022729 |
| 9 | **Rector et al. 2015** is identified as "Exploring the Opportunities and Challenges with Exercise Technologies for People who are Blind or Low-Vision", ASSETS '15, pp. 203-214. Its content was not verified | D Q6 gap (ACM DL details) | n/a (bibliographic only) | https://api.crossref.org/works/10.1145/2700648.2809846 |
| 10 | **Where the 72-99% alarm figure comes from.** It traces to Sendelbach & Funk 2013, AACN Adv Crit Care 24:378-86, as cited by Chromik et al. 2022. Cite that origin, not the 2022 review | D Q5 | weak (secondary citation of a clinical review; not checked at its origin) | https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2022.843747/full |
| 11 | **Verbal encouragement.** It raised time to exhaustion by 8-18% in VO2max and shuttle-run tests, but showed no gain in short tests (Wingate, 2-min walk). About one-third of participants had neutral or negative views of encouragement, so give Delva users a way to turn it off | D Q5 | weak (narrative review of small studies) | https://pubmed.ncbi.nlm.nih.gov/28737294/ |
| 12 | **Music in maximal tests (Ketelhut 2025).** Music and sound consistently improved performance in open-ended tests but were inconsistent in closed-ended ones; attentional-focus effects were inconclusive | D Q3/Q5 | weak (scoping review, mixed designs) | https://pubmed.ncbi.nlm.nih.gov/40858277/ |
| 13 | **Exact latency paper.** van Vugt & Tillmann 2014: thresholds of 180 ± 104 ms (non-musicians) vs 102 ± 65 ms (musicians). Variance was explained by sensorimotor synchronisation ability and auditory irregularity detection | D Q5 | weak-to-moderate (lab psychophysics; the notes' label stands) | https://pubmed.ncbi.nlm.nih.gov/24498299/ |
| 14 | **"Older adults" in Jones 2021** means older than 50. That overlaps Delva's 50-64 band directly | E Q1 gap ("exact age threshold not verified") | strong (SR/MA) | https://pubmed.ncbi.nlm.nih.gov/33332016/ |
| 15 | **Hunter 2009:** the sex difference in fatigability lessens or disappears in older adults; the pooled regression is negligible by about age 72 | E Q1 Item 4 (age claim had no checked source) | weak (narrative review with a pooled regression over published studies) | https://pmc.ncbi.nlm.nih.gov/articles/PMC2909485/ |
| 16 | **Refalo 2025:** type I fibre hypertrophy slightly favoured males; type II was similar | E Q1 | strong (SR + Bayesian MA) | https://pubmed.ncbi.nlm.nih.gov/40028215/ |
| 17 | **ACSM 2026 Position Stand** (Currier et al.; 137 SRs, >30,000 participants, adults ≥18) updates the 2009 stand. Strength improved with ≥2 sessions/week, full range of motion, 2-3 sets and heavier loads; hypertrophy with ≥10 sets/week. **Training to momentary muscle fatigue, set structure, time under tension and periodisation did not consistently change outcomes.** This supports "stop 1-2 reps short" rep targets and makes the 2009 stand's 17-year age a non-issue | E Q2 gap (2009 stand "partly superseded"; the 11th/12th edition Guidelines not checked) | strong (guideline, overview of reviews) | https://pubmed.ncbi.nlm.nih.gov/41843416/ |
| 18 | **WHO 2020 adult band** is "Adults (aged 18–64 years) including those with chronic conditions and those living with disability". Muscle-strengthening at moderate or greater intensity, all major muscle groups, on 2 or more days a week, is a strong recommendation | E Q2 ("full adult chapter not read") | strong (guideline, full text) | https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/ |
| 19 | **Lustria 2013 follow-up** d = .158 (k = 21), with no evidence of publication bias | E Q3 | strong (MA) | https://pubmed.ncbi.nlm.nih.gov/23750972/ |
| 20 | **Ghanvatkar 2019:** of 27 studies that evaluated physical-activity outcomes, 16 concluded that personalised interventions are more effective. User models drew on PA profile, demographics, medical data, behaviour-change-technique parameters and context | E Q3/Q4 | weak (vote count inside a scoping review) | https://pubmed.ncbi.nlm.nih.gov/30664474/ |
| 21 | **Brons 2024:** reinforcement learning was mostly used for reminder timing and feedback-message type; supervised learning for content and for the timing of feedback and goal-setting messages | E Q4 | strong for the landscape (scoping review) | https://pubmed.ncbi.nlm.nih.gov/39546334/ |
| 22 | **JMIR Hum Factors 2024 identified:** Gabarron et al., 15 studies (2015-2023), 899 participants aged about 19-84, 60.7% female, interventions of 2-26 weeks. Acceptability and satisfaction were the most-evaluated human factors | E Q4 ("title and authors not verified") | weak (scoping review; GRADE certainty low to very low) | https://pubmed.ncbi.nlm.nih.gov/38959064/ |
| 23 | **Gender-in-tracking critique is peer-reviewed at two venues:** Cifor & Garcia (ACM TSC 2019) and Albert & Delano (ACM FAccT 2021), which concerns body-composition equations that require binary sex | E Q5 | weak (critical/qualitative analyses) | https://api.crossref.org/works/10.1145/3364685 ; https://api.crossref.org/works/10.1145/3442188.3445898 |

### Still open after this pass

- **EU legal wording.** Directive 2004/113/EC Art. 4(5) and Recital 16, the Test-Achats ruling, GDPR Art. 22 and the UK GDPR Arts 22A-22D need a session where eur-lex.europa.eu (and ideally legislation.gov.uk and ico.org.uk) are reachable. The ICO returned 403 here.
- **ACM papers.** YouMove's "factor of 2", the Eyes-Free Yoga 2013 demographics and "13 of 16", Wilcox's 64 participants and country split, and the Audio Mostly 2024 JND numbers all need the ACM DL or author PDFs.
- **Other numbers not checked.** Galesic & Bosnjak's 75% vs 65%, the Weakley 2023 moderator list (PMC full text not checked), the Sigrist 2013 concurrent-feedback quote, the Jones 2021 intensity-vs-volume sub-analysis, Hunter's calcium-handling mechanism, the direction of Noar's demographic moderator, and the Toida 2015 200 ms figure.
- **Missing records.** Marschall, Bund & Wiemeyer 2007 has no DOI or Crossref record. No Crossref match was found for the imec explanation-modality study. Semantic Scholar never returned a count for the Meta-Psychology paper (null in the batch), and the follow-up batch for abstracts failed six times with 429.
