# V3: Verification pass on Area F (program design) and Area G (adherence)

Checked 2026-11-07. Scope: bibliographic checks and citation counts for every paper and guideline cited in F_program_design.md and G_adherence_behaviour.md, plus the priority claim list. The original notes files were not edited.

Method and limits (read first):
- Bibliographic data and counts come from the Crossref works API (`https://api.crossref.org/works/<DOI>`), queried 2026-11-07. Numbers in claims come from PubMed abstracts (eutils efetch) and, where named, PMC full texts (eutils efetch db=pmc).
- **Semantic Scholar: no counts obtained.** One batch request for all 98 DOIs returned HTTP 429 on all 6 attempts (about 25 s apart) on 2026-11-07. The Semantic Scholar column therefore reads "429" throughout. No count was estimated.
- Blocked or unreachable this pass: gov.uk (UK CMO), bct-taxonomy.com, LWW full texts (ACSM 2009, Ebben 2011, Garber 2011 tables), Wiley and Springer full texts. These items stay STILL UNVERIFIED below.
- Evidence labels in part 3: **strong** (guideline, or meta-analysis or network meta-analysis of trials), **weak** (single trial, observational, lab or marketing experiments, narrative review), **opinion/industry** (Delphi, practice, my inference).

---

## 1. Citation table

Columns: Crossref = "is-referenced-by-count", Crossref, 2026-11-07. S2 = Semantic Scholar, 2026-11-07 (429 = rate-limited, no count). "yes" = title, venue, year and DOI match the notes; corrections are spelled out. MA = meta-analysis; SR = systematic review; NMA = network meta-analysis.

### 1a. Area F (program design)

