# Area F: Program design for novice adults and bodyweight progression (evidence base for Delva's spec decisions)

Date checked for every number, link and status in these notes: **2026-11-07**.

How this was researched, and its limits (read first):
- All findings come from web-search results that quoted abstracts, publisher or PubMed records, repository copies and a few press releases. I could not open full texts: WebFetch was blocked in this session (`api.semanticscholar.org` and `www.newswise.com` did not resolve, so per session rules I stopped fetching), and the session's shared web-search budget ran out after about 37 queries. Numbers below are as reported in abstracts or snippets. Anything I could not confirm against an abstract or official page is marked **unverified** and repeated under Gaps.
- **Citation counts:** Semantic Scholar's API and Google Scholar could not be reached (DNS-blocked), so every item is marked "citation count not verified (2026-11-07)". I did not estimate counts.
- Evidence labels used: **Strong evidence** = official guideline, or a meta-analysis or network meta-analysis of trials with a consistent result. **Weak evidence** = a single small RCT, a narrative review, findings only visible through secondary summaries, or observational data used for a causal question. **Opinion / industry practice** = expert consensus (Delphi), coaching frameworks, or my own design inference.
- openGym (github.com/DuarteSantos8/openGym) is mentioned only as a comparison, as instructed.

---

## 1. Main evidence table (the 10 most useful items)

### Takeaway
The best current anchors are the new **ACSM 2026 resistance-training Position Stand** (it replaces the 2009 stand), the **WHO 2020** and **US 2018** activity guidelines, **Garber 2011** for flexibility dose, and five meta-analyses that set the practical limits for Delva: Currier 2023 (what loads and frequencies do), Pelland 2026 (volume and frequency dose-response), Momma 2022 (30-60 min/week of muscle-strengthening), Halperin 2022 (people misjudge reps in reserve by about one rep), Konrad 2024 (stretching works; dose matters less than doing it) and Bosquet 2013 (detraining scales with break length).

### Cited Findings