| Short ref | DOI | Verified title / venue / year | Design | Crossref | S2 | File |
|---|---|---|---|---|---|---|
| Currier 2026 ACSM stand | 10.1249/mss.0000000000003897 | yes. MSSE 58(4):851-872, epub 2026-03-05; open access, CC BY-NC-ND 4.0, PMC12965823 | Guideline (overview of 137 SRs) | 92 | 429 | F |
| ACSM 2009 progression models | 10.1249/MSS.0b013e3181915670 | yes. MSSE 41(3):687-708 | Guideline | 3388 | 429 | F |
| Bull 2020 WHO guidelines | 10.1136/bjsports-2020-102955 | yes, but corrected PMC ID: **PMC7719906** (the notes' PMC7719905 is Troiano et al. 2020, a surveillance paper). BJSM 54(24):1451-1462; CC BY 4.0 | Guideline | 10568 | 429 | F |
| Troiano 2020 (what PMC7719905 actually is) | 10.1136/bjsports-2020-102621 | "How can global physical activity surveillance adapt to evolving physical activity guidelines?" BJSM 2020 | Commentary | 124 | 429 | F |
| Piercy 2018 PAG (JAMA) | 10.1001/jama.2018.14854 | yes. JAMA 320(19):2020-2028; PMC9582631 | Guideline summary | 5720 | 429 | F |
| US PAG 2018 full report (HHS) | none | not checked (health.gov not on allowed list) | Guideline | n/a | n/a | F |
| Garber 2011 ACSM | 10.1249/MSS.0b013e318213fefb | yes. MSSE 43(7):1334-1359 | Guideline | 7860 | 429 | F |
| UK CMO 2019 | none | STILL UNVERIFIED (gov.uk unreachable) | Guideline | n/a | n/a | F |
| ACSM GETP 12th ed. 2025 | book | not checked (acsm.org not on allowed list) | Textbook | n/a | n/a | F |
| "IJBNPA commentary" on WHO 2020 | 10.1186/s12966-020-01048-w | corrected: authors and title missing in notes. Segar, Marques, Palmeira et al., "Everything counts in sending the right message: science-based messaging implications from the 2020 WHO guidelines...", IJBNPA 17 (2020) | Commentary | 28 | 429 | F |
| Currier 2023 NMA | 10.1136/bjsports-2023-106807 | yes. BJSM 57(18):1211-1220; CC BY-NC 4.0 | NMA of RCTs | 180 | 429 | F |
| Pelland 2026 | 10.1007/s40279-025-02344-w | yes, published: Sports Med 56(2):481-505, epub 2025-12-04 (title reads "Dose Response", "Strength Gains") | Meta-regression (67 studies) | 23 | 429 | F |
| Pelland preprint | 10.51224/srxiv.460 | SportRxiv 2024 (superseded) | Preprint | 4 | 429 | F |
| Momma 2022 | 10.1136/bjsports-2021-105061 | yes. BJSM 56(13):755-763; CC BY 4.0; PMC9209691 (no need for the third-party mirror) | MA of cohorts | 264 | 429 | F |
| PMC10199130 | 10.1016/j.jshs.2022.11.004 | identified: Burtscher, Strasser & D'Antona, "How much resistance exercise is beneficial for healthy aging and longevity?" J Sport Health Sci 2023 | Short review | 9 | 429 | F |
| Halperin 2022 | 10.1007/s40279-021-01559-x | yes. Sports Med 52(2):377-390 (epub 2021-09-20) | Scoping review + exploratory MA | 51 | 429 | F |
| Konrad 2024 | 10.1016/j.jshs.2023.06.002 | yes. JSHS 13(2):186-194; CC BY-NC-ND 4.0 | SR/MA | 104 | 429 | F |
| Bosquet 2013 | 10.1111/sms.12047 | yes. SJMSS 23(3):e140-e149 | MA | 110 | 429 | F |
| Iversen 2021 | 10.1007/s40279-021-01490-1 | yes. Sports Med 51(10):2079-2095 | Narrative review | 113 | 429 | F |
| Androulakis-Korakakis 2020 | 10.1007/s40279-019-01236-0 | yes. Sports Med 50(4):751-765 (epub 2019) | SR/MA | 88 | 429 | F |
| Androulakis-Korakakis 2021 | 10.3389/fspor.2021.713655 | yes. Front Sports Act Living 3 | Review | 14 | 429 | F |
| Schoenfeld 2017 volume | 10.1080/02640414.2016.1210197 | yes. J Sports Sci 35(11):1073-1082 (epub 2016) | MA | 570 | 429 | F |
| Schoenfeld 2016 frequency | 10.1007/s40279-016-0543-8 | yes. Sports Med 46(11):1689-1697 | MA | 257 | 429 | F |
| Schoenfeld, Grgic & Krieger 2019 | 10.1080/02640414.2018.1555906 | yes. J Sports Sci 37(11):1286-1295 | MA | 128 | 429 | F |
| Grgic 2018 frequency/strength | 10.1007/s40279-018-0872-x | yes. Sports Med 48(5):1207-1220 | SR/MA | 289 | 429 | F |
| Grgic, Schoenfeld & Latella 2019 | 10.1016/j.jsams.2018.09.223 | yes. J Sci Med Sport 22(3):361-370 | Review | 43 | 429 | F |
| Šarić 2019 (notes: 2018) | 10.1519/JSC.0000000000002909 | corrected year: JSCR 2019;33(Suppl 1):S122-S129 | RCT (n=27) | 30 | 429 | F |
| Schoenfeld 2017 load | 10.1519/JSC.0000000000002200 | yes. JSCR 31(12):3508-3523 | SR/MA | 732 | 429 | F |
| Lasevicius 2018 | 10.1080/17461391.2018.1450898 | yes. Eur J Sport Sci 18(6):772-780 | RCT, within-subject | 138 | 429 | F |
| Islam, Gibala & Little 2022 | 10.1249/JES.0000000000000275 | yes. ESSR 50(1):31-37 | Review | 174 | 429 | F |
| Jenkins 2019 stair snacks | 10.1139/apnm-2018-0675 | yes. APNM 44(6):681-684 | RCT (n=24) | 116 | 429 | F |
| Jenkins 2023 J Physiol | 10.1113/JP284985 | corrected title: "...'exercise snacks' to improve outcomes for those living with and beyond cancer", J Physiol 601(21):4691-4697 | Perspective | 18 | 429 | F |
| Kotarsky 2018 | 10.1519/JSC.0000000000002345 | yes. JSCR 32(3):651-659 | RCT (n=23) | 40 | 429 | F |
| Kikuchi & Nakazato 2017 | 10.1016/j.jesf.2017.06.003 | yes. J Exerc Sci Fit 15(1):37-42; PMC5812864 | RCT (n=18) | 47 | 429 | F |
| Calatayud 2015 | 10.1519/JSC.0000000000000589 | yes. JSCR 29(1):246-253 | RCT (n=30) | 66 | 429 | F |
| Afonso 2021 | 10.3390/healthcare9040427 | yes. Healthcare 9(4):427 | SR/MA of RCTs | 55 | 429 | F |
| Ebben 2011 | 10.1519/JSC.0b013e31820c8587 | yes. JSCR 25(10):2891-2894 | Lab study (n=23) | 45 | 429 | F |
| Steele 2017 (PMC5712461) | 10.7717/peerj.4105 | confirmed (notes had it "from recall"): Steele, Endres, Fisher et al., PeerJ 5:e4105 | Observational (n=141) | 42 | 429 | F |
| Zourdos 2016 | 10.1519/JSC.0000000000001049 | yes. JSCR 30(1):267-275 | Observational (n=29) | 348 | 429 | F |
| Helms 2016 | 10.1519/SSC.0000000000000218 | yes. Strength Cond J 38(4):42-49 | Applied review | 218 | 429 | F |
| Robertson 2003 OMNI-RES | 10.1249/01.MSS.0000048831.15016.2A | yes. MSSE 35(2):333-341 | Validation study | 647 | 429 | F |
| Fradkin 2010 | 10.1519/JSC.0b013e3181c643a0 | yes. JSCR 24(1):140-148 | SR/MA | 293 | 429 | F |
| McGowan 2015 | 10.1007/s40279-015-0376-x | yes. Sports Med 45(11):1523-1546 | Narrative review | 484 | 429 | F |
| Van Hooren & Peake 2018 | 10.1007/s40279-018-0916-2 | yes. Sports Med 48(7):1575-1595 | Narrative review | 108 | 429 | F |
| Bell 2023 deload Delphi | 10.1186/s40798-023-00633-0 | yes. Sports Med Open 9:87; PMC10511399 | Delphi | 19 | 429 | F |
| Coleman 2024 deload | 10.7717/peerj.16777 | yes. PeerJ 12:e16777; CC BY 4.0 | RCT (n=39) | 8 | 429 | F |
| Milanović 2015 | 10.1007/s40279-015-0365-0 | yes. Sports Med 45(10):1469-1481 | SR/MA | 777 | 429 | F |
| Weston 2014 | 10.1136/bjsports-2013-092576 | yes. BJSM 48(16):1227-1234 (epub 2013) | SR/MA | 1098 | 429 | F |
| Biddle & Batterham 2015 | 10.1186/s12966-015-0254-9 | yes. IJBNPA 12 | Debate | 264 | 429 | F |
| Ogasawara 2011 | 10.1111/j.1475-097X.2011.01031.x | yes. Clin Physiol Funct Imaging 31(5):399-404 | RCT (n=15) | 44 | 429 | F |
| Ogasawara 2013 | 10.1007/s00421-012-2511-9 | yes. Eur J Appl Physiol 113(4):975-985 | RCT (n=14) | 81 | 429 | F |
| Seynnes 2007 | 10.1152/japplphysiol.00789.2006 | yes. J Appl Physiol 102(1):368-373 | Single-group trial | 509 | 429 | F |
| Thomas 2018 | 10.1055/s-0044-101146 | yes. Int J Sports Med 39(4):243-254 | SR/MA | 104 | 429 | F |
| 2025 exercise-snacks MA (BJSM blog) | unknown | STILL UNVERIFIED (primary not identified via Crossref) | SR/MA | n/a | n/a | F |
| 2025 exercise-snacks scoping review (Sports Med Open, DOAJ) | unknown | STILL UNVERIFIED (not found in Crossref). Note: a related scoping review exists: Jones et al., Sports Med 2024;54(4):813-835, 10.1007/s40279-023-01983-1 (Crossref 88) | Scoping review | n/a | 429 | F |
| 2025 older-adult bodyweight MA (ScienceAlert) | unknown | STILL UNVERIFIED (primary not found) | MA | n/a | n/a | F |

### 1b. Area G (adherence and behaviour)

| Short ref | DOI | Verified title / venue / year | Design | Crossref | S2 | File |
|---|---|---|---|---|---|---|
| Pratap 2020 | 10.1038/s41746-020-0224-8 | yes. npj Digit Med 3:21; CC BY 4.0; PMC7026051 | Cross-study survival analysis | 447 | 429 | G |
| Meyerowitz-Katz 2020 | 10.2196/20283 | yes. JMIR 22(9):e20283; PMC7556375 | SR/MA | 616 | 429 | G |
| Milkman 2021 | 10.1038/s41586-021-04128-4 | yes. Nature 600(7889):478-483 (pages now confirmed); PMC8822539 | Megastudy (field RCT) | 211 | 429 | G |
| Beshears 2021 | 10.1287/mnsc.2020.3706 | yes. Manage Sci 67(7):4139-4171; PMC8734590 | Field RCT | 49 | 429 | G |
| Silverman & Barasch 2023 | 10.1093/jcr/ucac029 | yes. JCR 49(6):1095-1117 (online 2022) | 7 studies | 32 | 429 | G |
| Sharif & Shu 2017 | 10.1509/jmr.15.0231 | yes. Exact title: "The Benefits of Emergency Reserves: Greater Preference and Persistence for Goals that Have Slack with a Cost", JMR 54(3):495-509 | 6 studies | 32 | 429 | G |
| Sharif & Shu 2021 | 10.1016/j.obhdp.2019.01.004 | yes. "Nudging persistence after failure through emergency reserves", OBHDP 163:17-29 | Experiments | 21 | 429 | G |
| Dai, Milkman & Riis 2014 | 10.1287/mnsc.2014.1901 | yes. Manage Sci 60(10):2563-2582 | 3 archival field studies | 299 | 429 | G |
| Lally 2010 | 10.1002/ejsp.674 | yes. EJSP 40(6):998-1009 (online 2009) | Longitudinal observational | 1643 | 429 | G |
| Singh 2024 | 10.3390/healthcare12232488 | yes. Healthcare 12(23):2488; CC BY 4.0; PMC11641623 | SR/MA | 80 | 429 | G |
| Kaushal & Rhodes 2015 | 10.1007/s10865-015-9640-7 | yes. J Behav Med 38(4):652-663 | Prospective cohort (n=111) | 201 | 429 | G |
| Howlett 2019 | 10.1093/tbm/iby010 | yes. Transl Behav Med 9(1):147-157 | SR/MA of RCTs | 394 | 429 | G |
| Michie 2009 | 10.1037/a0016136 | yes. Health Psychol 28(6):690-701 | Meta-regression | 1883 | 429 | G |
| Laranjo 2021 | 10.1136/bjsports-2020-102892 | yes. BJSM 55(8):422-432 | SR/MA | 364 | 429 | G |
| Mazeas 2022 | 10.2196/26779 | yes. JMIR 24(1):e26779 | SR/MA of RCTs | 215 | 429 | G |
| Patel 2019 STEP UP | 10.1001/jamainternmed.2019.3505 | yes. JAMA Intern Med 179(12):1624 | RCT (n=602) | 179 | 429 | G |
| Klasnja 2019 HeartSteps | 10.1093/abm/kay067 | yes. Ann Behav Med 53(6):573-582 | Micro-randomised trial (n=44) | 240 | 429 | G |
| Hardeman 2019 | 10.1186/s12966-019-0792-7 | yes. IJBNPA 16:31 | SR | 404 | 429 | G |
| Xu & Smit 2023 | 10.1177/20552076231183543 | corrected title: "Using a complexity science approach to evaluate the effectiveness of just-in-time adaptive interventions: A meta-analysis", Digital Health 9 | MA | 14 | 429 | G |
| Eysenbach 2005 | 10.2196/jmir.7.1.e11 | yes. JMIR 7(1):e11 | Commentary | 2485 | 429 | G |
| Nahum-Shani 2018 | 10.1007/s12160-016-9830-8 | yes. Ann Behav Med 52(6):446-462 | Design framework | 2035 | 429 | G |
| Michie 2013 BCTTv1 | 10.1007/s12160-013-9486-6 | yes. Ann Behav Med 46(1):81-95 | Delphi/taxonomy | 6793 | 429 | G |
| Marques BCT Ontology | 10.12688/wellcomeopenres.19363.1 (v1), .2 (v2) | corrected: published in Wellcome Open Research (v1 2023, v2 2024; CC BY 4.0). PsyArXiv preprint 10.31234/osf.io/vxypn (7) | Ontology | 130 (v1) / 100 (v2) | 429 | G |
| McEwan 2016 | 10.1080/17437199.2015.1104258 | yes. Health Psychol Rev 10(1):67-88 | SR/MA | 249 | 429 | G |
| Epton 2017 | **10.1037/ccp0000260** | venue confirmed (J Consult Clin Psychol 85(12):1182-1198); **DOI corrected**: the notes' 10.1037/ccp0000223 resolves to a different paper (Puspitasari et al. 2017, behavioural-activation training RCT) | SR/MA | 307 | 429 | G |
| Bandura & Schunk 1981 | 10.1037/0022-3514.41.3.586 | yes. JPSP 41(3):586-598 | Experiment | 1537 | 429 | G |
| Kivetz 2006 | 10.1509/jmkr.43.1.39 | yes. JMR 43(1):39-58 | Field + experiments | 582 | 429 | G |
| Amir & Ariely 2008 | **10.1037/a0012857** | DOI corrected (notes' 10.1037/0278-7393.34.5.1158 does not resolve in Crossref); J Exp Psychol LMC 34(5):1158-1171 | Experiments | 59 | 429 | G |
| Bonezzi 2011 | 10.1177/0956797611404899 | yes. Psychol Sci 22(5):607-612 (Crossref title "Stuck in the Middle") | Experiments | 129 | 429 | G |
| Mohr 2011 | 10.2196/jmir.1602 | yes. JMIR 13(1):e30 | Conceptual model | 1112 | 429 | G |
| Samdal 2017 | 10.1186/s12966-017-0494-y | yes. IJBNPA 14 | SR/meta-regression | 688 | 429 | G |
| Direito 2017 | 10.1007/s12160-016-9846-0 | yes. Ann Behav Med 51(2):226-239 | SR/MA | 355 | 429 | G |
| Romeo 2019 | 10.2196/12053 | yes. JMIR 21(3):e12053 | SR/MA | 450 | 429 | G |
| Olander 2013 | 10.1186/1479-5868-10-29 | yes. IJBNPA 10:29 | SR/MA | 439 | 429 | G |
| Teixeira 2012 | 10.1186/1479-5868-9-78 | yes. IJBNPA 9:78 | SR | 2433 | 429 | G |
| Ntoumanis 2021 | 10.1080/17437199.2020.1718529 | yes. Health Psychol Rev 15(2):214-244 | MA | 961 | 429 | G |
| Deci, Koestner & Ryan 1999 | 10.1037/0033-2909.125.6.627 | yes. Psychol Bull 125(6):627-668 | MA | 4683 | 429 | G |
| Phillips & Gardner 2016 | 10.1037/hea0000249 | yes. Health Psychol 35(1):69-77 | Prospective (N=123) | 119 | 429 | G |
| Gardner, Lally & Wardle 2012 | 10.3399/bjgp12X659466 | yes. BJGP 62(605):664-666 | Editorial review | 488 | 429 | G |
| Stawarz 2015 | 10.1145/2702123.2702230 | yes. CHI '15, pp. 2653-2662 | HCI study | 192 | 429 | G |
| Renfree 2016 | 10.1145/2851581.2892495 | yes. CHI EA '16, pp. 2932-2939 (extended abstract) | HCI | 36 | 429 | G |
| Etkin 2016 | 10.1093/jcr/ucv095 | yes. JCR 42(6):967-984 | Experiments | 240 | 429 | G |
| Scott & Nowlis 2013 | 10.1086/670766 | yes. JCR 40(3):444-459 | Experiments | 44 | 429 | G |
| Trost 2002 | 10.1097/00005768-200212000-00020 | yes. MSSE 34(12):1996-2001 | SR | 1941 | 429 | G |
| Perri 2002 | 10.1037/0278-6133.21.5.452 | yes. Health Psychol 21(5):452-458 | RCT (N=379) | 242 | 429 | G |
| Jakicic 1999 | 10.1001/jama.282.16.1554 | yes. JAMA 282(16):1554-1560 | RCT (N=148) | 402 | 429 | G |
| McNamara & Stearne 2010 | 10.1519/JSC.0b013e3181bc177b | yes. JSCR 24(1):17-22. Crossref also has a same-title record, 10.1519/JSC.0b013e3181b1b15d (JSCR 24(8):2012-2017, 15 cites); relation not checked | RCT (n=16) | 38 | 429 | G |
| Dishman 1988 (book) | none | not checkable (book, no DOI) | Edited book | n/a | n/a | G |
| Dishman 1982 (likely early source) | 10.1037/0278-6133.1.3.237 | "Compliance/adherence in health-related exercise", Health Psychol 1(3):237-267 | Review | 305 | 429 | G |
| Rhodes & Sui 2021 (new; source for the 50% claim) | 10.3389/fpsyg.2021.725671 | "Physical Activity Maintenance: A Critical Narrative Review...", Front Psychol 12; PMC8450373 | Narrative review | 101 | 429 | G |
| Cochran & Tesser 1996 | none | STILL UNVERIFIED (book chapter; no Crossref record found) | Chapter | n/a | n/a | G |

---

## 2. Claim checks

### 2a. Area F

| Claim (notes' wording, brief) | File | Verdict | Primary source |
|---|---|---|---|
| ACSM 2026 stand exists, Currier et al., MSSE 2026;58(4):851-872, updates the 2009 stand | F | CONFIRMED. Abstract says it "updates the American College of Sports Medicine 2009 Position Stand". Open access (CC BY-NC-ND 4.0), which closes the notes' "open-access status unverified" | https://pubmed.ncbi.nlm.nih.gov/41843416/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| "137 systematic reviews, >30,000 participants" (press) | F | CONFIRMED in the abstract (data current to October 2024; trials of 6-52 weeks) | https://pubmed.ncbi.nlm.nih.gov/41843416/ |
| Failure, equipment, complexity, set structure, TUT, BFR and periodisation "did not consistently" change outcomes | F | CONFIRMED (abstract wording: "training to momentary muscle fatigue... did not consistently impact training outcomes") | https://pubmed.ncbi.nlm.nih.gov/41843416/ |
| "Load and weekly frequency affected strength but not hypertrophy; volume affected both"; per-goal numbers "not verified" | F | CONFIRMED, now with numbers. **Strength**: heavier loads (≥80% 1RM, dose-response), full ROM, 2-3 sets/session, at the start of the session, ≥2 sessions/week. **Hypertrophy**: higher volume (≥10 sets/week, dose-response) and eccentric overload. **Power**: 30-70% 1RM, ≤24 reps×sets. | https://pubmed.ncbi.nlm.nih.gov/41843416/ ; Table 4 in https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| "2-3 RIR" attributed to ACSM 2026 by blogs | F | CORRECTED. The full text says sufficient effort "can be accomplished... by completion of 'near-failure' or a target of 2-3 repetitions in reserve". It also says "there is insufficient evidence to quantify exact RIR and perceived exertion targets". So it is an option, not a prescription. | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| Train all major muscle groups ≥2 days/week (lead author, via press) | F | CONFIRMED. The stand quotes the guideline wording ("all major muscle groups on two or more days a week"). Its strength table says ≥2 sessions/week; "the upper limit cannot... be determined". | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| ACSM 2009 novice numbers: 8-12 RM, 60-70% 1RM, 1-3 sets, 2-3 d/wk, rest 1-3 min | F | PARTLY CONFIRMED. The abstract gives novice loads at an **8-12 RM** range and **2-3 days/week**. It also gives a progression rule: add 2-10% load when the person can do 1-2 reps over the target. **60-70% 1RM, 1-3 sets and 1-3 min rest are not in the abstract: STILL UNVERIFIED** (the LWW full text was blocked). | https://pubmed.ncbi.nlm.nih.gov/19204579/ |
| WHO 2020: 150-300 min moderate / 75-150 min vigorous; muscle-strengthening; "some is better than none" | F | CONFIRMED (abstract). The full text gives strengthening at moderate or greater intensity, all major muscle groups, **on 2 or more days a week** (strong recommendation). | https://pubmed.ncbi.nlm.nih.gov/33239350/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/ |
| WHO 2020 removed the 10-minute bout | F | CONFIRMED (full text: "the previous stipulation that physical activity should be accumulated in at least 10 min bouts has been removed"). **Correct the link to PMC7719906.** | https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/ |
| WHO/BJSM licence "unverified" | F | CONFIRMED: CC BY 4.0 (Crossref and PubMed: "Re-use permitted under CC BY") | https://pubmed.ncbi.nlm.nih.gov/33239350/ |
| US PAG 2018: 150-300/75-150; strengthening ≥2 days; bouts of any length | F | CONFIRMED. Full text: "Guidance for adults no longer requires physical activity to occur in bouts of at least 10 minutes". | https://pubmed.ncbi.nlm.nih.gov/30418471/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC9582631/ |
| UK CMO 2019 wording ("75 min vigorous", "very vigorous", short sessions count) | F | STILL UNVERIFIED (gov.uk unreachable; no PMC article quoting it was found) | n/a |
| Momma 2022: 16 cohorts; 10-17% lower risk; maximum benefit at ~30-60 min/week (J-shape); diabetes L-shaped | F | CONFIRMED. Licence is CC BY 4.0, so link BJSM/PMC9209691 rather than a third-party mirror | https://pubmed.ncbi.nlm.nih.gov/35228201/ |
| PMC10199130 = commentary noting an 8-study overlap with Momma | F | CONFIRMED with correction. It is a short review by Burtscher, Strasser & D'Antona (JSHS 2023), not a commentary on Momma. It says the similarity between Momma 2022 and Shailendra 2022 "also owe[s] to an overlap of 8 studies". | https://pmc.ncbi.nlm.nih.gov/articles/PMC10199130/ |
| Grgic 2018: higher frequency gave more strength, but no effect when volume was equated | F | CONFIRMED. 22 studies; ES 0.74/0.82/0.93/1.08 for 1/2/3/4+ days a week (p = 0.003); volume-equated subgroup p = 0.421 | https://pubmed.ncbi.nlm.nih.gov/29470825/ |
| Schoenfeld 2016 reached "the same conclusion for hypertrophy" (no frequency effect when volume was equated) | F | **CORRECTED.** Schoenfeld 2016 (10 studies) found **2×/week beat 1×/week** (ES 0.49 vs 0.30, P = 0.002) and inferred that major muscles should be trained at least twice a week. The "no effect when volume-equated" finding is **Schoenfeld, Grgic & Krieger 2019**. | https://pubmed.ncbi.nlm.nih.gov/27102172/ ; https://pubmed.ncbi.nlm.nih.gov/30558493/ |
| Schoenfeld 2017 volume: "0.37% per set could not be verified" | F | CONFIRMED. Each additional weekly set gave ES +0.023, about 0.37% more growth; continuous P = 0.002; <5 / 5-9 / 10+ categories P = 0.074 | https://pubmed.ncbi.nlm.nih.gov/27433992/ |
| Pelland 2026: frequency affects strength only; fractional set counting | F | CONFIRMED (journal version). 67 studies, 2,058 participants (79.1% male, mean age 25). Frequency → hypertrophy was "compatible with negligible effects"; frequency → strength had a 100% posterior probability of a positive slope, with diminishing returns. Strength also showed more pronounced diminishing returns with volume. | https://pubmed.ncbi.nlm.nih.gov/41343037/ |
| Currier 2023 NMA numbers (178/119 studies; SMD 1.60 and 0.66) | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/37414459/ |
| Kotarsky 2018 (23 men, 4 weeks, 3 days/week; both groups improved 1RM; no thickness change) | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/29466268/ |
| Kikuchi & Nakazato 2017 (18 men, 40% 1RM, 2×/week, 8 weeks; comparable; biceps grew only with bench) | F | CONFIRMED. Training status is not stated in the abstract; participants were aged 19-22. | https://pubmed.ncbi.nlm.nih.gov/29541130/ |
| Calatayud 2015 (elastic-band push-up vs bench; 5 or 6 weeks?) | F | CORRECTED/RESOLVED. A **5-week** program; **30 university students with advanced RT experience**; 6RM bench vs 6RM elastic-band push-up vs control; similar 1RM and 6RM gains | https://pubmed.ncbi.nlm.nih.gov/24983847/ |
| Lasevicius 2018 (20% 1RM suboptimal) | F | CONFIRMED. 30 men, 12 weeks, 2×/week, within-subject, volume-matched. 20% 1RM was suboptimal and only 80% 1RM was superior for strength and CSA. | https://pubmed.ncbi.nlm.nih.gov/29564973/ |
| Halperin 2022: RIR error ~1 rep; worse >12 reps | F | CONFIRMED. Underprediction 0.95 reps (95% CI 0.17-1.73; I² 97.9%; 12 studies, 414 participants). For >12 reps β = 0.47 vs ≤12 reps β = 0.06. | https://pubmed.ncbi.nlm.nih.gov/34542869/ |
| Halperin 2022: accuracy worse "in novices" (brief) | F | **CORRECTED.** "Participants' training status did not seem to influence prediction accuracy" (β = -0.006). The experience effect comes from Steele 2017 (a trend only). | https://pubmed.ncbi.nlm.nih.gov/34542869/ |
| PMC5712461 = Steele et al. 2017 PeerJ? | F | CONFIRMED. n = 141; people underpredicted, with SEM 2.64-3.38 reps; a tendency to better accuracy with experience | https://pubmed.ncbi.nlm.nih.gov/29204323/ |
| Zourdos 2016 (15 vs 14; p = 0.023; r = -0.88 / -0.77) | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/26049792/ |
| Bell 2023 deload Delphi | F | CONFIRMED. 3-round Delphi; 34, then 29, then 21 strength and physique coaches; integration "unknown" before the study | https://pubmed.ncbi.nlm.nih.gov/37730925/ |
| Coleman 2024 (39 trained; 1 week off at mid-point of 9 weeks; less strength gain, same size) | F | CONFIRMED (29 men, 10 women) | https://pubmed.ncbi.nlm.nih.gov/38274324/ |
| Milanović 2015: +5.5 mL/kg/min vs control; +1.2 vs endurance training | F | CONFIRMED. 28 studies, 723 adults aged 18-45. HIT vs control +5.5 (±1.2); HIT vs endurance +1.2 (±0.9). Larger gains with lower baseline fitness. | https://pubmed.ncbi.nlm.nih.gov/26243014/ |
| Weston 2014 (10 studies, 273 patients, MD 3.03) | F | CONFIRMED (95% CI 2.00-4.07, about 9.1%) | https://pubmed.ncbi.nlm.nih.gov/24144531/ |
| Biddle & Batterham 2015 debate | F | Bibliographic CONFIRMED; content not re-checked this pass | https://pubmed.ncbi.nlm.nih.gov/26187579/ |
| Konrad 2024: 77 studies; volume, intensity and frequency not moderators | F | CONFIRMED (186 effect sizes; ES -1.002; PNF and static > ballistic/dynamic; women gained more) | https://pubmed.ncbi.nlm.nih.gov/37301370/ |
| Afonso 2021 (11 RCTs, n = 452, ES -0.22, p = 0.206) | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/33917036/ |
| Thomas 2018: "≥5 min of stretching per muscle per week" | F | CORRECTED wording. The abstract says ≥5 min **per week** of stretching (not "per muscle") and suggests static stretching **≥5 days a week**. **It conflicts with Konrad 2024**: Thomas found weekly frequency positively associated with ROM and static > PNF. | https://pubmed.ncbi.nlm.nih.gov/29506306/ |
| Bosquet 2013 (103/284 studies; SMD -0.62 / -0.46; dose-response; larger losses >65 y and in inactive people) | F | CONFIRMED (maximal power also fell, SMD -0.20) | https://pubmed.ncbi.nlm.nih.gov/23347054/ |
| Ogasawara 2011 and 2013: 3-week breaks did not reduce final gains | F | CONFIRMED. 2011: n = 15, 15 weeks, 3 weeks off after week 6. 2013: n = 14, 24 weeks, three cycles of 6 weeks on and 3 weeks off. Both used bench press only, in young untrained men. | https://pubmed.ncbi.nlm.nih.gov/21771261/ ; https://pubmed.ncbi.nlm.nih.gov/23053130/ |
| Van Hooren & Peake 2018 cool-down | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/29663142/ |
| Fradkin 2010 (32 studies; mean quality 7.6; 79% of criteria) | F | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/19996770/ |
| Ebben 2011 push-up load percentages | F | STILL UNVERIFIED. The abstract gives only the ranking: feet-elevated push-ups had the highest ground-reaction force; hands-elevated and knee push-ups were lowest (23 adults). The percentages are in the LWW full text, which was blocked. | https://pubmed.ncbi.nlm.nih.gov/21873902/ |
| Seynnes 2007: growth detectable at ~20 days | F | CONFIRMED. Quadriceps CSA +3.5% and +5.2% after 20 days; +6.5% and +7.4% at 35 days | https://pubmed.ncbi.nlm.nih.gov/17053104/ |
| Jenkins 2019: three ~20-s stair bouts a day, 3 days/week, 6 weeks | F | PARTLY CONFIRMED. The abstract describes 3 bouts a day up a 3-flight, 60-step stairwell, 3 days/week, 6 weeks, in sedentary young adults (n = 12 per group); the increase was "modest". The "~20 s" duration is not in the abstract. | https://pubmed.ncbi.nlm.nih.gov/30649897/ |
| Garber 2011 flexibility: 60 s per exercise, ≥2 days/week; holds of 10-30 s | F | 60 s and ≥2 days/week CONFIRMED (abstract). The 10-30 s holds remain STILL UNVERIFIED (press source only) | https://pubmed.ncbi.nlm.nih.gov/21694556/ |
| Šarić 3 vs 6 days/week (2018) | F | CONFIRMED findings (27 trained men, 6 weeks, volume-equated, no between-group differences); year CORRECTED to 2019 | https://pubmed.ncbi.nlm.nih.gov/30363041/ |

### 2b. Area G

| Claim (notes' wording, brief) | File | Verdict | Primary source |
|---|---|---|---|
| Pratap 2020: median retention 5.5 days (study range 2-26); clinician referral +40 days; payment +22 (one study); having the condition +7; older age +4 | G | CONFIRMED (8 studies, 2014-2019, >100,000 participants) | https://pubmed.ncbi.nlm.nih.gov/32128451/ |
| Meyerowitz-Katz 2020: pooled dropout 43% (29-57); observational 49%; RCTs 40%; "47% on a preprint page" | G | CONFIRMED in the published abstract (17 of 833 studies; I² >99%). **The "47%" in the abstract is the share of included studies that were observational (8 of 17), not a dropout rate.** That is very likely the source of the discrepancy (my inference). | https://pubmed.ncbi.nlm.nih.gov/32990635/ |
| Milkman 2021: 61,293 members; 54 interventions; 45% raised visits 9-27%; best = rewards for returning after a missed workout; 8% persisted after 4 weeks | G | CONFIRMED. Full text: a 125-point bonus (US$0.09) for returning after a missed workout gave +0.40 weekly visits (+27%). The authors warn that top-performer estimates "are probably inflated". | https://pubmed.ncbi.nlm.nih.gov/34880497/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC8822539/ |
| Beshears 2021: flexible > routine-window incentives, during and after; 2,508 participants | G | CONFIRMED. 2,508 employees completed registration out of 2,702 sign-ups. | https://api.crossref.org/works/10.1287/mnsc.2020.3706 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC8734590/ |
| Silverman & Barasch 2023: intact vs broken streaks; self-blame amplifies; repair attenuates; 7 studies | G | CONFIRMED. A streak was defined as 3+ consecutive behaviours. The effect is "independent of actual past behavior". | https://api.crossref.org/works/10.1093/jcr/ucac029 |
| Sharif & Shu 2017: exact title; "emergency reserves" | G | CONFIRMED: the exact title is as in table 1b. Six studies: people prefer reserve goals and persist more "because they want to avoid using the 'emergency' reserve". The "gym 7 days/week with 2 skips" example is **not in the abstract: STILL UNVERIFIED** | https://api.crossref.org/works/10.1509/jmr.15.0231 |
| Lally 2010: median 66 days, range 18-254 | G | Range CONFIRMED (abstract: 18 to 254 days; 96 volunteers, 82 analysed, model fitted for 62, good fit for 39; daily eating, drinking or activity behaviours over 84 days). The 66-day median is not in the abstract; it is consistent with the 59-66-day medians in Singh 2024 | https://api.crossref.org/works/10.1002/ejsp.674 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC11641623/ |
| Lally 2010: "missing one opportunity did not materially affect the habit formation process" (secondary only) | G | **CONFIRMED verbatim in the paper's abstract**: "Missing one opportunity to perform the behaviour did not materially affect the habit formation process." | https://api.crossref.org/works/10.1002/ejsp.674 |
| Singh 2024: medians 59-66 days; means 106-154; range 4-335; SMD 0.69 | G | CONFIRMED. 20 studies, 2,601 participants; 11 studies at high risk of bias; 8 were on physical activity | https://pubmed.ncbi.nlm.nih.gov/39685110/ |
| Kaushal & Rhodes 2015: ≥4 sessions/week for 6 weeks; β values | G | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/25851609/ |
| Michie 2009: 0.42 vs 0.26; overall 0.31; 122 evaluations; N = 44,747 | G | CONFIRMED | https://pubmed.ncbi.nlm.nih.gov/19916637/ |
| Howlett 2019: d = 0.32 post; d = 0.21 at ≥6 months; BCT list | G | CONFIRMED (26 studies, 16 pooled; n = 2,346 and 2,190). BCT lists as in the notes | https://pubmed.ncbi.nlm.nih.gov/29506209/ |
| Laranjo 2021: ~1,850 steps/day | G | CONFIRMED (28 RCTs, n = 7,454; SDM 0.350; 95% CI 1,247-2,457). New: only 28% of participants were women. The age range and follow-up were not re-checked. | https://pubmed.ncbi.nlm.nih.gov/33355160/ |
| Mazeas 2022: g = 0.15 at follow-up; main g = 0.42 "from preprint" | G | CONFIRMED, both in the published abstract: main g = 0.42 (16 studies, 2,407 participants); 0.58 vs inactive controls; 0.23 vs active controls; 0.15 at ~14 weeks | https://pubmed.ncbi.nlm.nih.gov/34982715/ |
| Patel 2019 STEP UP numbers | G | CONFIRMED. Nuance: at follow-up the support arm was +428 (P = .04) but reported as not significant, presumably against a multiplicity-adjusted threshold. 70.9% of participants were male. The Deloitte funding claim was not checked. | https://pubmed.ncbi.nlm.nih.gov/31498375/ |
| Klasnja 2019: +14% (p = .06); walking +24% (p = .02); +66% at start | G | CONFIRMED. Walking suggestions were +107% (271 steps) at the start of the study | https://pubmed.ncbi.nlm.nih.gov/30192907/ |
| Epton 2017 venue (J Consult Clin Psychol vs Health Psychology); d ≈ 0.34 | G | Venue CONFIRMED (J Consult Clin Psychol 85(12):1182-1198); d = .34 (CI .28-.41) CONFIRMED; goals worked best when difficult, public or group goals. **DOI CORRECTED to 10.1037/ccp0000260** | https://pubmed.ncbi.nlm.nih.gov/29189034/ |
| McEwan 2016: d ≈ 0.55 | G | CONFIRMED: d = .552 (95% CI .43-.67; 45 articles, 52 interventions, n = 5,912) | https://pubmed.ncbi.nlm.nih.gov/26445201/ |
| Dishman: "~50% drop out within 6 months" | G | **CORRECTED attribution.** A peer-reviewed review says early studies "documented large (>50%) drop-out rates within the first 6-months among those beginning a physical activity program", citing Oldridge 1984; Dishman, Sallis & Orenstein 1985; and Sallis et al. 1986. The primary texts were not verified (the 1985 PMC copy is a scan). Cite as "early studies (1980s) reported >50% dropout in 6 months (reviewed by Rhodes & Sui 2021)", or drop the claim. Do not cite "Dishman 1988, 50%". | https://pmc.ncbi.nlm.nih.gov/articles/PMC8450373/ |
| Trost 2002: lack of time "among the most consistently reported barriers" | G | STILL UNVERIFIED as worded. The abstract only says the evidence status changed for several correlates, including "lack of time". Reword to "lack of time is a documented correlate" or find another source | https://pubmed.ncbi.nlm.nih.gov/12471307/ |
| Perri 2002: higher prescribed frequency did not lower adherence | G | CONFIRMED, with detail. N = 379 sedentary adults, 30 min walking, 3-4 vs 5-7 days/week × moderate vs higher intensity, over 6 months. Higher frequency gave more total exercise "without a decline in adherence"; **higher intensity decreased adherence** | https://pubmed.ncbi.nlm.nih.gov/12211512/ |
| Jakicic 1999: short bouts did not improve long-term adherence; home equipment helped | G | CONFIRMED for 18 months (N = 148). Short bouts vs long bouts: no better weight loss, exercise participation or fitness; home equipment helped people keep up short bouts. "Improved adherence early" is not in the abstract | https://pubmed.ncbi.nlm.nih.gov/10546695/ |
| Phillips & Gardner 2016: instigation, not execution, habit predicts frequency | G | CONFIRMED (N = 123, 1-month diaries) | https://pubmed.ncbi.nlm.nih.gov/26148187/ |
| Hardeman 2019: JITAIs acceptable; typically 3-4 weeks; feasibility problems | G | CONFIRMED. 19 papers, 14 JITAIs, 6 randomised; mixed evidence for effects; "no study was sufficiently powered" | https://pubmed.ncbi.nlm.nih.gov/30943983/ |
| Xu & Smit 2023: g = 0.77 (0.32-1.22); 21 effect sizes; 592 participants | G | CONFIRMED. All included studies used pre-post designs; design principles did not moderate effects | https://pubmed.ncbi.nlm.nih.gov/37521518/ |
| Nahum-Shani 2018 JITAI components | G | Bibliographic CONFIRMED; the component list was not re-checked against the text | https://pubmed.ncbi.nlm.nih.gov/27663578/ |
| Michie 2013 BCTTv1: 93 techniques in 16 groups | G | CONFIRMED. The technique numbering (1.1, 1.4, 2.3, 8.7...) is STILL UNVERIFIED | https://pubmed.ncbi.nlm.nih.gov/23512568/ |
| BCTTv1 terms of use for commercial products | G | STILL UNVERIFIED (bct-taxonomy.com unreachable). The Springer article has no CC licence in Crossref. **The BCT Ontology (successor) is CC BY 4.0** (Wellcome Open Research) | https://api.crossref.org/works/10.12688/wellcomeopenres.19363.2 |
| McNamara & Stearne 2010 flexible periodization (outcomes "not verified") | G | CONFIRMED. 16 beginners, 2×/week, 12 weeks. Letting people choose which workout to do that day gave a leg press gain of +62 kg vs +16 kg. Strength, not adherence, was measured | https://pubmed.ncbi.nlm.nih.gov/20042923/ |
| Cochran & Tesser 1996 "what-the-hell" effect | G | STILL UNVERIFIED (book chapter; no record found) | n/a |
| Stawarz 2015, Renfree 2016, Etkin 2016, Scott & Nowlis 2013 (findings [NR]) | G | Bibliographic CONFIRMED (table 1b); findings not re-checked | Crossref DOIs in table 1b |

---

## 3. New facts that close gaps or bear on Delva's spec

| # | Fact | Bears on | Label | Source |
|---|---|---|---|---|
| 1 | ACSM 2026: body-weight RT "was a portion of some reviews, but was not studied as a stand-alone intervention except in the case of the Nordic hamstring curl". The evidence for pure bodyweight programs is therefore indirect. | Build Strength claims; no-equipment honesty | strong (guideline statement) | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| 2 | ACSM 2026: compared with no exercise, strength improved with home-based RT (2 reviews, n = 892), elastic-band RT and circuit RT. | Home, no-equipment format | strong (overview) | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| 3 | ACSM 2026: "Untrained individuals will benefit from various RT programs, provided that progression... and adherence are core principles". The 2009 advice of 2-3 full-body sessions a week for novices "was informed by only three studies (n = 59)". | 3/4/5-day menu; progression engine | strong (guideline) | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| 4 | ACSM 2026 included only RT interventions of ≥6 weeks with ≥12 sessions. An 8-week program at ≥3 days/week (≥24 sessions) sits inside that evidence base. A 14-active-day chapter is far shorter than any included trial, so chapters are motivational and checkpoint units, not physiological ones. | 8-week minimum; chapters | strong (eligibility fact) + opinion (inference) | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| 5 | ACSM 2026: RIR or RPE are "appealing" for elastic-band or body-weight RT, but there is "insufficient evidence to quantify exact RIR... targets". | Effort prompts | strong (that evidence is lacking) | https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/ |
| 6 | ACSM 2009 progression rule: add 2-10% load once the current load can be done for 1-2 reps over the target (double progression). Without load, the equivalent "move up a variation" rule is practice. | Progression engine | strong (old guideline) / opinion (bodyweight mapping) | https://pubmed.ncbi.nlm.nih.gov/19204579/ |
| 7 | WHO 2020: "no evidence to support a dose-response association with higher volumes of muscle-strengthening activities" (health outcomes). | Don't promise more benefit from 5 vs 3 days | strong | https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/ |
| 8 | PAG 2018: "Individuals performing the least physical activity benefit most by even modest increases". | 15-20 min sessions; First Steps copy | strong | https://pubmed.ncbi.nlm.nih.gov/30418471/ |
| 9 | Schoenfeld, Grgic & Krieger 2019: frequency does not meaningfully affect hypertrophy when volume is equated; "individuals can choose a weekly frequency... based on personal preference". | 3/4/5 choice; check-in changes are volume decisions | strong (MA) | https://pubmed.ncbi.nlm.nih.gov/30558493/ |
| 10 | Grgic 2018 subgroups: the frequency effect on strength was significant for multi-joint lifts, the upper body, young adults and women, but not for single-joint lifts, the lower body, middle-aged/older adults or men. | Frequency suggestions by segment | weak (subgroups) | https://pubmed.ncbi.nlm.nih.gov/29470825/ |
| 11 | Pelland 2026 sample: 79% male, mean age 25. Dose-response curves may not transfer to 18-64 mixed-sex beginners. | Fractional set rule caveat | strong (fact) | https://pubmed.ncbi.nlm.nih.gov/41343037/ |
| 12 | Perri 2002 (N = 379): prescribing 5-7 vs 3-4 days a week raised total exercise without lowering adherence; prescribing higher intensity lowered adherence. | 3/4/5 days (5 is not an adherence risk in itself); Go Further intensity | weak-to-moderate (single large RCT, walking) | https://pubmed.ncbi.nlm.nih.gov/12211512/ |
| 13 | Ogasawara 2011/2013: 3-week breaks in young untrained men left final hypertrophy and strength unchanged; retraining caught up. Bosquet 2013: losses are larger after age 65 and in inactive people. | Sequence-based resume; re-entry step-back after long breaks | weak (small RCTs) + strong (MA) | https://pubmed.ncbi.nlm.nih.gov/21771261/ ; https://pubmed.ncbi.nlm.nih.gov/23053130/ ; https://pubmed.ncbi.nlm.nih.gov/23347054/ |
| 14 | Lally 2010, verbatim: "Missing one opportunity to perform the behaviour did not materially affect the habit formation process." | No-debt missed workouts; welcome-back copy | weak (n = 82, observational) | https://api.crossref.org/works/10.1002/ejsp.674 |
| 15 | Milkman 2021: the best intervention paid about US$0.09 (125 points) for returning after a missed workout: +27% weekly visits, likely inflated. | Positive acknowledgement on return | strong (megastudy) | https://pmc.ncbi.nlm.nih.gov/articles/PMC8822539/ |
| 16 | Phillips & Gardner 2016: only the habit of starting (instigation) predicted exercise frequency. | Reminders and action planning should target starting, not the workout steps | weak (N = 123, 1 month) | https://pubmed.ncbi.nlm.nih.gov/26148187/ |
| 17 | Halperin 2022: RIR accuracy did not depend on training status, but improved near failure, with ≤12 reps and in later sets. Steele 2017 found individual errors of about 2.6-3.4 reps (SEM). | Ask RIR late in a set; keep rep bands ≤12; rep-slowdown cue | strong (MA) / weak (single study) | https://pubmed.ncbi.nlm.nih.gov/34542869/ ; https://pubmed.ncbi.nlm.nih.gov/29204323/ |
| 18 | Stretching dose conflict. Thomas 2018: ≥5 min/week and ≥5 days/week, with static stretching best. Konrad 2024: dose and frequency not significant moderators; static and PNF best. | Move Freely at 3 vs 5 days | strong (two MAs, conflicting) | https://pubmed.ncbi.nlm.nih.gov/29506306/ ; https://pubmed.ncbi.nlm.nih.gov/37301370/ |
| 19 | Burtscher 2023, summarising Shailendra 2022 (10 cohorts): lowest all-cause mortality at ≤60 min/week of resistance exercise; benefit reached zero at about 150 min/week; above 150 min/week risk rose. Delva's maximum of 5 × 20 min stays below that. | Weekly time framing; no health promises | weak (observational, J-shape uncertain) | https://pmc.ncbi.nlm.nih.gov/articles/PMC10199130/ |
| 20 | Early exercise programmes lost more than half of starters within 6 months (as reviewed by Rhodes & Sui 2021). | Expect early dropout; first-week design | weak (secondary, old studies) | https://pmc.ncbi.nlm.nih.gov/articles/PMC8450373/ |
| 21 | Jakicic 1999: splitting exercise into short bouts gave no better 18-month participation than long bouts; home equipment helped people keep up the short bouts. | 15-20 min sessions are a convenience, not an adherence guarantee | weak (single RCT, women only) | https://pubmed.ncbi.nlm.nih.gov/10546695/ |
| 22 | McNamara & Stearne 2010: beginners who chose which workout to do on the day gained more leg-press strength (+62 vs +16 kg; n = 16). | Flexibility within a sequence | weak (tiny RCT) | https://pubmed.ncbi.nlm.nih.gov/20042923/ |
| 23 | Licences: Bull 2020 WHO, Momma 2022, Pratap 2020, Singh 2024, Coleman 2024 and the BCT Ontology are **CC BY 4.0**. ACSM 2026 and Konrad 2024 are **CC BY-NC-ND 4.0** (no commercial reuse of text or figures without permission; the facts can be used). Currier 2023 is **CC BY-NC 4.0**. BCTTv1 has no CC licence in Crossref. | Copy and licence decisions | n/a (licence metadata) | Crossref `license` fields, e.g. https://api.crossref.org/works/10.1249/mss.0000000000003897 |
| 24 | Laranjo 2021 sample was 28% women; STEP UP was 71% men; Pelland was 79% men. | Generalisability to Delva's mixed-sex 18-64 users | strong (facts) | https://pubmed.ncbi.nlm.nih.gov/33355160/ ; https://pubmed.ncbi.nlm.nih.gov/31498375/ |

### Still unverified after this pass (and why)
- Semantic Scholar counts for every item (HTTP 429 on 6 attempts, 2026-11-07).
- ACSM 2009 "60-70% 1RM, 1-3 sets, 1-3 min rest" (not in the abstract; LWW full text blocked).
- UK CMO 2019 wording (gov.uk unreachable).
- Ebben 2011 push-up percentages of body mass (full text only).
- Garber 2011 "10-30 s holds" (full text tables not reached).
- Sharif & Shu's "7 days with 2 skips" example; Lally's 66-day median in the paper itself (consistent with Singh 2024); BCTTv1 numbering and terms of use; Cochran & Tesser 1996; Trost 2002's "most consistent barrier" ranking; Patel 2019 Deloitte funding.
- The 2025 exercise-snacks MA, the 2025 Sports Med Open scoping review and the 2025 older-adult bodyweight MA (primaries not identified).
- The primary text behind ">50% dropout in 6 months" (Dishman et al. 1985 is a scanned PMC copy).