| # | Name and link | Type | What it is | Why it matters for Delva | Credibility | Licence / commercial use | Key ideas to borrow | Limitations |
|---|---|---|---|---|---|---|---|---|
| 1 | Currier et al., ACSM Position Stand "Resistance Training Prescription for Muscle Function, Hypertrophy, and Physical Performance in Healthy Adults: An Overview of Reviews", *MSSE* 2026;58(4):851-872, DOI 10.1249/mss.0000000000003897 — [Ovid record](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand); [ACSM announcement](https://acsm.org/science-spotlight-acsm-releases-new-position-stand-on-resistance-training/) | Guideline (position stand built as an overview of systematic reviews) | Replaces the 2009 "Progression models" stand; chaired by Stuart Phillips. Abstract: training to momentary failure, equipment type, exercise complexity, set structure, time under tension, blood-flow restriction and periodisation did not consistently change outcomes; load and weekly frequency affected strength but not hypertrophy; volume affected both. Press: 137 systematic reviews, >30,000 participants. | Build Strength, All Round, First Steps: "equipment type did not consistently matter" supports a no-equipment product; "failure not required" supports sub-failure targets cued by audio; "periodisation not consistently important" means the 4-chapter structure can be designed for motivation rather than physiology. | Official ACSM stand in MSSE. Strong evidence. Citation count not verified (2026-11-07; paper is from March/April 2026). | Text copyrighted (ACSM / Wolters Kluwer). Recommendations are ideas and can be followed; do not copy text or figures. Open-access status unverified. | Progressive overload with "variable prescription"; volume as main lever; train each major muscle group at least twice a week (lead author, via press). | I saw only abstract-level text and press summaries. Exact numeric prescriptions (sets, %1RM, RIR) not verified. Not novice-specific. |
| 2 | Bull et al., "World Health Organization 2020 guidelines on physical activity and sedentary behaviour", *BJSM* 2020;54(24):1451-1462 — [PMC7719905](https://pmc.ncbi.nlm.nih.gov/articles/PMC7719905) | Guideline | WHO global guidelines. Removed the requirement that aerobic activity come in bouts of at least 10 minutes; recommends reducing sedentary time (no threshold could be set). | All programs: Delva can truthfully say every minute of a session counts toward weekly activity, and should not claim a session "meets the guideline" on its own. | WHO; BJSM. Strong evidence. Citation count not verified (2026-11-07). | WHO documents are usually CC BY-NC-SA 3.0 IGO (unverified this session); BJSM article licence unverified. Commercial apps can follow the advice; check licence before quoting text. | "Some is better than none"; any bout counts. | Bout removal verified via a peer-reviewed commentary ([Int J Behav Nutr Phys Act commentary](https://link.springer.com/doi/10.1186/s12966-020-01048-w)); the exact "some physical activity is better than none" wording and the 150-300 / 75-150 min numbers were not visible in the snippets I retrieved (see Gaps). |
| 3 | Physical Activity Guidelines for Americans, 2nd ed. (2018); Piercy et al., *JAMA* 2018 — [HHS executive summary](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); [JAMA](https://jamanetwork.com/journals/jama/fullarticle/2712935) | Guideline | Adults: 150-300 min/week moderate or 75-150 min/week vigorous aerobic activity (or a mix); muscle-strengthening of all major muscle groups at moderate or greater intensity on 2 or more days/week; the 10-minute bout requirement was dropped. | Spec (c): concrete yardstick for what 3-5 sessions of 15-20 min can and cannot cover. | US HHS; JAMA summary. Strong evidence. Citation count not verified (2026-11-07). | US federal government work, generally public domain in the US (unverified this session). | Weekly-minute framing; strength on 2+ days. | Population-health targets, not a training-optimisation document. |
| 4 | Garber et al., ACSM Position Stand "Quantity and quality of exercise for developing and maintaining cardiorespiratory, musculoskeletal, and neuromotor fitness...", *MSSE* 2011;43(7):1334-1359 — [URI repository record](https://digitalcommons.uri.edu/kinesiology_facpubs/137) | Guideline (foundational) | Flexibility: a series of exercises for each major muscle-tendon group, a total of 60 s per exercise, on 2 or more days/week; press summary adds holds of 10-30 s to the point of tightness or slight discomfort. Supersedes the 1998 stand. | Move Freely dose; how much stretching fits in a cool-down; neuromotor work for "control". | ACSM, MSSE. Strong evidence for the time (foundational, 2011). Citation count not verified (2026-11-07). | Copyrighted text; follow the numbers, do not reproduce. | 60 s total per stretch, split into short holds; at least 2 days/week. | 2011; the 10-30 s hold figure came from a press summary ([Athletic Business](https://www.athleticbusiness.com/health-fitness/acsm-issues-new-guidelines-on-exercise-quality-quantity.html)), not the stand text I saw. Its resistance-training part is now superseded by item 1. |
| 5 | Currier et al., "Resistance training prescription for muscle strength and hypertrophy in healthy adults: a systematic review and Bayesian network meta-analysis", *BJSM* 2023;57:1211-1220 — [BJSM PDF](https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf) | Network meta-analysis of RCTs | Strength network 178 studies (n=5097, 45% women); hypertrophy network 119 studies (n=3364, 47% women); 12 prescriptions vs non-exercise control. Higher loads (>80% 1RM) maximised strength; all prescriptions produced comparable hypertrophy. Top-ranked: higher-load multiset 3x/week for strength (SMD 1.60, 95% CrI 1.38-1.82); higher-load multiset 2x/week for hypertrophy (SMD 0.66, 0.47-0.85). | Build Strength messaging: bodyweight (lower relative load) can match hypertrophy but is unlikely to match heavy lifting for maximal strength. Supports 2-3 strength days as the efficient core. | BJSM; large NMA; threshold analysis "extremely robust". Strong evidence. Citation count not verified (2026-11-07). | n/a | Any prescription works for muscle size if effort is adequate; heavier relative loading matters for max strength. | External-load trials; whether bodyweight training was a separate node is unverified. |
| 6 | Pelland et al., "The resistance training dose-response: meta-regressions exploring the effects of weekly volume and frequency on muscle hypertrophy and strength gain", *Sports Medicine* 2026;56(2):481-505 — [SportRxiv preprint v2](https://sportrxiv.org/index.php/server/preprint/view/460); [SPONET index record](https://sponet.de/sponet/Record/4097139?lng=en) | Meta-regression (67 studies) | Hypertrophy and strength respond differently: strength shows more pronounced diminishing returns with volume; only strength shows a consistently identifiable frequency effect. Indirect sets counted as 0.5 ("fractional") in primary models. | Authoring rule for Delva programs: count weekly sets per muscle with fractional credit (e.g., a push-up = 1 chest set, 0.5 triceps set). Frequency changes at check-ins affect strength more than size. | Sports Medicine; earlier preprint was widely discussed. Published status seen via index record and search summary; I could not open the journal page. Strong evidence (pending full-text check). Citation count not verified (2026-11-07). | n/a | Fractional set counting; diminishing returns mean small programs get most of the benefit. | Full text, effect sizes and population mix not verified. Earlier versions were a preprint; the 2026 journal version should be used. |
| 7 | Momma et al., "Muscle-strengthening activities are associated with lower risk and mortality in major non-communicable diseases: a systematic review and meta-analysis of cohort studies", *BJSM* 2022;56(13):755 — [full-text mirror of BJSM 56(13):755](https://observateperu.ins.gob.pe/sites/default/files/2025-02/755.full_.pdf) | Meta-analysis of prospective cohorts | 16 studies. Muscle-strengthening activity associated with 10-17% lower risk of all-cause mortality, CVD, total cancer, diabetes and lung cancer; J-shaped curves with maximum risk reduction (~10-20%) at about 30-60 min/week; diabetes curve L-shaped with large reduction up to 60 min/week. | Spec (c): 2-4 short strength blocks a week (~30-60 min) sit where the association is strongest. Useful for honest "why strength matters" copy. | BJSM; observational design. Strong evidence of association (not causation). Citation count not verified (2026-11-07). | n/a; do not turn into a health promise (Delva's no-promise rule). | 30-60 min/week as a realistic weekly strength target. | Self-reported activity; J-shape beyond 60 min is uncertain; a later commentary in the search results notes an 8-study overlap with another meta-analysis (most likely [PMC10199130](https://pmc.ncbi.nlm.nih.gov/articles/PMC10199130); attribution not confirmed). |
| 8 | Halperin et al., "Accuracy in predicting repetitions to task failure in resistance exercise: a scoping review and exploratory meta-analysis", *Sports Medicine* 2022 — [SportRxiv preprint](https://sportrxiv.org/index.php/server/preprint/view/67); [publication record](https://cris.iucc.ac.il/en/publications/accuracy-in-predicting-repetitions-to-task-failure-in-resistance-/) | Scoping review + exploratory meta-analysis | 13 publications (12 studies, 414 participants). People tend to underpredict reps to failure, missing by about one rep; accuracy better closer to failure, in sets of 12 reps or fewer, with heavier loads and in later sets. | Effort prompts and rep counting: RIR self-report is imperfect, worst in long, light sets, which is exactly what bodyweight sets often are. Strong case for using rep-speed slowdown from the camera as an extra signal. | Sports Medicine. Strong evidence that RIR is imperfect (exploratory pooling, heterogeneous). Citation count not verified (2026-11-07). | n/a | Ask for RIR near the end of a set and in later sets; keep rep ranges moderate. | Mostly loaded exercises and trained or mixed samples; the "~1 rep" figure came from a secondary summary of the paper. |
| 9 | Konrad et al., "Chronic effects of stretching on range of motion with consideration of potential moderating variables: a systematic review with meta-analysis", *J Sport Health Sci* 2024;13(2):186-194, DOI 10.1016/j.jshs.2023.06.002 — [PubMed](https://pubmed.ncbi.nlm.nih.gov/37301370/); [PMC10980866](https://pmc.ncbi.nlm.nih.gov/articles/PMC10980866) | Meta-analysis | 77 studies, 186 effect sizes; stretch training of at least 2 weeks increased ROM with a moderate effect vs control; PNF and static stretching beat ballistic/dynamic; women gained more; volume, intensity and frequency were not significant moderators. | Move Freely: short, regular static or PNF-style holds are enough; no need for long sessions. Hold timing feature fits static holds. | JSHS (open access per DOAJ). Strong evidence. Citation count not verified (2026-11-07). | n/a (licence of article unverified) | Prefer static/PNF for ROM goals; consistency over dose. | Healthy participants; ROM is not the same as function or injury risk. |
| 10 | Bosquet et al., "Effect of training cessation on muscular performance: a meta-analysis", *Scand J Med Sci Sports* 2013;23(3):e140-e149, DOI 10.1111/sms.12047 — [record](https://zendy.io/title/10.1111/sms.12047); [BVS/MEDLINE record](https://pesquisa.bvsalud.org/bvsms/resource/pt/mdl-23347054) | Meta-analysis (foundational) | 103 of 284 studies. Stopping resistance training reduced all muscular performance measures (submaximal strength SMD -0.62; maximal force SMD -0.46); losses grow with break length (dose-response); larger losses in people over 65 and, for maximal force and power, in inactive people vs recreational athletes. | Spec (d): physiological basis for "the next unfinished workout stays next" plus a re-entry rule for long breaks. | SJMSS; large meta-analysis. Strong evidence (foundational, 2013). Citation count not verified (2026-11-07). | n/a | Short breaks cost little; long breaks need a step back. | Did not measure muscle mass; exact week thresholds not extracted from the full text. |

### Inferences
- Taken together, the table supports a short, frequent, no-equipment format for general fitness and hypertrophy-style goals, with honest limits on maximal strength (items 1, 5) and on aerobic minutes (items 2, 3).
- Several Delva features have direct evidence hooks: hold timing (static stretching, item 9), effort cues that do not demand failure (item 1), and objective rep-speed cues to make up for weak self-rated effort (item 8).

### Gaps
- Full texts of items 1, 6 and 8 were not opened; exact numbers inside them (ACSM's per-goal sets/loads/RIR, Pelland's curves, Halperin's pooled error) should be checked before use in copy or specs.

---

## 2. Official guidelines (ACSM 2009 → 2026, ACSM 2011, ACSM GETP, WHO 2020, US 2018, UK CMO 2019)

### Takeaway
ACSM published a new resistance-training position stand in 2026, the first update since 2009. Across ACSM, WHO, the US and the UK, the shared floor is muscle-strengthening on at least 2 days a week plus 150 min of moderate (or 75 min vigorous) aerobic activity, and since 2018-2020 short bouts count.

### Cited Findings
- **ACSM 2009 is superseded.** The 2026 stand "updates the ACSM 2009 position stand on progression models in resistance training for healthy adults" — [ResearchGate record of the 2026 stand](https://www.researchgate.net/publication/402605722_American_College_of_Sports_Medicine_Position_Stand_Resistance_Training_Prescription_for_Muscle_Function_Hypertrophy_and_Physical_Performance_in_Healthy_Adults_An_Overview_of_Reviews); [APTA CPG listing](https://www.apta.org/patient-care/evidence-based-practice-resources/cpgs/american-college-of-sports-medicine-position-stand-resistance-training-prescription-for-muscle-function-hypertrophy-and-physical-performance-in-healthy-adults-an-overview-of-reviews). Strong evidence (official).
- **2026 stand citation and dates:** Currier et al., *Med Sci Sports Exerc* 2026;58(4):851-872, DOI 10.1249/mss.0000000000003897 — [Ovid](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand). Press release dated March 2026 ([EurekAlert](https://www.eurekalert.org/news-releases/1119943)); April 2026 print issue. Sources differ on "16" vs "17" years since the last update.
- **2026 stand, abstract-level conclusions:** progressive resistance training with variable prescription improves muscle function, size and performance; training to momentary failure, equipment type, exercise complexity, set structure, time under tension, blood-flow restriction and periodisation did not consistently affect outcomes; load and weekly frequency affected strength but not hypertrophy; number of sets affected both — [Ovid record](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand); [ACSM Science Spotlight](https://acsm.org/science-spotlight-acsm-releases-new-position-stand-on-resistance-training/). Strong evidence.
- **2026 stand, scale and headline message (press):** 137 systematic reviews, more than 30,000 participants; "any regular resistance training helps"; training all major muscle groups at least twice a week matters more than a "perfect" plan — [Newswise press release](https://www.newswise.com/articles/acsm-unveils-landmark-2026-resistance-training-guidelines-first-update-in-17-years); [Recreation Management](https://recmanagement.com/articles/155711/acsm-unveils-landmark-2026-resistance-training-guidelines). Strong evidence for the direction; numbers via press only.
- **ACSM's Guidelines for Exercise Testing and Prescription, 12th edition** (Wolters Kluwer, 2025) is the current edition; ACSM says the resistance-training section of Chapter 5 was significantly updated — [ACSM book page](https://acsm.org/education-resources/books/guidelines-exercise-testing-prescription); [ACSM GETP12 excerpt](https://acsm.org/wp-content/uploads/2025/03/GETP12_excerpt.pdf?e=1). I did not access its prescription tables.
- **Garber 2011 flexibility dose:** a total of 60 s per exercise for each major muscle-tendon group on ≥2 days/week (stand text) — [URI repository](https://digitalcommons.uri.edu/kinesiology_facpubs/137); holds of 10-30 s to tightness or slight discomfort, 2-3 days/week (press summary) — [Athletic Business](https://www.athleticbusiness.com/health-fitness/acsm-issues-new-guidelines-on-exercise-quality-quantity.html).
- **WHO 2020:** removed the 10-minute minimum bout for aerobic activity; recommends reducing sedentary behaviour for all ages, though no threshold could be quantified — [Bull et al. 2020, PMC7719905](https://pmc.ncbi.nlm.nih.gov/articles/PMC7719905); [IJBNPA commentary](https://link.springer.com/doi/10.1186/s12966-020-01048-w). Strong evidence.
- **US PAG 2018:** 150-300 min/week moderate or 75-150 min/week vigorous; muscle-strengthening of all major muscle groups at moderate or greater intensity on ≥2 days/week; bouts of any length now count (the first edition counted only ≥10-minute bouts) — [HHS executive summary](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); [CDC reprint of JAMA summary](https://stacks.cdc.gov/view/cdc/121857/cdc_121857_DS1.pdf). Strong evidence.
- **UK CMO 2019:** life-course guidelines with a chapter for adults 19-64; at least 150 min moderate activity per week "or" an alternative (snippet truncated); strengthening activities for major muscle groups; "even short sessions of activity can have health benefits" — [gov.uk guidelines](https://gov.uk/government/publications/physical-activity-guidelines-uk-chief-medical-officers-report/uk-chief-medical-officers-physical-activity-guidelines); [gov.uk infographic text](https://gov.uk/government/publications/physical-activity-guidelines-adults-and-older-adults/physical-activity-for-adults-and-older-adults-19-and-over-text-of-the-infographic); [Chartered Society of Physiotherapy news](https://csp.org.uk/news/2019-09-11-even-short-sessions-activity-can-have-health-benefits-government-advises); [BMJ blog "some is good, but more is better"](https://blogs.bmj.com/bmj/2019/09/07/cmos-new-physical-activity-guidelines-demonstrate-under-appreciation-as-a-clinical-approach/). Conflict: one secondary page in the search results still described "bouts of 10 minutes or more", which looks like the older 2011 wording; the CSP item and the BMJ blog point the other way.

### Inferences
- Delva's "no promises" rule and "approved shorter versions earn credit" rule fit the post-2018 guideline language (any activity counts, more is better).
- Because ACSM 2026 found periodisation and exercise complexity did not consistently matter, Delva can choose simple, easily tracked exercises (good for vision tracking) without losing effectiveness.

### Gaps
- ACSM 2009 novice numbers (commonly cited as 8-12 RM, 60-70% 1RM, 1-3 sets, 2-3 days/week) were not verified this session; a practitioner site lists "2-3 days per week ... 8-12 RM for novices" but attributes it to ACSM 2002 ([ExRx](https://exrx.net/WeightTraining/Guidelines)). Treat as unverified.
- ACSM 2026 per-goal numbers (e.g., ≥80% 1RM for strength, 2-3 sets, 2-3 RIR) appeared only in blogs, partly contradicting each other; check the stand itself.
- WHO 2020 aerobic and strength numbers and the UK "75 minutes vigorous" / "very vigorous" wording were not visible in retrieved snippets.

---

## 3. Minimum effective dose and dose-response

### Takeaway
Small doses work: a single hard set per exercise 2-3 times a week raises strength, weekly volume (sets) is the main lever, frequency matters mainly by adding volume, and hypertrophy happens across a wide range of loads if sets are hard. For a 15-20 minute product the binding constraint is weekly volume, not session frequency per se.

### Cited Findings
- **Muscle-strengthening and mortality:** 16 cohort studies; 10-17% lower risk of several outcomes; maximum risk reduction at about 30-60 min/week (J-shaped) — [Momma et al. 2022, BJSM 56(13):755](https://observateperu.ins.gob.pe/sites/default/files/2025-02/755.full_.pdf). Strong evidence (observational).
- **Time-efficient design (narrative review):** supersets, drop sets and rest-pause roughly halve training time while keeping volume; for time-limited people, reaching sufficient weekly volume matters more than a given frequency; most cited studies used untrained or recreationally active samples — [Iversen et al. 2021, Sports Med 51:2079-2095, PMC8449772](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772). Weak evidence (narrative review), but well referenced.
- **Minimum dose for strength (trained men):** 6 studies; every included study found a single set performed 1-3 times weekly produced significant 1RM gains (pooled ~12 kg; squat ~17.5 kg; bench ~8.3 kg, wide CIs). Suggested minimum often summarised as one set of 6-12 reps at 70-85% 1RM, 2-3x/week — [Androulakis-Korakakis, Fisher & Steele, Sports Med (2019 online / 2020 issue), DOI 10.1007/s40279-019-01236-0](https://link.springer.com/doi/10.1007/s40279-019-01236-0); [PubMed 31797219](https://www.pubmed.gov/31797219/); minimum-dose summary as quoted in [Iversen 2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772). Strong evidence for "one set works" (small meta-analysis, trained men).
- **Volume dose-response for hypertrophy:** 15 studies, 34 treatment groups; weekly sets as a continuous variable significantly predicted muscle growth (P=0.002); the <5 / 5-9 / 10+ sets categories showed only a trend (P=0.074); graded dose-response — [Schoenfeld, Ogborn & Krieger, J Sports Sci 2017 (online 2016), PubMed 27433992](https://www.pubmed.gov/27433992/). Strong evidence (meta-analysis). The often-quoted "0.37% per set" figure could not be verified.
- **Frequency, volume-equated:** higher frequency gave greater strength gains overall, but with volume equated there was no significant frequency effect — [Grgic et al. 2018, Sports Med, DOI 10.1007/s40279-018-0872-x](https://link.springer.com/10.1007/s40279-018-0872-x). Same conclusion for hypertrophy in [Schoenfeld, Ogborn & Krieger 2016 (PubMed 27102172)](https://pubmed.ncbi.nlm.nih.gov/27102172/) and the review by [Grgic, Schoenfeld & Latella 2019, J Sci Med Sport](https://ro.ecu.edu.au/ecuworkspost2013/5665). Strong evidence.
- **Frequency per Pelland 2026:** only strength shows a consistently identifiable frequency effect; strength has more pronounced diminishing returns with volume — [SportRxiv v2](https://sportrxiv.org/index.php/server/preprint/view/460); [SPONET record](https://sponet.de/sponet/Record/4097139?lng=en). Strong evidence (pending full-text check).
- **High frequency is tolerable when volume is spread:** 3 vs 6 sessions/week, volume-equated, gave similar strength gains over 6 weeks in resistance-trained men — [Šarić et al. 2018 (PDF)](https://researchgate.net/profile/Jozo-Grgic/publication/327435932_Resistance_Training_Frequencies_of_3_and_6_Times_Per_Week_Produce_Similar_Muscular_Adaptations_in_Resistance-Trained_Men/links/5bd26d6892851c6b278f311d/Resistance-Training-Frequencies-of-3-and-6-Times-Per-Week-Produce-Similar-Muscular-Adaptations-in-Resistance-Trained-Men.pdf). Weak evidence (single RCT, trained men).
- **Load:** 21 studies; low-load (≤60% 1RM) and high-load (>60%) training gave similar hypertrophy; heavy loads give better maximal strength — [Schoenfeld et al. 2017, J Strength Cond Res 31(12), PubMed 28834797](https://pubmed.ncbi.nlm.nih.gov/28834797/). Strong evidence. Higher loads (>80% 1RM) maximised strength in the NMA — [Currier et al. 2023](https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf).
- **Very low loads:** Lasevicius et al. 2018 (20/40/60/80% 1RM, volume-equated) reportedly found all loads increased strength and size but 20% 1RM was suboptimal — only via a document copy and blog summaries ([Scribd copy](https://www.scribd.com/document/494479978/lasevicius2018)). Weak evidence; primary not verified.
- **Exercise snacks:** defined as brief, discrete vigorous bouts (e.g., stair climbing) spread through the day; review by Islam, Gibala & Little, *Exerc Sport Sci Rev* 2022;50:31-37 (as cited in [Jenkins et al. 2023, J Physiol](https://strathprints.strath.ac.uk/87342/1/Jenkins-etal-JP-2023-Benefits-beyond-cardiometabolic-health.pdf)). Jenkins et al. 2019 (*Appl Physiol Nutr Metab*): three ~20-s vigorous stair-climbing bouts per day, 3 days/week, 6 weeks raised cardiorespiratory fitness in inactive young adults — [McMaster news](https://news.mcmaster.ca/exercise-snacks-make-fitness-easier-researchers-find-short-bouts-of-stairclimbing-throughout-the-day-can-boost-health/); [protocol citing the design](https://cdn.clinicaltrials.gov/large-docs/26/NCT05574426/Prot_000.pdf). A 2025 systematic review and meta-analysis of RCTs called exercise snacks promising for inactive people, strongest for stair-climbing-type vigorous bouts — [BJSM blog](https://blogs.bmj.com/bjsm/2025/10/24/exercise-snacks-small-bouts-big-benefits/); a 2025 scoping review found bodyweight exercises and stair climbing the most common protocols — [Sports Med Open 2025 (DOAJ)](https://doaj.org/article/a912354492b143faa84db9032de617f2). Weak evidence (small trials; secondary access).

### Inferences
- With sessions fixed at 15-20 min, Delva's weekly volume is set mainly by days per week. Moving a user from 3 to 5 days raises weekly volume by about two thirds; dropping from 4 to 3 lowers it by a quarter. Check-in frequency suggestions are therefore volume decisions (Iversen, Pelland, Grgic).
- "Approved shorter versions earn credit" is well supported if a short version keeps at least one hard set per main movement (Androulakis-Korakakis; Momma's "some counts").
- Exercise snacks are a credible evidence base for an optional micro-session format later, but evidence is thinner than for full sessions.

### Gaps
- Primary text of Schoenfeld, Grgic & Krieger 2019 (frequency and hypertrophy) not retrieved; only blog summaries.
- No retrieved study measured the minimum effective dose in untrained adults using bodyweight only.

---

## 4. Bodyweight efficacy and progression/regression principles

### Takeaway
Small RCTs show progressive push-up training builds upper-body strength about as well as bench pressing over 4-8 weeks, and ACSM 2026 found equipment type does not consistently change outcomes. Bodyweight work is fine for muscle size and general strength if sets stay hard and exercises progress; it is weaker for maximal strength. Progression ladders themselves are coaching practice, not tested frameworks.

### Cited Findings
- **Progressive calisthenics RCT:** 23 moderately trained men, push-up progression (n=14) vs bench press (n=9), 3 days/week for 4 weeks; both improved bench 1RM (p<0.001); push-up progression improved more in the push-up group; no significant change in muscle thickness. Authors: first demonstration that calisthenics using "different progressive variations to maintain strength training programming variables" can improve upper-body strength — [Kotarsky et al. 2018, J Strength Cond Res 32(3):651-659, PubMed 29466268](https://pubmed.ncbi.nlm.nih.gov/29466268/). Weak evidence (small, short RCT), but directly about a variation ladder.
- **Push-up vs bench at matched relative load:** 18 untrained men, both at 40% of bench 1RM, twice a week for 8 weeks; authors concluded comparable hypertrophy and strength — [Kikuchi & Nakazato 2017, J Exerc Sci Fit, PMC5812864](https://pmc.ncbi.nlm.nih.gov/articles/PMC5812864); [DOAJ](https://doaj.org/article/f70cce826f3348b5b4f3ace8cf8ac33e). Weak evidence (small RCT; snippet showed a biceps difference favouring bench).
- **Calatayud et al. 2015** (elastic-band push-up vs bench press at matched EMG, similar strength gains) — primary paper not retrieved; only secondary summaries that disagree on duration (5 vs 6 weeks). Unverified.
- **Equipment and complexity:** equipment type and exercise complexity did not consistently affect outcomes; time under tension and set structure also did not — [ACSM 2026 stand (Ovid)](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand). Strong evidence.
- **Hypertrophy across loads, strength needs load:** [Schoenfeld et al. 2017](https://pubmed.ncbi.nlm.nih.gov/28834797/); [Currier et al. 2023](https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf). Strong evidence.
- **Full-range strength training improves flexibility too:** strength training and stretching gave similar ROM gains (11 studies, n=452; ES -0.22, 95% CI -0.55 to 0.12, p=0.206) — [Afonso et al. 2021, Healthcare 9:427, DOI 10.3390/healthcare9040427](https://estudogeral.uc.pt/handle/10316/104612). Weak-to-moderate evidence (small, heterogeneous meta-analysis).

### Bodyweight progression/regression principles (for Delva authoring)
Labels: evidence-backed where a source is given; otherwise **opinion / industry practice**.
1. **Leverage / body angle** (incline push-up → floor → feet-elevated; assisted squat → bodyweight squat → split squat → rear-foot-elevated split squat). A ladder of variations is what Kotarsky tested ([PubMed 29466268](https://pubmed.ncbi.nlm.nih.gov/29466268/)); the specific rungs are practice. The percentage of body weight lifted in each push-up variation is often quoted from Ebben et al. 2011, which I could not verify (Gap).
2. **Reps within a band, then move up a variation** (double progression): consistent with hypertrophy across load ranges if effort is high ([Schoenfeld 2017](https://pubmed.ncbi.nlm.nih.gov/28834797/)) and with RIR accuracy dropping above ~12 reps ([Halperin 2022](https://sportrxiv.org/index.php/server/preprint/view/67)). The band's upper cap is a design choice (no source found). Comparison: openGym implements double progression and time-based rules for loaded and timed exercises ([openGym repo](https://github.com/DuarteSantos8/openGym)); the same logic maps to "reps then harder variation" and "hold seconds then harder variation" without loads.
3. **Unilateral variations** (split squat, single-leg hip bridge): practice.
4. **Range of motion** (deficit push-up, deeper squat): practice; full-ROM strength work also improves ROM ([Afonso 2021](https://estudogeral.uc.pt/handle/10316/104612)).
5. **Tempo, pauses and isometric holds:** use as a difficulty dial; ACSM 2026 found time under tension does not by itself consistently change outcomes ([Ovid](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand)).
6. **Density / rest and pairing** (supersets, circuits) to fit volume into 15-20 min ([Iversen 2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772)).
7. **Sets per week** as the main lever; count indirect work at half credit ([Pelland 2026](https://sportrxiv.org/index.php/server/preprint/view/460); [Schoenfeld 2017 volume](https://www.pubmed.gov/27433992/)).
8. **Regressions** mirror progressions (raise the hands, shorten range, reduce reps, add support). Practice.

### Inferences
- Delva's vision tracking can gate a progression on form (e.g., depth or body line held across the last reps) as well as on reps, which no study tested; label it practice.
- For Build Strength, the honest claim is "stronger at the movements you train and in everyday tasks", not "as strong as lifting heavy weights" (Currier 2023).

### Gaps
- No meta-analysis of calisthenics in untrained 18-64 adults was verified. A 2025 meta-analysis of 102 studies in older adults (mean age ~70) reported bodyweight training gains similar to free weights or machines, but I only found a press article ([ScienceAlert](https://www.sciencealert.com/you-only-need-1-piece-of-equipment-for-strength-training-and-its-free)); primary not identified. A Saeterbakken et al. 2022 calisthenics review was mentioned in a blog, not verified.
- No NSCA or ACSM document defining a bodyweight progression ladder was found.

---

## 5. Effort scales (RPE / RIR) for novices

### Takeaway
RIR-based RPE scales are valid and practical, but people misjudge reps to failure by about one rep on average, novices underrate effort near maximum, and accuracy is worst in long, light sets. It improves with experience and closer to failure. Delva should not rely on self-rated RIR alone for beginners.

### Cited Findings
- **Pooled accuracy:** 13 publications, 12 studies, 414 participants; tendency to underpredict; error around one repetition with considerable heterogeneity; better accuracy closer to failure, with ≤12 reps, heavier loads and in later sets — [Halperin et al. 2022, Sports Med](https://cris.iucc.ac.il/en/publications/accuracy-in-predicting-repetitions-to-task-failure-in-resistance-/); [preprint](https://sportrxiv.org/index.php/server/preprint/view/67). Strong evidence that RIR is imperfect.
- **Experience helps but does not fix it:** prediction "not perfectly accurate" for most trainees, tending to improve with resistance-training experience; authors advise caution using RIR to prescribe — [PMC5712461](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5712461/) (authors and venue, Steele et al., PeerJ 2017, are from recall; the page snippet did not show them). Weak evidence (single study). The same paper notes a prior study found no effect of experience: mixed evidence.
- **Novices vs experienced (RIR-based RPE scale):** 15 experienced (5.2 yr) vs 14 novice (0.4 yr) squatters; experienced lifters recorded higher RPE at 1RM (p=0.023), i.e., novices underrated a true max; velocity correlated inversely with RPE in both groups (experienced r=-0.88; novices r=-0.77) — [Zourdos et al. 2016, J Strength Cond Res 30(1):267-275](https://openrepository.aut.ac.nz/items/efef3b25-6701-4fb5-bb82-55fcd2a26027/full). Weak evidence (small study), foundational for the RIR scale (RPE 10 = 0 RIR, 9 = 1 RIR...). Application guidance: [Helms et al. 2016, Strength Cond J](https://openrepository.aut.ac.nz/items/92cefeac-7c32-44f1-bfbc-f48f4a5dd8cf/full). Opinion / practice (applied review).
- **OMNI-RES (0-10 pictorial scale):** concurrent validity in 40 recreationally trained 18-30-year-olds doing biceps curls and knee extensions, for active-muscle and whole-body ratings — [Robertson et al. 2003, MSSE 35(2):333-341, record](https://vufind-test.katalog.k.utb.cz/SummonRecord/FETCH-LOGICAL-c551t-ad50b0f1e5e68fd311680a33d90b5ed10b82b01f0459eca2a8c5d73b0ca8a29a2). Foundational; strong for validity in that population.
- **Failure is not required:** training to momentary failure did not consistently affect outcomes — [ACSM 2026 (Ovid)](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand). Strong evidence.

### Inferences
- Rep-velocity slows as sets approach failure (Zourdos' velocity-RPE relationship). Delva's camera already measures rep timing, so a "reps are slowing" audio cue could act as an objective proximity-to-failure signal. This is a design inference; no study validated phone-camera velocity for bodyweight RIR.
- For First Steps, a simple picture scale (OMNI-style) and a plain question ("How many more could you have done?") are likely easier than "RPE 8"; ask near the end of the set and on later sets (Halperin).
- Because novices tend to underpredict (think they are closer to failure than they are), programs written as "stop with 2-3 left" may in practice be easier than intended for beginners; rep targets plus rep-slowdown cues can correct this.

### Gaps
- No 2023-2026 study on whether feedback or practice improves RIR accuracy in novices was found.
- No study of RIR accuracy for bodyweight exercises (push-ups, squats) in untrained adults was found.

---

## 6. Warm-ups and cool-downs

### Takeaway
Warm-ups reliably help performance; cool-downs do little for recovery, soreness or injury. For 15-20 minute sessions, a short, movement-specific warm-up is justified, and the cool-down can be short or used for flexibility work that counts toward Move Freely goals.

### Cited Findings
- **Warm-up and performance:** 32 high-quality studies (PEDro-style score mean 7.6/10); warm-up improved performance in 79% of the criteria examined; few well-conducted RCTs — [Fradkin et al. 2010, J Strength Cond Res, PubMed 19996770](https://pubmed.ncbi.nlm.nih.gov/19996770/). Foundational; strong-to-moderate evidence. Note: 79% refers to outcome criteria, not studies.
- **Mechanisms and design:** warm-up strategies developed largely by trial and error; review of temperature and metabolic mechanisms and recommendations — [McGowan et al. 2015, Sports Med 45(11):1523-1546, PubMed 26400696](https://pubmed.ncbi.nlm.nih.gov/26400696/). Weak evidence (narrative review), useful practice guidance.
- **Cool-down:** active cool-down has little effect on same-day or next-day performance; does not appear to prevent injuries; early evidence suggests it does not blunt long-term adaptation; largely ineffective for most psychophysiological recovery markers, though possibly better than a passive cool-down for some — [Van Hooren & Peake 2018, Sports Med, DOI 10.1007/s40279-018-0916-2](https://rd.springer.com/content/pdf/10.1007/s40279-018-0916-2.pdf). Weak-to-moderate evidence (narrative review of trials).

### Inferences
- Use the first sets of the main exercises at an easier variation as the warm-up (a "ramp"), which spends warm-up time on useful practice and gives the camera an early form check. Practice.
- Keep the cool-down short and honest: present it as relaxation and range work, not as "recovery" or "preventing soreness" (Van Hooren & Peake).

### Gaps
- Evidence that general warm-ups prevent injury in recreational home exercisers was not retrieved (sport-specific programs like FIFA 11+ were out of scope and not searched).

---

## 7. Deloads: do beginners need them?

### Takeaway
There is no evidence that novices on short, bodyweight programs need scheduled deloads. Deload consensus comes from coaches of trained strength athletes, and the one deload RCT (trained lifters) found a full week off slightly reduced strength gains without affecting muscle growth.

### Cited Findings
- **Delphi consensus (strength and physique sport coaches):** no clear definition existed; consensus describes deloading as a short period of reduced training stress to limit fatigue and improve readiness; how deloads should be integrated was "unknown" before the study — [Bell et al. 2023, Sports Med Open, PMC10511399](https://pmc.ncbi.nlm.nih.gov/articles/PMC10511399/). Opinion / expert consensus.
- **Deload RCT:** 39 resistance-trained young adults (29 men, 10 women); 1 week of no training at the midpoint of a 9-week program vs continuous training; continuous training gave greater lower-body isometric and dynamic strength gains; no appreciable differences in muscle size, local endurance or power — [Coleman et al. 2024, PeerJ 12:e16777](https://peerj.com/articles/16777); [PubMed 38274324](https://pubmed.ncbi.nlm.nih.gov/38274324/). Weak evidence (single RCT, trained). Licence: CC-BY 4.0.

### Inferences
- In practice, missed workouts and paused days already act as unplanned deloads for app users. A scheduled deload chapter is not needed for 8-week novice programs; a lighter final session in each chapter (e.g., the check-in workout) is a reasonable practice choice for motivation and testing.

### Gaps
- No novice-specific deload study was found.

---

## 8. HIIT for untrained adults (relevant to Go Further)

### Takeaway
HIIT raises aerobic fitness at least as much as continuous training, with a large effect versus no exercise, so short interval sessions can work for Go Further. The open question is adherence and how unpleasant hard intervals feel for inactive beginners.

### Cited Findings
- **Healthy adults 18-45:** 28 studies; HIT vs endurance training: possibly small benefit for HIT (+1.2 mL·kg⁻¹·min⁻¹ ±0.9); HIT vs no-exercise control: likely large benefit (+5.5 mL·kg⁻¹·min⁻¹) — [Milanović, Sporiš & Weston 2015, Sports Med](https://research.tees.ac.uk/en/publications/effectiveness-of-high-intensity-interval-training-hit-and-continu-3/). Strong evidence.
- **Clinical populations:** 10 studies, 273 patients (coronary artery disease, heart failure, hypertension, metabolic syndrome, obesity); VO2peak rose more after HIIT than moderate continuous training (mean difference 3.03 mL/kg/min) — [Weston, Wisløff & Coombes 2014, BJSM (third-party PDF copy)](https://paulogentil.com/pdf/hiit/High-intensity%20interval%20training%20in%20patients%20with%20lifestyle-induced%20cardiometabolic%20disease%20-%20a%20systematic%20review%20and%20meta-analysis.pdf). Strong evidence for efficacy, but supervised clinical settings, so not a basis for unsupervised app safety.
- **Public-health debate:** Biddle argues HIT will not be adopted or maintained by many people (competence, aversive intensity; RE-AIM analysis) and the priority is helping the least active do more; Batterham argues practical, scalable protocols exist, that critiques attack all-out sprint protocols nobody proposes for public health, and cites comparable enjoyment vs continuous exercise — [Biddle & Batterham 2015, IJBNPA, DOI 10.1186/s12966-015-0254-9](https://link.springer.com/doi/10.1186/s12966-015-0254-9). Opinion (structured debate by two experts).
- **Very short vigorous bouts:** see exercise snacks in section 3 ([BJSM blog on 2025 meta-analysis](https://blogs.bmj.com/bjsm/2025/10/24/exercise-snacks-small-bouts-big-benefits/)). Weak evidence.

### Inferences
- Go Further at beginner level should use self-paced, "hard but controlled" intervals (not all-out sprints) with a steady-pace alternative, and track how users rate sessions; this follows Batterham's "practical protocols" position and Biddle's adherence concern.
- Bodyweight intervals (e.g., marching, step-ups, squats) are lower-impact options; whether they reach "vigorous" intensity for fitter users is unknown without heart-rate data.

### Gaps
- Not retrieved: safety data (adverse events) for unsupervised HIIT in untrained healthy adults; meta-analyses of affective responses to HIIT vs continuous exercise; low-volume HIIT meta-analyses; pre-exercise screening (e.g., PAR-Q+) recommendations.

---

## 9. Flexibility and mobility programs (Move Freely)

### Takeaway
Regular stretching for a few weeks reliably improves range of motion, static and PNF stretching work best, and the exact dose matters less than doing it. Full-range strength training improves range about as well as stretching, which supports blending control and strength work into Move Freely.

### Cited Findings
- **ACSM dose:** ≥2 days/week, total 60 s per stretch per major muscle-tendon group — [Garber 2011 (URI record)](https://digitalcommons.uri.edu/kinesiology_facpubs/137); holds of 10-30 s to tightness or slight discomfort (press summary) — [Athletic Business](https://www.athleticbusiness.com/health-fitness/acsm-issues-new-guidelines-on-exercise-quality-quantity.html). Strong (guideline), foundational.
- **Chronic stretching meta-analysis:** 77 studies, 186 effect sizes; ≥2 weeks of stretching gave a moderate ROM increase vs control; static and PNF > ballistic/dynamic; women gained more; volume, intensity and frequency were not significant moderators — [Konrad et al. 2024, JSHS 13(2):186-194](https://pubmed.ncbi.nlm.nih.gov/37301370/). Strong evidence.
- **Strength training vs stretching for ROM:** no difference (11 studies, n=452; ES -0.22, 95% CI -0.55 to 0.12) — [Afonso et al. 2021, Healthcare](https://estudogeral.uc.pt/handle/10316/104612). Weak-to-moderate evidence.

### Inferences
- Move Freely sessions can be 15-20 min of static/PNF-style holds plus slow full-range strength movements, 3 days/week, and meet the ACSM dose with time to spare. Delva's hold timer fits; "contract-relax" (PNF-like) cues can be delivered by audio. Practice.
- Since frequency was not a significant moderator, a 3-day start is sufficient for ROM goals; 5 days may help adherence habits more than ROM.

### Gaps
- Yoga and Pilates meta-analyses for flexibility were not retrieved (search budget ran out).
- The "≥5 minutes of stretching per muscle per week" figure often attributed to Thomas et al. 2018 (Int J Sports Med) was not verified.

---

## 10. Prescription numbers for untrained adults (with sources)

All numbers checked 2026-11-07. "Unverified" means I could not confirm it this session.

| Variable | Number | Source | Label |
|---|---|---|---|
| Muscle-strengthening frequency | All major muscle groups, ≥2 days/week, moderate or greater intensity | [US PAG 2018](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); ACSM 2026 via [press](https://www.newswise.com/articles/acsm-unveils-landmark-2026-resistance-training-guidelines-first-update-in-17-years); WHO 2020 (numbers unverified this session) | Strong |
| Weekly muscle-strengthening time linked to lowest mortality risk | ~30-60 min/week (J-shaped) | [Momma 2022](https://observateperu.ins.gob.pe/sites/default/files/2025-02/755.full_.pdf) | Strong (observational) |
| Minimum strength stimulus | 1 set per exercise, 1-3x/week produced 1RM gains (trained men, loaded) | [Androulakis-Korakakis 2020](https://link.springer.com/doi/10.1007/s40279-019-01236-0) | Strong (small meta) |
| Weekly volume for hypertrophy | Graded dose-response; 10+ sets/muscle/week trended best (P=0.074) | [Schoenfeld 2017](https://www.pubmed.gov/27433992/) | Strong (direction); weak (threshold) |
| Frequency (volume-equated) | No significant effect on hypertrophy; strength effect mostly via volume | [Grgic 2018](https://link.springer.com/10.1007/s40279-018-0872-x); [Schoenfeld 2016](https://pubmed.ncbi.nlm.nih.gov/27102172/); [Pelland 2026](https://sportrxiv.org/index.php/server/preprint/view/460) | Strong |
| Best-ranked prescriptions | Strength: high-load multiset 3x/week (SMD 1.60); hypertrophy: high-load multiset 2x/week (SMD 0.66) | [Currier 2023](https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf) | Strong |
| Load range for hypertrophy | Similar growth with ≤60% and >60% 1RM if sets are hard; 20% 1RM possibly suboptimal | [Schoenfeld 2017 load](https://pubmed.ncbi.nlm.nih.gov/28834797/); Lasevicius 2018 (unverified primary) | Strong / weak |
| Effort | Momentary failure not required | [ACSM 2026](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand) | Strong |
| Effort target in RIR | "2-3 RIR" attributed to ACSM 2026 by blogs | Unverified | Opinion until checked |
| Reps, sets per exercise, rest for novices | 8-12 RM, 1-3 sets, rest 1-3 min (commonly cited ACSM 2009) | Unverified ([ExRx citing 2002](https://exrx.net/WeightTraining/Guidelines)) | Unverified |
| RIR accuracy | Underprediction of ~1 rep; better with ≤12 reps and near failure | [Halperin 2022](https://sportrxiv.org/index.php/server/preprint/view/67) | Strong |
| Aerobic volume | 150-300 min moderate or 75-150 min vigorous per week; bouts of any length count | [US PAG 2018](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); [WHO bout change](https://pmc.ncbi.nlm.nih.gov/articles/PMC7719905) | Strong |
| HIIT effect | VO2max +5.5 mL/kg/min vs no exercise; +1.2 vs endurance training | [Milanović 2015](https://research.tees.ac.uk/en/publications/effectiveness-of-high-intensity-interval-training-hit-and-continu-3/) | Strong |
| Exercise snacks | 3 × ~20 s vigorous stair bouts/day, 3 days/week, 6 weeks improved fitness | [Jenkins 2019 via McMaster](https://news.mcmaster.ca/exercise-snacks-make-fitness-easier-researchers-find-short-bouts-of-stairclimbing-throughout-the-day-can-boost-health/) | Weak |
| Flexibility | ≥2 days/week; 60 s total per stretch; holds 10-30 s (press) | [Garber 2011](https://digitalcommons.uri.edu/kinesiology_facpubs/137) | Strong (foundational) |
| Flexibility modality | Static and PNF > dynamic/ballistic for chronic ROM; dose not a significant moderator | [Konrad 2024](https://pubmed.ncbi.nlm.nih.gov/37301370/) | Strong |
| Detraining | Losses grow with break length; SMD -0.62 submax strength, -0.46 max force | [Bosquet 2013](https://zendy.io/title/10.1111/sms.12047) | Strong |

---

## 11. Evidence on Delva spec decisions

### Takeaway
The evidence broadly **supports** all four decisions, with two caveats: (1) 15-20 minute sessions cannot by themselves reach aerobic guideline minutes, so copy must frame them as a contribution; (2) "resume where you left off" is sound after short breaks but needs a step-back rule after long ones. None of the specific numbers (8 weeks, 2-week chapters, 14 active days, 3/4/5 days) has been tested head-to-head; they are reasonable design choices inside the evidence, not evidence-derived optima.

### Cited Findings

**(a) 8-week minimum and 4 chapters of about two weeks (≥14 active days)**
- Supports: measurable strength gains appear within 4 weeks of progressive push-up training at 3 days/week — [Kotarsky 2018](https://pubmed.ncbi.nlm.nih.gov/29466268/) (weak). Fitness gains from exercise snacks within 6 weeks — [Jenkins 2019 via McMaster](https://news.mcmaster.ca/exercise-snacks-make-fitness-easier-researchers-find-short-bouts-of-stairclimbing-throughout-the-day-can-boost-health/) (weak). Stretching effects measurable from ≥2-week interventions — [Konrad 2024](https://pubmed.ncbi.nlm.nih.gov/37301370/) (strong).
- Supports: typical intervention lengths in the studies above sit around 4-12 weeks: 8 weeks ([Kikuchi & Nakazato 2017](https://pmc.ncbi.nlm.nih.gov/articles/PMC5812864)), 6-week training blocks ([Ogasawara 2013](https://link.springer.com/article/10.1007/s00421-012-2511-9)), 9 weeks ([Coleman 2024](https://peerj.com/articles/16777)), a recommended 6-12 weeks for minimum-dose blocks in powerlifters ([Androulakis-Korakakis 2021, Front Sports Act Living](https://frontiersin.org/journals/sports-and-active-living/articles/10.3389/fspor.2021.713655/text)). This is my tally of named studies, not a systematic count.
- Supports: muscle growth can be detected early (around 20 days of high-intensity training in Seynnes et al. 2007) — [third-party PDF copy](https://paulogentil.com/pdf/Early%20skeletal%20muscle%20hypertrophy%20and%20architectural%20changes%20in%20response%20to%20high-intensity%20resistance%20training.pdf) (weak; early imaging may be confounded, see Gaps).
- Neutral: periodisation did not consistently affect outcomes — [ACSM 2026](https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand) (strong). Chapters are therefore free to be a motivation and progression-checkpoint structure.
- Challenges: larger structural changes accumulate over months (e.g., 24-week training in [Ogasawara 2013](https://link.springer.com/article/10.1007/s00421-012-2511-9)), and gains decay when training stops ([Bosquet 2013](https://zendy.io/title/10.1111/sms.12047)). An 8-week program is a first block, not an end point.
- The 14-active-day floor: no direct evidence. Volume-equated high frequency (6 vs 3 days/week) did not harm strength gains in trained men ([Šarić 2018](https://researchgate.net/profile/Jozo-Grgic/publication/327435932_Resistance_Training_Frequencies_of_3_and_6_Times_Per_Week_Produce_Similar_Muscular_Adaptations_in_Resistance-Trained_Men/links/5bd26d6892851c6b278f311d/Resistance-Training-Frequencies-of-3-and-6-Times-Per-Week-Produce-Similar-Muscular-Adaptations-in-Resistance-Trained-Men.pdf)), so the floor is a pacing and habit rule rather than a physiological necessity.
- Strength of evidence: weak-to-moderate (supports; no direct comparison of program lengths).

**(b) 3, 4 or 5 starting days per week**
- Supports: ≥2 strength days/week is the guideline floor, so 3 exceeds it and 2 days later is still compliant — [US PAG 2018](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); ACSM 2026 via [press](https://www.newswise.com/articles/acsm-unveils-landmark-2026-resistance-training-guidelines-first-update-in-17-years) (strong).
- Supports: top-ranked strength prescription was 3x/week; top hypertrophy prescription 2x/week — [Currier 2023](https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf) (strong).
- Context: with volume equated, frequency adds little ([Grgic 2018](https://link.springer.com/10.1007/s40279-018-0872-x); [Schoenfeld 2016](https://pubmed.ncbi.nlm.nih.gov/27102172/)); frequency shows an effect on strength only ([Pelland 2026](https://sportrxiv.org/index.php/server/preprint/view/460)). With fixed session length, more days = more weekly volume, and volume has a graded dose-response ([Schoenfeld 2017](https://www.pubmed.gov/27433992/)). So 4-5 days should produce somewhat more than 3, with diminishing returns (strong for mechanism, inferred for Delva).
- Supports 5 days as safe if spread: 6 sessions/week with spread volume was fine in trained men ([Šarić 2018](https://researchgate.net/profile/Jozo-Grgic/publication/327435932_Resistance_Training_Frequencies_of_3_and_6_Times_Per_Week_Produce_Similar_Muscular_Adaptations_in_Resistance-Trained_Men/links/5bd26d6892851c6b278f311d/Resistance-Training-Frequencies-of-3-and-6-Times-Per-Week-Produce-Similar-Muscular-Adaptations-in-Resistance-Trained-Men.pdf)) (weak).
- Challenges: adherence. The least active are best served by getting them a little more active ([Biddle & Batterham 2015](https://link.springer.com/doi/10.1186/s12966-015-0254-9)) (opinion). For Move Freely, frequency was not a significant moderator of ROM gains ([Konrad 2024](https://pubmed.ncbi.nlm.nih.gov/37301370/)), so 5 days is not needed for ROM.
- Strength of evidence: strong for "≥2 days, volume matters"; weak for the specific 3/4/5 starting menu and its effect on adherence.

**(c) Sessions of 15-20 minutes including warm-up and cool-down**
- Supports (strength): 3-4 sessions with ~10-14 min of main work give ~30-55 min/week of muscle-strengthening, inside the 30-60 min/week band of lowest mortality risk ([Momma 2022](https://observateperu.ins.gob.pe/sites/default/files/2025-02/755.full_.pdf)); one hard set per exercise 2-3x/week raises strength ([Androulakis-Korakakis 2020](https://link.springer.com/doi/10.1007/s40279-019-01236-0)); supersets etc. halve session time ([Iversen 2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772)). Strong-to-moderate.
- Supports (fitness): HIIT improves VO2max substantially vs no exercise ([Milanović 2015](https://research.tees.ac.uk/en/publications/effectiveness-of-high-intensity-interval-training-hit-and-continu-3/)); very short vigorous bouts improve fitness in inactive adults ([Jenkins 2019](https://news.mcmaster.ca/exercise-snacks-make-fitness-easier-researchers-find-short-bouts-of-stairclimbing-throughout-the-day-can-boost-health/)).
- Challenges (aerobic minutes): arithmetic against [US PAG 2018](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf): 3 × 20 min = 60 min/week; 5 × 20 min = 100 min/week, and that is total session time including warm-up, strength and cool-down. That is below 150 min moderate. Even if a Go Further session had ~12-15 min of truly vigorous work, 5 sessions give ~60-75 min, at best the bottom of the 75-150 min vigorous range. Delva sessions alone will usually **not** meet the aerobic guideline; they count toward it because bouts of any length count ([US PAG 2018](https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf); [WHO 2020](https://pmc.ncbi.nlm.nih.gov/articles/PMC7719905)). (My calculation.)
- Challenges (volume): 10+ weekly sets per muscle is hard to reach for all major muscle groups in 3 short sessions ([Schoenfeld 2017](https://www.pubmed.gov/27433992/)); prioritise multi-joint movements and count indirect sets at half credit ([Pelland 2026](https://sportrxiv.org/index.php/server/preprint/view/460)).
- Warm-up/cool-down share: warm-ups help performance ([Fradkin 2010](https://pubmed.ncbi.nlm.nih.gov/19996770/)); cool-downs do little for recovery ([Van Hooren & Peake 2018](https://rd.springer.com/content/pdf/10.1007/s40279-018-0916-2.pdf)), so keep both brief and specific.
- Strength of evidence: strong that short sessions produce real benefits; strong that they fall short of aerobic minutes on their own.

**(d) Sequence-based missed workouts (no debt; next unfinished workout stays next)**
- Supports: losses after stopping are graded by break length, moderate in size, larger in older and inactive people ([Bosquet 2013](https://zendy.io/title/10.1111/sms.12047)) (strong). In untrained young men, 3-week breaks inside a 15-week or 24-week program did not reduce final hypertrophy or strength compared with continuous training; retraining caught up quickly ([Ogasawara 2011, PubMed 21771261](https://pubmed.ncbi.nlm.nih.gov/21771261/); [Ogasawara 2013, EJAP 113:975-985](https://link.springer.com/article/10.1007/s00421-012-2511-9)) (weak; n=14-15, men only). A full week off mid-program in trained lifters slightly reduced lower-body strength gains but not muscle growth ([Coleman 2024](https://peerj.com/articles/16777)) (weak).
- Supports "no debt": weekly volume, not catching up specific sessions, drives results ([Iversen 2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772)); making up missed sessions by doubling up only crams volume (my inference).
- Opinion: a practitioner review reads Bosquet as suggesting younger adults can be out "about a month" before performance suffers much ([Stronger by Science](https://www.strongerbyscience.com/detraining/)) (opinion; not peer-reviewed).
- Challenge: Bosquet did not measure muscle mass, and the data are mostly for strength, not aerobic fitness or flexibility. After long breaks, simply resuming the next workout may be too hard, especially for older or previously inactive users.
- Strength of evidence: moderate support for resuming after breaks of up to ~3 weeks; no direct evidence for an exact re-entry threshold.

### Inferences
- Suggested rule set (design proposal, not evidence): resume at the next workout after a pause of up to ~2-3 weeks; after longer pauses, offer a "welcome back" session one progression step easier, then continue the sequence. Paused days not counting toward the 14-day floor is consistent with this.
- The end-of-chapter check-in is the natural place to change frequency because weekly volume, not frequency per se, is the lever; when a user drops days, consider keeping the hardest sets and trimming accessory work (Androulakis-Korakakis, Pelland).
- The 8-week minimum should be framed as "a first block" with a clear next program, since gains decay when training stops (Bosquet).

### Gaps
- Aerobic detraining timelines (often cited from Mujika & Padilla 2000) were not verified this session.
- Whether early ultrasound/MRI hypertrophy measurements are inflated by muscle swelling (often discussed via Damas et al. 2016) was not verified.
- No trial compares program lengths or chapter structures in app users.

---

## 12. Gaps / open questions for Delva user research

### Takeaway
The biggest unknowns are behavioural, not physiological: which starting frequency people actually sustain, how beginners understand effort prompts, and how they react to hard intervals and to the 14-day floor.

### Cited Findings
- Adoption and maintenance, not efficacy, is the main dispute about HIIT for the public — [Biddle & Batterham 2015](https://link.springer.com/doi/10.1186/s12966-015-0254-9).
- RIR self-report is imperfect and improves with experience — [Halperin 2022](https://sportrxiv.org/index.php/server/preprint/view/67); [Steele 2017](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5712461/).

### Inferences (questions to test)
1. **Starting frequency vs adherence:** do First Steps users who choose 3 days complete more of the program than those who choose 4-5? Is 2 days needed from day one for some groups (e.g., 50-64, very inactive)?
2. **14-active-day floor:** do fast, motivated users feel blocked? Do they understand "active days" vs "paused days"?
3. **Effort prompts:** which wording do beginners answer reliably ("how many more could you do?", a 0-10 picture scale, or "easy / hard / very hard")? Does an audio "reps are slowing" cue match their self-rating?
4. **Camera rep-speed as an effort signal:** can phone video estimate slowdown across a bodyweight set well enough to suggest progression or regression? (Engineering + validation question; no study found.)
5. **Go Further intensity:** what share of beginners finish interval blocks; how do they rate enjoyment vs steady-pace alternatives?
6. **Re-entry after breaks:** at what pause length do users report a returning workout as too hard?
7. **Expectation setting:** what do users expect after 8 weeks, and how do they react to "no deadline" framing?
8. **Aerobic minutes:** do users want Delva to count non-app activity (walks) toward weekly minutes, given sessions alone rarely reach 150 min?
9. **Move Freely:** do women and men progress differently (Konrad found larger gains in women), and should messaging differ?
10. **Shorter approved versions:** how often are they used, and do they keep people in the program (supports "some is better than none")?

### Gaps (evidence not found or not verified this session)
- Primary sources not verified: ACSM 2009 novice numbers; ACSM 2026 per-goal numbers (sets, %1RM, RIR, rest); WHO 2020 numeric text; UK CMO vigorous and "very vigorous" wording; Schoenfeld, Grgic & Krieger 2019; Calatayud 2015; Lasevicius 2018; Ebben 2011 push-up load percentages; Thomas 2018 stretching dose; yoga and Pilates flexibility meta-analyses; HIIT affect and adherence meta-analyses; unsupervised HIIT safety; Mujika & Padilla aerobic detraining; Damas 2016 oedema; the 2025 older-adult bodyweight meta-analysis.
- Citation counts for every item: not verified (Semantic Scholar and Google Scholar unreachable, 2026-11-07).
- Licence status of WHO, US and UK guideline texts and of BJSM/JSHS articles: not verified (facts and training parameters can be followed regardless; quoting text or reusing figures needs a licence check).

---

## 13. Source list (all accessed or seen via search on 2026-11-07)

Guidelines
- ACSM 2026 Position Stand (Currier et al., MSSE 58(4):851-872): https://www.ovid.com/jnls/acsm-msse/fulltext/10.1249/mss.0000000000003897~american-college-of-sports-medicine-position-stand
- ACSM 2026, ResearchGate record: https://www.researchgate.net/publication/402605722_American_College_of_Sports_Medicine_Position_Stand_Resistance_Training_Prescription_for_Muscle_Function_Hypertrophy_and_Physical_Performance_in_Healthy_Adults_An_Overview_of_Reviews
- ACSM 2026, APTA CPG listing: https://www.apta.org/patient-care/evidence-based-practice-resources/cpgs/american-college-of-sports-medicine-position-stand-resistance-training-prescription-for-muscle-function-hypertrophy-and-physical-performance-in-healthy-adults-an-overview-of-reviews
- ACSM Science Spotlight on the 2026 stand: https://acsm.org/science-spotlight-acsm-releases-new-position-stand-on-resistance-training/
- ACSM 2026 press release (Newswise): https://www.newswise.com/articles/acsm-unveils-landmark-2026-resistance-training-guidelines-first-update-in-17-years
- ACSM 2026 press release (EurekAlert): https://www.eurekalert.org/news-releases/1119943
- ACSM 2026 coverage (Recreation Management): https://recmanagement.com/articles/155711/acsm-unveils-landmark-2026-resistance-training-guidelines
- ACSM GETP 12th ed. (2025): https://acsm.org/education-resources/books/guidelines-exercise-testing-prescription
- ACSM GETP12 excerpt: https://acsm.org/wp-content/uploads/2025/03/GETP12_excerpt.pdf?e=1
- Garber et al. 2011 (URI repository): https://digitalcommons.uri.edu/kinesiology_facpubs/137
- Garber 2011 press summary (Athletic Business): https://www.athleticbusiness.com/health-fitness/acsm-issues-new-guidelines-on-exercise-quality-quantity.html
- WHO 2020, Bull et al. (PMC): https://pmc.ncbi.nlm.nih.gov/articles/PMC7719905
- WHO 2020 commentary (IJBNPA): https://link.springer.com/doi/10.1186/s12966-020-01048-w
- US PAG 2018 executive summary: https://health.gov/sites/default/files/2019-10/PAG_ExecutiveSummary.pdf
- US PAG 2018, Piercy et al. JAMA: https://jamanetwork.com/journals/jama/fullarticle/2712935
- US PAG 2018, CDC reprint: https://stacks.cdc.gov/view/cdc/121857/cdc_121857_DS1.pdf
- UK CMO 2019 guidelines: https://gov.uk/government/publications/physical-activity-guidelines-uk-chief-medical-officers-report/uk-chief-medical-officers-physical-activity-guidelines
- UK CMO 2019 infographic text: https://gov.uk/government/publications/physical-activity-guidelines-adults-and-older-adults/physical-activity-for-adults-and-older-adults-19-and-over-text-of-the-infographic
- UK CMO 2019, CSP news: https://csp.org.uk/news/2019-09-11-even-short-sessions-activity-can-have-health-benefits-government-advises
- UK CMO 2019, BMJ blog: https://blogs.bmj.com/bmj/2019/09/07/cmos-new-physical-activity-guidelines-demonstrate-under-appreciation-as-a-clinical-approach/
- ExRx guideline summary (practitioner site, used only to flag unverified novice numbers): https://exrx.net/WeightTraining/Guidelines

Dose-response, frequency, load, time efficiency
- Momma et al. 2022 BJSM (full-text mirror): https://observateperu.ins.gob.pe/sites/default/files/2025-02/755.full_.pdf
- Commentary on overlapping meta-analyses: https://pmc.ncbi.nlm.nih.gov/articles/PMC10199130
- Iversen et al. 2021 Sports Med: https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772
- Androulakis-Korakakis et al. 2020 Sports Med: https://link.springer.com/doi/10.1007/s40279-019-01236-0 ; https://www.pubmed.gov/31797219/
- Androulakis-Korakakis et al. 2021 Front Sports Act Living: https://frontiersin.org/journals/sports-and-active-living/articles/10.3389/fspor.2021.713655/text
- Schoenfeld, Ogborn & Krieger 2017 (volume): https://www.pubmed.gov/27433992/
- Schoenfeld, Ogborn & Krieger 2016 (frequency): https://pubmed.ncbi.nlm.nih.gov/27102172/
- Grgic et al. 2018 (frequency, strength): https://link.springer.com/10.1007/s40279-018-0872-x
- Grgic, Schoenfeld & Latella 2019 (frequency review): https://ro.ecu.edu.au/ecuworkspost2013/5665
- Šarić et al. 2018 (3 vs 6 days): https://researchgate.net/profile/Jozo-Grgic/publication/327435932_Resistance_Training_Frequencies_of_3_and_6_Times_Per_Week_Produce_Similar_Muscular_Adaptations_in_Resistance-Trained_Men/links/5bd26d6892851c6b278f311d/Resistance-Training-Frequencies-of-3-and-6-Times-Per-Week-Produce-Similar-Muscular-Adaptations-in-Resistance-Trained-Men.pdf
- Pelland et al. 2026 (preprint v2 and index record): https://sportrxiv.org/index.php/server/preprint/view/460 ; https://sponet.de/sponet/Record/4097139?lng=en
- Currier et al. 2023 BJSM NMA: https://bjsm.bmj.com/content/bjsports/57/18/1211.full.pdf
- Schoenfeld et al. 2017 (low vs high load): https://pubmed.ncbi.nlm.nih.gov/28834797/
- Lasevicius et al. 2018 (copy; primary unverified): https://www.scribd.com/document/494479978/lasevicius2018
- Jenkins et al. 2023 J Physiol (cites Islam 2022): https://strathprints.strath.ac.uk/87342/1/Jenkins-etal-JP-2023-Benefits-beyond-cardiometabolic-health.pdf
- Jenkins et al. 2019 (McMaster news): https://news.mcmaster.ca/exercise-snacks-make-fitness-easier-researchers-find-short-bouts-of-stairclimbing-throughout-the-day-can-boost-health/
- Protocol citing Jenkins 2019 design: https://cdn.clinicaltrials.gov/large-docs/26/NCT05574426/Prot_000.pdf
- 2025 exercise-snacks meta-analysis (BJSM blog): https://blogs.bmj.com/bjsm/2025/10/24/exercise-snacks-small-bouts-big-benefits/
- 2025 exercise-snacks scoping review (Sports Med Open): https://doaj.org/article/a912354492b143faa84db9032de617f2

Bodyweight
- Kotarsky et al. 2018: https://pubmed.ncbi.nlm.nih.gov/29466268/
- Kikuchi & Nakazato 2017: https://pmc.ncbi.nlm.nih.gov/articles/PMC5812864 ; https://doaj.org/article/f70cce826f3348b5b4f3ace8cf8ac33e
- Afonso et al. 2021: https://estudogeral.uc.pt/handle/10316/104612
- ScienceAlert on a 2025 older-adult bodyweight meta-analysis (press only, primary not identified): https://www.sciencealert.com/you-only-need-1-piece-of-equipment-for-strength-training-and-its-free
- openGym (comparison only): https://github.com/DuarteSantos8/openGym

Effort scales
- Halperin et al. 2022: https://cris.iucc.ac.il/en/publications/accuracy-in-predicting-repetitions-to-task-failure-in-resistance-/ ; https://sportrxiv.org/index.php/server/preprint/view/67
- Steele et al. 2017 PeerJ: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5712461/
- Zourdos et al. 2016: https://openrepository.aut.ac.nz/items/efef3b25-6701-4fb5-bb82-55fcd2a26027/full
- Helms et al. 2016: https://openrepository.aut.ac.nz/items/92cefeac-7c32-44f1-bfbc-f48f4a5dd8cf/full
- Robertson et al. 2003 (record): https://vufind-test.katalog.k.utb.cz/SummonRecord/FETCH-LOGICAL-c551t-ad50b0f1e5e68fd311680a33d90b5ed10b82b01f0459eca2a8c5d73b0ca8a29a2

Warm-up, cool-down, deload
- Fradkin et al. 2010: https://pubmed.ncbi.nlm.nih.gov/19996770/
- McGowan et al. 2015: https://pubmed.ncbi.nlm.nih.gov/26400696/
- Van Hooren & Peake 2018: https://rd.springer.com/content/pdf/10.1007/s40279-018-0916-2.pdf
- Bell et al. 2023: https://pmc.ncbi.nlm.nih.gov/articles/PMC10511399/
- Coleman et al. 2024: https://peerj.com/articles/16777 ; https://pubmed.ncbi.nlm.nih.gov/38274324/

HIIT
- Milanović, Sporiš & Weston 2015: https://research.tees.ac.uk/en/publications/effectiveness-of-high-intensity-interval-training-hit-and-continu-3/
- Weston, Wisløff & Coombes 2014 (third-party PDF copy): https://paulogentil.com/pdf/hiit/High-intensity%20interval%20training%20in%20patients%20with%20lifestyle-induced%20cardiometabolic%20disease%20-%20a%20systematic%20review%20and%20meta-analysis.pdf
- Biddle & Batterham 2015: https://link.springer.com/doi/10.1186/s12966-015-0254-9

Flexibility
- Konrad et al. 2024: https://pubmed.ncbi.nlm.nih.gov/37301370/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC10980866 ; https://doaj.org/article/ac88f2436f38432d942f3a34ecd30e2a

Detraining and time course
- Bosquet et al. 2013: https://zendy.io/title/10.1111/sms.12047 ; https://pesquisa.bvsalud.org/bvsms/resource/pt/mdl-23347054
- Stronger by Science detraining commentary (opinion): https://www.strongerbyscience.com/detraining/
- Ogasawara et al. 2013: https://link.springer.com/article/10.1007/s00421-012-2511-9
- Ogasawara et al. 2011: https://pubmed.ncbi.nlm.nih.gov/21771261/
- Seynnes et al. 2007 (third-party PDF copy): https://paulogentil.com/pdf/Early%20skeletal%20muscle%20hypertrophy%20and%20architectural%20changes%20in%20response%20to%20high-intensity%20resistance%20training.pdf
