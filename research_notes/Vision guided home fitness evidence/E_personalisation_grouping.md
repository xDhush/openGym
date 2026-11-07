# Area E: Personalisation and user grouping for Delva (age, sex/gender, fairness, recommendation approach)

Date checked for every number, link and claim in this file: **2026-11-07**.

Method notes (read first):
- Citation counts: the Semantic Scholar API (`api.semanticscholar.org`) and Google Scholar could not be reached from this session (DNS blocked by the session's network policy), so **every item below says "citation count not verified"**. To fill them in, allow `api.semanticscholar.org` in the session network settings and rerun.
- Several primary hosts were also blocked for page fetches (`pubmed.ncbi.nlm.nih.gov`, `eur-lex.europa.eu`, `www.jmir.org`). Facts below come from web-search extracts of the publisher, PubMed, PMC, DOAJ, repository and legislation pages linked next to each claim. Where only a secondary summary was available, that is said.
- The shared web-search budget ran out before a planned search on the UK Equality Act 2010 (services, age exceptions); that item is listed under Gaps, not asserted.
- No code repositories are relevant to this area, so no repo metrics are reported.
- Evidence labels used: **strong evidence** (systematic review / meta-analysis / official guideline / primary legal text), **weak evidence** (single study, small or heterogeneous evidence base, workshop paper, indirect evidence), **opinion-or-industry practice**.
- Spec under review: Delva groups users by **age, gender, fitness level, goal and days available**; content cells are **program (5) x level (3) x days (3, 4, 5)**, adults 18-64, no equipment, 15-20 min sessions, 4 chapters, end-of-chapter check-in.

---

## Q1. Do sex differences in training response justify sex-specific prescription?

### Takeaway
The best meta-analyses show men and women make **similar relative gains** in muscle size and lower-body strength, and women make **equal or larger relative gains in upper-body strength**; men gain more in **absolute** terms, mostly because they start bigger and stronger. Women are usually **more fatigue-resistant** in sustained isometric tasks at the same relative intensity (relevant to plank holds), and menstrual-cycle phase effects on performance are **trivial or not demonstrated**. None of this supports giving women and men different programs; it supports setting targets from **each user's own measured capacity**. (Strong evidence for relative-gain parity; weak evidence for any programming change by sex.)

### Cited Findings

**Item 1 [Core]. Roberts, Nuckols & Krieger 2020, "Sex Differences in Resistance Training: A Systematic Review and Meta-Analysis"** ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32218059/))
- Type: systematic review and meta-analysis (J Strength Cond Res 34(5):1448-1460, May 2020, doi 10.1519/JSC.0000000000003521) ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32218059/)).
- What it is: pooled studies in which men and women did the same resistance program; adults 18-50 per the description in a later review ([Jones et al. 2021 PDF](https://edisciplinas.usp.br/pluginfile.php/7965310/mod_resource/content/1/jones%202021%20-%20sex%20differences%20in%20adaptations%20in%20muscle%20stregth%20an%20size%20following%20resistance%20training%20in%20older%20adults%20systematic%20review.pdf)).
- Key numbers (checked 2026-11-07): hypertrophy, 12 outcomes from 10 studies, no sex difference (ES = 0.07 ± 0.06; P = 0.31; I² = 0). Upper-body strength, 19 outcomes from 17 studies, **favoured women** (ES = -0.60 ± 0.16; P = 0.002; I² = 72.1). Lower-body strength, 23 outcomes from 23 studies, no significant difference (ES = -0.21 ± 0.16; P = 0.20; I² = 74.7) ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32218059/)).
- Why it matters for Delva: directly challenges any rule that gives women a lighter "toning" variant or keeps them out of **Build Strength**; relative progress is the same or better.
- Credibility: peer-reviewed meta-analysis in JSCR (NSCA journal). Citation count not verified (checked 2026-11-07). **Strong evidence** for relative-gain parity.
- Licence / commercial use: n/a (ideas only).
- Key ideas to borrow: express progress in **relative** terms (percent of the user's own baseline) in the UI and in check-ins, never absolute norms by sex.
- Limitations: mostly untrained participants and gym-based loading, not no-equipment bodyweight work; high heterogeneity for strength; a relative effect size flatters groups with lower baselines.

**Item 2 [Core]. Refalo et al. 2025, "Sex differences in absolute and relative changes in muscle size following resistance training in healthy adults: a systematic review with Bayesian meta-analysis"** ([PeerJ](https://peerj.com/articles/19042); [Edinburgh Napier repository](https://napier-repository.worktribe.com/output/4166718/sex-differences-in-absolute-and-relative-changes-in-muscle-size-following-resistance-training-in-healthy-adults-a-systematic-review-with-bayesian-meta-analysis); [DOAJ record, PeerJ Feb 2025](https://doaj.org/article/dbf856c9d64840b59318c009c4abd626))
- Type: systematic review with Bayesian meta-analysis (PeerJ, Feb 2025, doi 10.7717/peerj.19042).
- Key numbers (checked 2026-11-07): 2,720 records screened, 29 studies in the analysis, healthy adults aged 18-45 on the same program. **Absolute** muscle-size gains slightly favoured men (SMD = 0.19, 95% HDI 0.11 to 0.28); **relative** gains were similar between sexes. Absolute upper-body (not lower-body) hypertrophy favoured men; prior training experience did not change the result; type II fibre hypertrophy was similar between sexes ([PeerJ](https://peerj.com/articles/19042); [DOAJ](https://doaj.org/article/dbf856c9d64840b59318c009c4abd626)). Authors' conclusion: women have a similar potential for hypertrophy, especially in relative terms ([PeerJ](https://peerj.com/articles/19042)).
- Why it matters for Delva: the most recent and methodologically strongest update; confirms Item 1 and extends it to trained people. Supports one **Build Strength** track for everyone.
- Credibility: peer-reviewed Bayesian meta-analysis in an indexed open-access journal (PeerJ). Citation count not verified (checked 2026-11-07). **Strong evidence**.
- Licence: article is CC BY 4.0 ([PeerJ](https://peerj.com/articles/19042)); figures/text could be quoted with attribution; Delva only needs the idea.
- Key ideas to borrow: absolute vs relative framing; do not show sex-normed "expected gains".
- Limitations: muscle size only, not bodyweight-exercise performance; 18-45 only (Delva covers to 64).

**Item 3. Jones et al. 2021, "Sex Differences in Adaptations in Muscle Strength and Size Following Resistance Training in Older Adults: A Systematic Review and Meta-analysis"** ([Bond University record](https://research.bond.edu.au/en/publications/sex-differences-in-adaptations-in-muscle-strength-and-size-follow/); [PubMed](https://pubmed.ncbi.nlm.nih.gov/33332016); [full-text PDF copy](https://edisciplinas.usp.br/pluginfile.php/7965310/mod_resource/content/1/jones%202021%20-%20sex%20differences%20in%20adaptations%20in%20muscle%20stregth%20an%20size%20following%20resistance%20training%20in%20older%20adults%20systematic%20review.pdf))
- Type: systematic review and meta-analysis (Sports Medicine 51(3):503-517, doi 10.1007/s40279-020-01388-4; OSF-registered).
- Key numbers (checked 2026-11-07): 30 studies, 41 comparison groups, 1,410 participants (651 men, 759 women); mean study quality 14.7/29 (modified Downs and Black). Older men gained more **absolute** upper-body strength, lower-body strength and muscle size; older women gained more **relative** lower-body strength; no sex difference in relative upper-body strength (borderline, p = 0.08) or relative muscle size. A tentative sub-analysis suggested men may respond more to higher intensity and women to higher volume ([Bond record](https://research.bond.edu.au/en/publications/sex-differences-in-adaptations-in-muscle-strength-and-size-follow/); [PDF](https://edisciplinas.usp.br/pluginfile.php/7965310/mod_resource/content/1/jones%202021%20-%20sex%20differences%20in%20adaptations%20in%20muscle%20stregth%20an%20size%20following%20resistance%20training%20in%20older%20adults%20systematic%20review.pdf)).
- Why it matters for Delva: the upper end of Delva's range (50-64) overlaps "older adult" samples; the finding that apparent sex differences mostly vanish in relative terms holds here too.
- Credibility: Sports Medicine (top sport-science journal), registered protocol. Citation count not verified (checked 2026-11-07). **Strong evidence** for the absolute/relative pattern; **weak evidence** for the intensity-vs-volume suggestion (sub-analysis, moderate study quality). The exact age threshold for "older adults" was not verified this session.
- Key ideas to borrow: same principle as Items 1 and 2; do not build a "women 50+" low-intensity variant.
- Limitations: gym-based, mostly 60+; moderate quality.

**Item 4 [Core]. Hunter's reviews on sex differences in fatigability** ([Hunter 2014, Acta Physiologica, "Sex differences in human fatigability: mechanisms and insight to physiological responses", PDF copy](https://paulogentil.com/pdf/Sex%20differences%20in%20human%20fatigability%20-%20mechanisms%20and%20insight%20to%20physiological%20responses.pdf); [Hunter 2016, Experimental Physiology, dynamic contractions, doi 10.1113/EP085370](https://zendy.io/title/10.1113/ep085370); [Marquette faculty repository](https://epublications.marquette.edu/exsci_fac/64))
- Type: narrative/mechanistic reviews by the leading author in this field (not meta-analyses).
- Findings (checked 2026-11-07): women are usually **less fatigable than men during single-limb isometric contractions at the same relative intensity**, mainly because of muscle-level factors (slower contractile properties, including slower calcium handling and relaxation) ([Hunter 2014 PDF](https://paulogentil.com/pdf/Sex%20differences%20in%20human%20fatigability%20-%20mechanisms%20and%20insight%20to%20physiological%20responses.pdf)). For **dynamic** contractions the difference depends on contraction velocity and muscle group and can disappear ([Hunter 2016](https://zendy.io/title/10.1113/ep085370)). The sex difference narrows with age ([PMC2909485](https://pmc.ncbi.nlm.nih.gov/articles/PMC2909485)). Women have been under-represented in fatigability studies ([Marquette repository](https://epublications.marquette.edu/exsci_fac/64)).
- Why it matters for Delva: **hold timing (planks, wall sits) and rep targets.** A woman and a man of the same relative strength may reach very different plank times. A sex-based hold target would be wrong in both directions; a target derived from the user's own first test hold (or "stop 1-2 reps / 5-10 s before failure") is not.
- Credibility: Acta Physiologica and Experimental Physiology are reputable physiology journals; Hunter is the most-cited author on this question. Citation counts not verified (checked 2026-11-07). **Strong evidence** for the isometric fatigability difference (consistent lab literature); **weak evidence** for how big the difference is in whole-body bodyweight holds like a plank (not directly studied in these reviews).
- Key ideas to borrow: calibrate hold durations and rep targets per user from an in-app baseline, and let rep counting / hold timing update them.
- Limitations: lab single-joint tasks; bodyweight holds load body mass differently.

**Item 5 [Core]. Menstrual-cycle phase and performance: McNulty et al. 2020 and Colenso-Semple et al. 2023** ([McNulty et al. 2020, Sports Medicine, PDF](https://springerlink.bibliotecabuap.elogim.com/content/pdf/10.1007/s40279-020-01319-3.pdf); [RGU repository](https://rgu-repository.worktribe.com/output/940959); [Colenso-Semple et al. 2023, Frontiers in Sports and Active Living, PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC10076834); [DOAJ](https://doaj.org/article/6b0c0ed2b14045e29d01c055be956349); [MMU repository PDF](https://e-space.mmu.ac.uk/631857/1/Colenso-Semple%20et%20al%20no%20MC%20phase%20effects.pdf))
- Type: systematic review and meta-analysis (McNulty, Sports Med 2020, doi 10.1007/s40279-020-01319-3); umbrella review (Colenso-Semple, Front Sports Act Living 2023).
- Findings (checked 2026-11-07): McNulty included 78 studies, 51 in the pairwise meta-analysis; performance **might be trivially reduced in the early follicular phase**, with large between-study variance; the authors recommended an individualised approach based on each woman's own response rather than general phase-based guidance ([McNulty PDF](https://springerlink.bibliotecabuap.elogim.com/content/pdf/10.1007/s40279-020-01319-3.pdf); [RGU repository](https://rgu-repository.worktribe.com/output/940959)). Colenso-Semple's umbrella review concluded it is **premature** to say short-term hormone fluctuations appreciably affect acute strength performance or longer-term strength/hypertrophy adaptations, and flagged poor and inconsistent methods in the literature; title: "Current evidence shows no influence of women's menstrual cycle phase on acute strength performance or adaptations to resistance exercise training" ([PMC10076834](https://pmc.ncbi.nlm.nih.gov/articles/PMC10076834); [DOAJ](https://doaj.org/article/6b0c0ed2b14045e29d01c055be956349)).
- Why it matters for Delva: rules out **cycle-synced programming** as an evidence-based feature for v1. If Delva ever offers cycle-aware anything, it should be the user's own symptom-driven "lighter day" choice, which the spec already allows (missed workouts never become debt; sequence not calendar).
- Credibility: Sports Medicine (meta-analysis) and a Frontiers umbrella review (McMaster University group). Citation counts not verified (checked 2026-11-07). **Strong evidence** that phase effects are trivial or unproven.
- Key ideas to borrow: "listen to your own response" framing; no phase-based rules.
- Limitations: the two reviews differ in scope (McNulty covered endurance and strength; Colenso-Semple strength/RT), so they are complementary rather than identical.

**Item 6. Diaz-Canestro & Montero 2019, "Sex Dimorphism of VO2max Trainability: A Systematic Review and Meta-analysis"** ([Springer Medizin](https://www.springermedizin.de/sex-dimorphism-of-vo2max-trainability-a-systematic-review-and-me/17149252); [HKU repository](https://repository.hku.hk/handle/10722/288964); [PDF copy](https://springerlink.bibliotecabuap.elogim.com/content/pdf/10.1007/s40279-019-01180-z.pdf))
- Type: systematic review and meta-analysis (Sports Medicine 49:1949-1956, doi 10.1007/s40279-019-01180-z).
- Key numbers (checked 2026-11-07): 8 studies, 175 healthy untrained people (90 men, 85 women), training dose matched by sex. Men gained more VO2max: absolute +191 ml/min more (95% CI 99 to 283) and relative +1.95 ml/kg/min more (95% CI 0.76 to 3.15); I² = 0%. Later correspondence (Senefeld et al. comment and authors' reply, Sports Med 50:1049-1050) debated age effects ([Springer Medizin](https://www.springermedizin.de/sex-dimorphism-of-vo2max-trainability-a-systematic-review-and-me/17149252)).
- Why it matters for Delva: the one area where a sex difference in **trainability** appears (aerobic capacity), relevant to **Go Further**. But the effect is small, the evidence base is 8 studies, and individual variation dwarfs it (see Item 8, Q2), so it does not justify a separate women's Go Further program; it argues for progressing each user by their own response.
- Credibility: Sports Medicine; small pooled sample. Citation count not verified (checked 2026-11-07). **Weak-to-moderate evidence** (consistent but few studies).
- Limitations: lab VO2max with structured endurance training, not 15-20 min no-equipment circuits.

### Inferences
- Across strength, hypertrophy and fatigability, the evidence points to **similar or better relative adaptation in women** and to **individual differences that are larger than the average sex difference**. A sex-based program split therefore adds no expected benefit and risks under-loading women (Items 1-3, 5).
- The only plausible sex-linked adjustment for Delva, hold and rep calibration (Item 4), is better handled by **measuring the user** with the camera (rep counting, hold timing) than by a sex flag.
- Sex/gender is not needed as an input to any of Delva's five programs. It may still be useful **optionally** for non-prescriptive things the user chooses (for example, demonstrator or voice preference), not for program assignment.

### Gaps
- No meta-analysis found on sex differences in **bodyweight-only** or **15-20 min home** training responses; all pooled evidence is gym or lab based.
- Whether women perform more repetitions than men at the same relative load (relevant to rep targets) was not searched this session; a meta-regression on repetitions at %1RM may exist but is **not verified**.
- Menopause and perimenopause effects on trainability within 18-64 were **not verified** this session.
- HIIT-specific sex-difference meta-analyses (beyond VO2max trainability) were not found within the search budget.

---

## Q2. Should age within 18-64 change prescription? What do WHO and ACSM say?

### Takeaway
WHO's 2020 guidelines give **one recommendation for all adults aged 18-64**, with no split by sex or sub-age; separate recommendations exist only for **65+, pregnancy/postpartum, and chronic conditions/disability**. ACSM's resistance-training position stand prescribes by **training status, goals and capacity**, and its frequency bands (2-3, 3-4, 4-5 days a week for novice, intermediate, advanced) closely mirror Delva's level x days matrix. Some blunting of hypertrophy by midlife is reported (single study), but individual response variability is large and genetic, so age is a weak proxy. (Strong evidence that guidelines do not split 18-64 by age or sex; weak evidence on midlife trainability.)

### Cited Findings

**Item 7 [Core]. WHO 2020 Guidelines on Physical Activity and Sedentary Behaviour (Bull et al. 2020, BJSM) and WHO fact sheet** ([BJSM article, Br J Sports Med 2020;54:1451-1462, repository copy](https://digibug.ugr.es/handle/10481/66573); [full-text PDF copy](https://digibug.ugr.es/bitstream/handle/10481/66573/1451.full.pdf?sequence=1); [WHO/Europe physical activity fact sheet](https://www.who.int/europe/news-room/fact-sheets/item/physical-activity); [WHO guideline PDF copy](https://chiro.org/Graphics_Box_RESEARCH/GRAPHICS_20/THE_ROLE/WHO_2020_Guidelines_on_Physical_Activity_and_Sedentary_Behaviour.pdf))
- Type: official guideline (WHO), with the summary paper in BJSM.
- Findings (checked 2026-11-07): adults should accumulate 150-300 min/week moderate or 75-150 min/week vigorous aerobic activity (or a mix) ([BJSM repository](https://digibug.ugr.es/handle/10481/66573)); adults 18-64 should do **muscle-strengthening activities at moderate or greater intensity involving all major muscle groups on 2 or more days a week** ([WHO/Europe fact sheet](https://www.who.int/europe/news-room/fact-sheets/item/physical-activity)). Older adults (65+) get an added multicomponent balance-and-strength recommendation on 3 or more days a week (per a WHO fact-sheet version and [WHO EMRO page](https://www.emro.who.int/health-education/physical-activity/recommended-levels-of-physical-activity-for-health.html); wording differs between fact-sheet versions). The guidelines also address pregnant and postpartum women as a subpopulation ([sedentarybehaviour.org summary of the release](https://sedentarybehaviour.org/2020/11/26/2020-who-guidelines-on-physical-activity-and-sedentary-behaviour-just-released)).
- Verification of "no sex or sub-age split for 18-64": the fact sheet and BJSM summary present a single adult (18-64) recommendation; the guideline is organised by age band and special populations, not by sex (checked 2026-11-07 against the fact sheet; the full adult chapter, pp. 32-42 of the WHO PDF, was not read in full this session).
- Why it matters for Delva: Delva's eligibility band (18-64) **is exactly WHO's adult band**, so the authoritative guidance treats Delva's whole population as one group. Every Delva program should give all users a path to the 2-days-a-week muscle-strengthening dose, which argues against any variant (for example by gender) that de-emphasises strength.
- Credibility: WHO guideline, GRADE-based process. Citation count not verified (checked 2026-11-07). **Strong evidence**.
- Licence: WHO guideline text is under WHO's own licence (typically CC BY-NC-SA 3.0 IGO for WHO publications; **not verified** for this document); Delva only needs the recommendations.
- Key ideas to borrow: use WHO's age bands as the only age logic (18-64 eligible; 65+ out of scope, or redirected); in-app copy can say every program counts towards WHO's strength recommendation (no promise of results).
- Limitations: population health guidance, not individual exercise prescription.

**Item 8 [Core]. ACSM position stand 2009, "Progression models in resistance training for healthy adults"** ([PubMed](https://pubmed.ncbi.nlm.nih.gov/19204579/); [PDF copy](https://sfu.ca/~ryand/kin343/ACSMresistance.pdf))
- Type: professional guideline / position stand (Med Sci Sports Exerc 2009).
- Findings (checked 2026-11-07): novices (untrained, or not trained for several years) should use loads of 8-12 RM; intermediate (about 6 months of consistent training) to advanced use 1-12 RM in a periodised fashion. Frequency: **2-3 days/week novice, 3-4 days/week intermediate, 4-5 days/week advanced**. Muscular endurance: 40-60% 1RM for >15 reps with short rests. Recommendations should be "contingent upon an individual's target goals, physical capacity, and training status" ([PubMed](https://pubmed.ncbi.nlm.nih.gov/19204579/)). The extracted text names **training status, goals and capacity**, not sex or age, as the variables; whether the full document mentions sex-specific advice was **not verified** this session. A later ACSM overview of reviews updates parts of this stand ([PMC12965823](https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823)); its content was not read this session.
- Why it matters for Delva: validates **fitness level + goal + days available** as the core grouping variables, and shows Delva's level-to-frequency mapping is close to ACSM's. (Note: Delva allows a beginner to pick 5 days; ACSM would suggest 2-3 for novices, so beginner 5-day cells may need lower per-session load or more mobility/skill content.)
- Credibility: ACSM official position stand, MSSE. Citation count not verified (checked 2026-11-07). **Strong evidence (guideline)**, though gym-oriented and 17 years old.
- Limitations: designed for gym loading; partly superseded.

**Item 9. Phillips et al. 2017, "Physiological adaptations to resistance exercise as a function of age"** ([JCI Insight](https://insight.jci.org/articles/view/95581); [PMC5621901](https://pmc.ncbi.nlm.nih.gov/articles/PMC5621901/); [Nottingham eprints](https://eprints.nottingham.ac.uk/46430))
- Type: single controlled training study (JCI Insight 2(17):e95581).
- Key numbers (checked 2026-11-07): young 18-28 (n = 11), middle-aged 45-55 (n = 20), older 65-75 (n = 17); 20 weeks of fully supervised whole-body progressive resistance training. Whole-body lean mass rose 5.24% ± 1.21% in the young vs 1.12% ± 0.70% middle-aged and 1.33% ± 0.55% older; the authors report a negative correlation between age and muscle growth and conclude some negative features of ageing "are apparent in midlife" ([JCI Insight](https://insight.jci.org/articles/view/95581)).
- Why it matters for Delva: the only directly relevant evidence found on **midlife (45-55) vs young** trainability. It suggests smaller **hypertrophy** in midlife, but Delva's programs do not promise muscle gain, and strength and health benefits are not shown to be absent. It argues for **honest expectation-setting**, not for lower intensity by age.
- Credibility: peer-reviewed, small sample. Citation count not verified (checked 2026-11-07). **Weak evidence** (single small study).
- Limitations: n = 11 young; lean mass by DXA; supervised gym training.

**Item 10 [Core]. Ross et al. 2019, "Precision exercise medicine: understanding exercise response variability"** ([BJSM abstract](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract); [open PDF copy](https://vu-9.eprints-hosting.org/40357/1/1141.full.pdf))
- Type: expert consensus statement (Br J Sports Med 53(18):1141-1153, doi 10.1136/bjsports-2018-100328).
- Findings (checked 2026-11-07): human twin and family studies plus animal selection experiments show **considerable interindividual differences** in cardiorespiratory fitness and cardiometabolic responses to the **same** training dose, with a genetic component; the statement covers designs (RCT, crossover) and ways to classify response for personalised exercise medicine ([BJSM](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract); [PDF](https://vu-9.eprints-hosting.org/40357/1/1141.full.pdf)).
- Why it matters for Delva: the key reason demographic groups are a poor basis for prescription. If people of the same age and sex respond very differently to the same dose, the useful signal is **each user's observed response** (reps, hold times, completion, perceived effort), which Delva's camera and end-of-chapter check-in can collect.
- Credibility: BJSM consensus led by Ross, Goodpaster and Bouchard; CC BY-NC open access. Citation count not verified (checked 2026-11-07). **Strong evidence (expert consensus grounded in twin/family and experimental data)**.
- Key ideas to borrow: adapt on observed response each chapter; do not label users "non-responders" (the paper discusses how hard response classification is).
- Limitations: focuses on cardiorespiratory fitness, less on strength.

### Inferences
- Within 18-64, **neither WHO nor ACSM gives age- or sex-specific prescriptions**; where they differ is 65+, pregnancy/postpartum and clinical populations. Delva's age range already sits inside one guideline band, so age adds nothing to program assignment beyond the eligibility gate.
- Age-related decline in trainability is real but gradual and heterogeneous (Items 9, 10); collapsing it into age groups would push some 50-64-year-olds into programs that are too easy and others into ones that are too hard. Fitness level and observed response capture what matters.
- **Pregnancy/postpartum** is the one population inside 18-64 where guidelines differ. It is a **safety screening** question (handled with a disclaimer/redirect), not a grouping variable. This overlaps the safety area of the larger brief.

### Gaps
- No meta-analysis isolating **middle-aged (40-64) vs young adults** for strength or hypertrophy was found; only one primary study (Item 9) and an older-adult meta-analysis (Polito et al. 2021, J Sports Sci, [doi 10.1080/02640414.2021.1924978](https://informahealthcare.com/doi/full/10.1080/02640414.2021.1924978), abstract-level only, not assessed in depth).
- Injury risk by age within 18-64 for bodyweight home training: **no reliable source found** within the search budget.
- ACSM's Guidelines for Exercise Testing and Prescription (11th/12th edition) were not checked; the claim that they do not split 18-64 by sex is therefore based on the 2009 position stand only.
- WHO's menopause-specific guidance: none found; not verified.

---

## Q3. Does tailoring work, and what should be tailored on?

### Takeaway
Tailored health-behaviour interventions beat generic ones, but the average effect is **small** (r ≈ 0.07 for print; d ≈ 0.14 for web). Effect size depends on **what** is tailored on (theoretical constructs and behaviour, not just demographics). Separately, letting people **self-select intensity** improves how exercise feels, and affect is linked to adherence. For Delva, tailoring on capability, preference and felt effort is better supported than tailoring on age or gender. (Strong evidence that tailoring helps a little; weak-to-moderate evidence on which variables matter most.)

### Cited Findings

**Item 11 [Core, foundational]. Noar, Benac & Harris 2007, "Does tailoring matter? Meta-analytic review of tailored print health behavior change interventions"** ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17592961/); [CORE PDF](https://core.ac.uk/download/17050054.pdf))
- Type: meta-analysis (Psychological Bulletin 133(4):673-693). **Foundational** (pre-2019).
- Key numbers (checked 2026-11-07): combined N = 58,454; sample-weighted mean effect r = .074 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17592961/)); 95% CI about .06 to .08 as reported in a later review ([PMC4578294](https://pmc.ncbi.nlm.nih.gov/articles/PMC4578294)); 57 studies per a later description ([IU repository](https://scholarworks.indianapolis.iu.edu/server/api/core/bitstreams/8e62b473-0e47-4872-9e5e-16c62573af3f/content)). Effects varied by comparison condition, behaviour, population, material, number of contacts, follow-up length, **the number and type of theoretical concepts tailored on, and whether demographics or behaviour were tailored on** ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17592961/)).
- Why it matters for Delva: tailoring is worth doing, but its value comes from tailoring on the **right constructs**; demographic tailoring was a moderator, not the driver.
- Credibility: Psychological Bulletin (top psychology review journal). Citation count not verified (checked 2026-11-07). **Strong evidence** for a small positive effect.
- Limitations: print materials, many behaviours (not only exercise); the **direction** of the demographic-vs-behaviour moderator was not verified from the abstract this session.

**Item 12. Lustria et al. 2013, "A Meta-Analysis of Web-Delivered Tailored Health Behavior Change Interventions"** ([publisher, J Health Commun 18(9):1039-1069](https://informahealthcare.com/doi/full/10.1080/10810730.2013.768727); [erratum record](https://profiles.umsl.edu/en/publications/erratum-a-meta-analysis-of-web-delivered-tailored-health-behavior/))
- Type: meta-analysis.
- Key numbers (checked 2026-11-07): 40 experimental and quasi-experimental studies, N = 20,180; tailored web interventions vs controls at post-test d = .139 (95% CI .111 to .166); follow-up reported as about d = .16 by a secondary source (not verified from the full text). An erratum exists ([publisher](https://informahealthcare.com/doi/full/10.1080/10810730.2013.768727); [erratum](https://profiles.umsl.edu/en/publications/erratum-a-meta-analysis-of-web-delivered-tailored-health-behavior/)).
- Why it matters for Delva: the digital equivalent of Item 11; effect is small but real and persists at follow-up.
- Credibility: J Health Communication. Citation count not verified (checked 2026-11-07). **Strong evidence** (meta-analysis), though pre-2019 (foundational).
- Limitations: pre-smartphone-era web interventions; moderator details not retrieved.

**Item 13 [Core]. Self-selected vs imposed intensity and affect: Ekkekakis 2009; Ekkekakis, Parfitt & Petruzzello 2011; Oliveira et al. 2015** ([Ekkekakis 2009, "Let them roam free?", Sports Medicine](https://www.springermedicine.com/let-them-roam-free/23075776); [Ekkekakis et al. 2011, Sports Medicine, doi 10.2165/11590680-000000000-00000](https://www.doi.org/10.2165/11590680-000000000-00000); [PubMed 21780850](https://pubmed.ncbi.nlm.nih.gov/21780850/); [Oliveira, Deslandes & Santos 2015, Frontiers in Psychology, meta-analysis](https://www.frontiersin.org/articles/10.3389/fpsyg.2015.01105/full))
- Type: narrative reviews (Sports Medicine) and a meta-analysis (Frontiers in Psychology).
- Findings (checked 2026-11-07): imposed intensities lead to declines in pleasure even when they exceed the self-selected level only slightly (Ekkekakis 2009, as summarised in search extracts of [Springer Medicine](https://www.springermedicine.com/let-them-roam-free/23075776)); the affective advantage of self-selected over imposed exercise **depends on the intensity of the imposed session** ([Oliveira et al. 2015](https://www.frontiersin.org/articles/10.3389/fpsyg.2015.01105/full)). A 2024 systematic review (29 studies, N = 749, mostly aerobic) linked self-selected intensity with better affect, self-efficacy, intention and more minutes of exercise, with high heterogeneity ([Andrade, Bastos & Teixeira 2024, Cuadernos de Psicología del Deporte](https://revistas.um.es/cpd/article/view/569371/version/774041)).
- Why it matters for Delva: **real-time audio feedback** and **rep targets** should leave room for user-regulated effort (for example "pick the version that feels hard but doable", "stop with 1-2 reps left"), and the **end-of-chapter check-in** that the user accepts or declines is consistent with autonomy-supportive design.
- Credibility: Sports Medicine reviews by the leading author on exercise affect; Frontiers meta-analysis; 2024 review in a smaller journal. Citation counts not verified (checked 2026-11-07). **Moderate evidence** that self-selection improves affect; **weak evidence** that it improves long-term adherence (mostly indirect, through affect and intention).
- Limitations: mostly aerobic exercise; short-term outcomes.

### Inferences
- The tailoring literature supports Delva's semi-personalised design, but it says the gain comes from tailoring on **behavioural and psychological constructs and current behaviour** (Items 11, 12), and from **autonomy over intensity** (Item 13), not from demographic labels.
- Practical tailoring variables for Delva, in order of support: current capability (measured), goal, time/days, preferred exercise types or dislikes, confidence (self-efficacy), and felt effort/enjoyment after sessions.

### Gaps
- No meta-analysis was found that directly compares **demographic-only tailoring** against **behavioural/psychological tailoring** for exercise apps; the Noar moderator direction was not verified.
- Evidence that tailoring **on stage of change** improves physical-activity outcomes was not searched this session.

---

## Q4. Rule-based vs data-driven recommendation: cold start, onboarding, explanations, user control

### Takeaway
Reviews of health recommender systems (HRS) find that most published systems are **evaluated only on algorithm metrics**, rarely ground recommendations in **behaviour-change theory**, and rarely apply tailoring principles; evidence that AI recommenders change physical activity is **very low certainty**. Machine-learning personalisation in physical-activity apps mostly uses supervised learning for content and reinforcement learning for feedback timing/type. For a new app with no data, a **rule-based (knowledge-based) assignment** to curated cells, followed by **data-driven adjustment** from observed sessions, is the defensible design. Short onboarding is supported by survey-methodology evidence. Evidence on **explanations** in fitness recommenders is thin. (Strong evidence on the state of the field; weak evidence on explanations and onboarding specifics.)

### Cited Findings

**Item 14 [Core]. Health recommender system reviews: De Croon et al. 2021; Hors-Fraile et al. 2018; Ghanvatkar et al. 2019; Brons et al. 2024**
- De Croon et al. 2021, "Health Recommender Systems: Systematic Review", J Med Internet Res 23(6):e18035, doi 10.2196/18035 ([DOAJ](https://doaj.org/article/5d860b65d3984a3ea112e41038198342); [KU Leuven Lirias](https://lirias.kuleuven.be/3476820); [PMC8278303](https://pmc.ncbi.nlm.nih.gov/articles/PMC8278303)). PRISMA review of **73 studies** of HRS for laypeople; physical activity falls under "lifestyle"; **half of the studies evaluated only the algorithm** with metrics, the rest ran RCTs or in-the-wild studies; the authors propose that HRS papers report target user, what is recommended, how it is presented, data, algorithm and evaluation protocol (checked 2026-11-07). **Strong evidence** (systematic review). Citation count not verified.
- Hors-Fraile et al. 2018, "Analyzing recommender systems for health promotion using a multidisciplinary taxonomy: A scoping review", Int J Med Inform 114:143-155 ([idUS repository](https://idus.us.es/handle/11441/82683?show=full); [PDF](https://idus.us.es/bitstream/handle/11441/82683/Analyzing%20recommender%20systems%20for%20health%20promotion.pdf?sequence=1)). 19 papers, 33 features assessed; **none reported the nine features tied to health-promotion and behaviour-change theory; few applied tailoring principles; none assessed cost-effectiveness** (checked 2026-11-07). **Strong evidence** (scoping review; small corpus). Citation count not verified. Note: catalogued as a scoping review, cited by De Croon as a systematic review.
- Ghanvatkar et al. 2019, "User Models for Personalized Physical Activity Interventions: Scoping Review", JMIR mHealth uHealth 7(1):e11098 ([PMC6352015](https://pmc.ncbi.nlm.nih.gov/articles/PMC6352015); [DOAJ](https://doaj.org/article/fcc8f6c6e4f14fe2915c808d9966d858)). **49 studies**; personalisation grouped into six categories: goal recommendation, activity recommendation, fitness partner recommendation, educational content, motivational content, intervention timing (checked 2026-11-07). **Strong evidence** for the taxonomy. Citation count not verified.
- Brons et al. 2024, "Machine Learning Methods to Personalize Persuasive Strategies in mHealth Interventions That Promote Physical Activity: Scoping Review and Categorization Overview", J Med Internet Res 26:e47774, doi 10.2196/47774 ([PMC11607567](https://pmc.ncbi.nlm.nih.gov/articles/PMC11607567/); [DOAJ](https://doaj.org/article/3dd1a32a5d184dfcb06719a3ed60bbb6)). **40 papers from 27 projects**, four groups by dimension of personalisation; content personalisation (activity suggestions, feedback, education) mostly used **supervised learning**, alone or with a recommender; **reinforcement learning** mostly personalised the type of feedback message (checked 2026-11-07). **Strong evidence** for the landscape. Citation count not verified.
- Also considered: a 2024 JMIR Human Factors PRISMA-ScR review reported recommender systems were the most common AI technology in digital physical-activity solutions and "seem to positively influence" behaviour change, **with very low certainty evidence** ([JMIR Human Factors 2024, e55964 PDF](https://humanfactors.jmir.org/2024/1/e55964/PDF); title and authors not verified this session).
- Why it matters for Delva: Delva's curated cells are effectively a **knowledge-based recommender**, the approach that needs no user data on day 1. The reviews show the field's weak points (no behaviour-change grounding, metric-only evaluation), which Delva can avoid by evaluating on adherence and completion, not just "accuracy" of assignment.
- Licence: n/a. JMIR articles are CC BY.
- Key ideas to borrow: Ghanvatkar's six personalisation targets as a feature checklist (Delva already does goal and activity; intervention timing and motivational content are candidates for audio feedback); Brons's split (rules or supervised models for content, bandits/RL only for message type and timing, and only once data exists).
- Limitations: none of the reviews address cold start explicitly in the extracts retrieved.

**Item 15. Onboarding questionnaire length: Galesic & Bosnjak 2009, "Effects of Questionnaire Length on Participation and Indicators of Response Quality in a Web Survey"** ([OUP, Public Opinion Quarterly 73(2):349-360, doi 10.1093/poq/nfp031](https://academic.oup.com/poq/article-lookup/doi/10.1093/poq/nfp031); [BibBase record](https://bibbase.org/network/publication/galesic-bosnjak-effectsofquestionnairelengthonparticipationandindicatorsofresponsequalityinawebsurvey-2009))
- Type: randomised experiment (survey methodology). **Foundational**.
- Findings (checked 2026-11-07): stated length was manipulated (10, 20, 30 min); **the longer the stated length, the fewer respondents started and completed**; one secondary source reports 75% started the 10-minute version vs 65% the 20-minute one; questions placed later got faster, shorter and more uniform (lower-quality) answers ([OUP](https://academic.oup.com/poq/article-lookup/doi/10.1093/poq/nfp031); [Survey Research Methods, Konstanz, review of the literature](https://ojs.ub.uni-konstanz.de/srm/article/view/8348/7667)). Counter-evidence: some studies find no length effect when respondents are not told the length ([Survey Research Methods](https://ojs.ub.uni-konstanz.de/srm/article/view/8348/7667)).
- Why it matters for Delva: every extra onboarding question (including age and gender) costs completion and degrades answer quality for later questions. Put the questions that actually change the program (goal, level, days) first; move anything else later or drop it.
- Credibility: Public Opinion Quarterly (top survey-methods journal). Citation count not verified (checked 2026-11-07). **Weak evidence for app onboarding specifically** (indirect: web surveys of 10-30 min, much longer than app onboarding).
- Limitations: no app-onboarding drop-off studies in peer-reviewed venues were found within budget.

**Item 16. Explanations and transparency in physical-activity recommenders (thin evidence)**
- A HealthRecSys 2017 workshop paper compared activity-goal recommendations with and without uncertainty information and suggested **showing uncertainty may reduce trust while supporting reflection** ([CEUR-WS Vol-1953, paper 8](https://ceur-ws.org/Vol-1953/healthRecSys17_paper_8.pdf)) (checked 2026-11-07). **Weak evidence** (workshop paper).
- An imec study of explanation modalities in a coaching app for people with multimorbidity reported (mixed-methods, N = 262) that a **hybrid explanation modality increased trust, transparency, persuasiveness, usefulness and satisfaction** vs single-modality explanations ([imec publications](https://imec-publications.be/handle/20.500.12860/59547)); venue not verified this session. **Weak evidence**.
- A position paper argues standard recommender metrics fall short when systems influence physical behaviour and proposes trust, intent alignment and consequence awareness as design dimensions ([Said 2025, arXiv 2508.07980, **preprint**](https://arxiv.org/abs/2508.07980v1)). **Opinion** (preprint, citation count not verified).
- Why it matters for Delva: a simple, honest "why this program" line (based on the user's own answers: goal, level, days) is low-risk and consistent with this thin evidence; avoid surfacing demographic reasons ("because you are a woman over 40").

### Inferences
- **Cold start**: Delva has no history at sign-up, so data-driven collaborative filtering is unusable at first. A **rule-based assignment** from 3 short questions (goal, level, days) to the 45 curated cells is the right v1, then **data-driven refinement** from camera-measured reps/holds, completion and check-in answers (Items 10, 14). This matches the spec's end-of-chapter check-in.
- **Level self-report is the weak link**: a first-session "calibration" workout measured by the camera (rep counts, hold timing) can correct a mis-reported level without asking more questions (Items 4, 10, 15).
- **User control**: the spec's accept/decline check-in is a good pattern; extend it so users can **switch program or level at any time** and see why a program was suggested (Items 13, 16). This also lowers GDPR Art. 22 exposure (Q5).
- **Evaluation**: measure assignment quality by adherence, chapter completion and switch-rate, not only by algorithm metrics (Item 14).

### Gaps
- No peer-reviewed study of **onboarding questionnaire length or drop-off in fitness apps** was found (only web-survey evidence).
- No peer-reviewed CHI/IMWUT/RecSys study testing **explanations specifically for exercise program recommendations** with behavioural outcomes was verified this session.
- Cold-start strategies specific to physical-activity recommenders were not found in the review extracts.

---

## Q5. Fairness, bias and legal risks of segmenting users by demographics

### Takeaway
Using demographics as stand-ins for capability is a textbook **proxy** problem: the best-known health example (Obermeyer et al. 2019) showed a proxy that looked accurate produced large group bias, fixed by predicting the real target. HCI research documents gendered assumptions in fitness tracking and harms to trans and non-binary users from binary inputs. Legally, sex-differentiated services fall under the EU Gender Goods and Services Directive (with a narrow justification route), the CJEU has rejected sex as a proxy even when statistically predictive (Test-Achats), GDPR Art. 22 restricts solely automated decisions with significant effects, and US state law such as California's Unruh Act covers sex and gender identity in business establishments. (Strong evidence that proxy bias is a real risk; legal points from primary texts, but **not legal advice**.)

### Cited Findings

**Item 17 [Core, foundational example]. Obermeyer, Powers, Vogeli & Mullainathan 2019, "Dissecting racial bias in an algorithm used to manage the health of populations"** (Science 366(6464):447-453) ([Berkeley CHMI summary with abstract](https://chmi.berkeley.edu/news/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations); [SSRC Just Tech citation page](https://just-tech.ssrc.org/citation/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations/))
- Type: peer-reviewed empirical study (Science). Pre-2019 boundary; foundational for proxy bias.
- Findings (checked 2026-11-07): a widely used commercial algorithm predicted **health-care cost** as a proxy for **health need**; at the same risk score, Black patients were sicker than White patients; fixing the label would raise the share of Black patients flagged for extra help **from 17.7% to 46.5%**; the authors warn that convenient, seemingly effective proxies for ground truth can be an important source of algorithmic bias ([Berkeley CHMI](https://chmi.berkeley.edu/news/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations); [SSRC](https://just-tech.ssrc.org/citation/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations/)). Figures taken from summaries; full text not opened this session.
- Why it matters for Delva: "gender" and "age" in Delva's grouping act as **proxies for capability and preference**. The lesson is to predict and adapt on the **real target** (measured capacity, goal, enjoyment), not on a demographic stand-in that systematically mis-places subgroups (for example, strong women or fit 55-year-olds).
- Credibility: Science. Citation count not verified (checked 2026-11-07). **Strong evidence** that proxy labels cause group bias (different domain: health-care cost).
- Limitations: race and cost in US health care, not fitness; an analogy, not direct evidence about exercise apps.

**Item 18 [Core]. Gender in fitness technology (HCI): Wilcox et al. CHI 2023; Cifor & Garcia (ACM)**
- Wilcox, Veeraraghavan, Haimson, Erickson, Turken, Gulotta, "Infrastructuring Care: How Trans and Non-Binary People Meet Health and Well-Being Needs through Technology", ACM CHI 2023, doi 10.1145/3544548.3581040 ([Google Research page](https://research.google/pubs/infrastructuring-care-how-trans-and-non-binary-people-meet-health-and-well-being-needs-through-technology/); [AMiner](https://www.aminer.org/pub/644a34be582c1376bbccc353/infrastructuring-care-how-trans-and-non-binary-people-meet-health-and-well)). Cross-cultural diary study with **64 trans and non-binary adults** (Mexico 24, US 22, India 18); notes current digital health experiences **can miscalculate health metrics** for trans and non-binary people, removing benefits and adding potential harm; calls for TGNB-inclusive design (checked 2026-11-07). **Weak-to-moderate evidence** (qualitative, top HCI venue). Citation count not verified.
- Cifor & Garcia, "Gendered by Design: A Duoethnographic Study of Personal Fitness Tracking Systems", ACM, doi 10.1145/3364685 ([catalogue record](https://bvbvf1.bib-bvb.de/vufind/PrimoRecord/cdi_crossref_primary_10_1145_3364685)). Argues that designing trackers as "genderless or universal" rests on masculinist design values and overlooks women and trans and gender non-conforming people (checked 2026-11-07). Venue believed to be ACM Transactions on Social Computing, **not verified** this session. **Weak evidence / critical analysis** (duoethnography, n = 2). Citation count not verified.
- Also considered: "'This Whole Thing Smacks of Gender': Algorithmic Exclusion in Bioimpedance-based Body Composition Analysis" notes body-fat outputs come from proprietary regression equations that **require a binary sex/gender input** ([arXiv 2101.08325](https://ar5iv.labs.arxiv.org/html/2101.08325)); peer-reviewed venue not verified this session, so treat as **preprint**.
- Why it matters for Delva: a mandatory binary gender field that **changes the program** forces non-binary users to pick a box that alters their training, and gives trans users a program based on a label rather than their body or goals. If gender has no effect on content (which the evidence in Q1 supports), the field becomes unnecessary for assignment.
- Key ideas to borrow: if gender is collected at all, make it optional, include non-binary and "prefer not to say", explain its use, and never gate content on it.

**Item 19. EU Gender Goods and Services Directive 2004/113/EC and the Test-Achats judgment (C-236/09)** ([EUR-Lex, Directive 2004/113/EC](https://eur-lex.europa.eu/eli/dir/2004/113/oj/eng); [legislation.gov.uk copy of Article 4](https://www.legislation.gov.uk/eudr/2004/113/article/4); [FRA case-law entry, C-236/09](https://fra.europa.eu/en/caselaw-reference/cjeu-c-23609-judgment); [Commission 2015 implementation report summary](https://oeil.europarl.europa.eu/oeil/en/procedure-document-summary/pdf?id=1419255); [Equinet executive summary](https://equineteurope.org/wp-content/uploads/2014/10/key_findings_-_executive_summary.pdf))
- Type: primary EU law and CJEU case law.
- Content (checked 2026-11-07): Article 4(5) permits a difference in treatment only where goods or services are provided **exclusively or primarily to members of one sex**, if justified by a **legitimate aim** and the means are **appropriate and necessary**; Recital 16 gives examples (single-sex shelters, privacy and decency, promoting gender equality, single-sex private clubs, single-sex sports events) ([legislation.gov.uk Art. 4](https://www.legislation.gov.uk/eudr/2004/113/article/4); summary of Recital 16 in search extracts). The Commission's 2015 report flagged that the Art. 4(5) justification was being claimed too broadly ([OEIL summary](https://oeil.europarl.europa.eu/oeil/en/procedure-document-summary/pdf?id=1419255)); equality bodies list women-only gyms among grey areas ([Equinet](https://equineteurope.org/wp-content/uploads/2014/10/key_findings_-_executive_summary.pdf)). In **Test-Achats** (Grand Chamber, 1 March 2011, ECLI:EU:C:2011:100) the CJEU held Article 5(2), which allowed sex as an actuarial factor in insurance, **invalid with effect from 21 December 2012** ([FRA](https://fra.europa.eu/en/caselaw-reference/cjeu-c-23609-judgment)).
- Why it matters for Delva: a paid app that gives different program content by gender is a **service differentiated by sex**. Delva is not single-sex, so the Art. 4(5) route is doubtful; Test-Achats shows EU courts do not accept "sex is statistically predictive" as a reason to treat people differently in consumer services. Risk is highest if the women's or men's variant is, or is perceived as, **less favourable** (for example, less strength content, different price, or locked features).
- Credibility: primary law. **Strong evidence (primary text)**; application to fitness apps is **inference, not legal advice**.
- Limitations: EUR-Lex itself could not be fetched; wording verified via legislation.gov.uk copy and search extracts. How national transpositions treat app content (not price or access) was not verified.

**Item 20. GDPR Article 22 (automated decisions and profiling)** ([GDPR text, Article 22](https://gdpr-text.com/en/read/article-22/); [legislation.gov.uk copy, Article 22 as adopted](https://legislation.gov.uk/eur/2016/679/article/22/adopted); [EUR-Lex GDPR](https://eur-lex.europa.eu/eli/reg/2016/679/oj))
- Type: primary EU law.
- Content (checked 2026-11-07): Art. 22(1): "The data subject shall have the right not to be subject to a decision based solely on automated processing, including profiling, which produces legal effects concerning him or her or similarly significantly affects him or her." Art. 22(2) exceptions: necessary for a contract, authorised by Union/Member State law, or explicit consent; where the contract or consent exceptions apply, the controller must provide at least the right to obtain human intervention, to express a point of view and to contest the decision ([gdpr-text.com](https://gdpr-text.com/en/read/article-22/); [legislation.gov.uk](https://legislation.gov.uk/eur/2016/679/article/22/adopted)). In the **UK GDPR**, Article 22 has been replaced by Articles 22A-22D per one source ([Fieldfisher UK GDPR annotation](https://ukgdpr.fieldfisher.com/chapter-3/article-22-gdpr/)); not verified against the amending Act this session.
- Why it matters for Delva: assigning a fitness program is **profiling**; whether it has "similarly significant" effects is debatable and probably low for a free choice of program, but it rises if assignment **locks** users out of programs or uses gender or age in ways that could be discriminatory. Letting users see and override the suggestion keeps the decision from being "solely automated" in effect and supplies the Art. 22(3)-style safeguards anyway.
- Related (not verified this session): GDPR Art. 9 (special categories, including data concerning health) is likely engaged by fitness-level, injury or pregnancy answers and by camera-derived body data; this belongs to the privacy area of the larger brief.
- Credibility: primary law. **Strong evidence (primary text)**; application is **inference, not legal advice**.

**Item 21. US: California Unruh Civil Rights Act (Cal. Civ. Code § 51)** ([California Civil Rights Department, Unruh page](https://calcivilrights.ca.gov/unruh/); [CRD Unruh FAQ PDF](https://calcivilrights.ca.gov/wp-content/uploads/sites/32/2024/12/Unruh-FAQ.pdf); [Civil Code § 51 text, Justia](https://law.justia.com/codes/california/code-civ/division-1/part-2/section-51))
- Type: primary state statute and agency guidance.
- Content (checked 2026-11-07): applies to **all business establishments** in California; protected characteristics listed by the state agency include sex, gender, **gender identity, gender expression**, sexual orientation, disability, medical condition, race and others; § 51 defines "gender" as sex including gender identity and gender expression; discrimination based on actual or **perceived** characteristics is covered ([CRD](https://calcivilrights.ca.gov/unruh/); [Justia § 51](https://law.justia.com/codes/california/code-civ/division-1/part-2/section-51)). The search extract also listed "age (40 and over)" on the agency page; **this conflicts with my understanding that § 51's enumerated list does not include age**, so treat age coverage under Unruh as **unverified**.
- Why it matters for Delva: a US launch reaches California consumers; a gender-gated program variant could be challenged as sex or gender-identity discrimination by a business establishment, especially for trans or non-binary users assigned by a binary label. Whether an app-only business is a "business establishment" for Unruh purposes and how courts treat content (rather than access or price) differences was **not verified**.
- Credibility: primary statute and regulator guidance. **Strong evidence (primary text)**; application is **inference, not legal advice**. Federal law (Title II of the Civil Rights Act of 1964 on public accommodations) was not checked this session.

### Inferences
- **Steering risk is the main practical harm**: given relative-gain parity (Q1) and WHO's strength recommendation for all adults (Q2), any rule that routes women towards Move Freely / All Round instead of Build Strength, or routes 50-64-year-olds to lower intensity, would systematically under-serve them relative to men or younger users with the same answers. This is the Obermeyer pattern (Item 17) applied to fitness.
- **Representation risk**: if Delva's camera models, demonstrators or audio cues are tuned on one body type, sex-based grouping does not fix it; this belongs to the vision/fairness area (form-tracking accuracy across bodies) and should be tested by body size, skin tone, age and sex in the vision evaluation.
- **Legal risk is lowest** when (a) age is used only for the 18-64 eligibility gate, (b) gender is optional, inclusive and never changes content, price or access, (c) the user sees why a program is suggested and can change it at any time.
- **EU AI Act**: a consumer fitness-program recommender is unlikely to be a high-risk system, but this was **not verified** this session (see Gaps).

### Gaps
- **UK Equality Act 2010** (services under s.29; age discrimination in services for adults; Schedule 3 exceptions; separate/single-sex service exceptions) was **not searched** because the web-search budget ran out. Primary text to check: [Equality Act 2010, legislation.gov.uk](https://www.legislation.gov.uk/ukpga/2010/15).
- **EU AI Act** (Regulation (EU) 2024/1689): classification of fitness recommenders, Art. 5 prohibitions (for example exploiting age-related vulnerabilities) and Art. 50 transparency duties were **not verified** this session.
- US federal public-accommodation law and other state laws (for example New York, Illinois) were not checked.
- No peer-reviewed study was found that directly measures **gender steering** (women offered less strength content) in commercial fitness apps; an older newspaper observation exists but was not used (not a primary source).

---

## Q6. Synthesis for Delva: verdict on grouping by age and gender, better grouping variables, recommendation approach

### Takeaway
The evidence **challenges** grouping by age (within 18-64) and gender: no guideline separates these groups, relative training responses are similar between sexes, individual variation outweighs group averages, and demographic grouping adds proxy-bias and legal exposure. Delva's own spec already defines content cells only by **program x level x days**, so age and gender currently have **no defined content consequence**. Recommendation: keep age as an eligibility gate only, make gender optional and non-prescriptive, and personalise on goal, level, days, measured capability, preferences and observed response.

### Cited Findings

**Verdict table (all checked 2026-11-07)**

| Proposition | Direction for Delva's age/gender grouping | Evidence strength | Sources |
|---|---|---|---|
| Women and men make similar relative gains in muscle size and lower-body strength; women equal or larger relative upper-body strength gains | Challenges gender grouping | Strong (2 meta-analyses) | [Roberts 2020](https://pubmed.ncbi.nlm.nih.gov/32218059/); [Refalo 2025](https://peerj.com/articles/19042) |
| Men gain more in absolute terms (muscle size, older-adult strength) | Neutral: affects how progress is displayed, not which program | Strong | [Refalo 2025](https://peerj.com/articles/19042); [Jones 2021](https://research.bond.edu.au/en/publications/sex-differences-in-adaptations-in-muscle-strength-and-size-follow/) |
| Men gain more VO2max for the same endurance dose | Weakly supports sex-aware **expectations** in Go Further; does not justify a separate program | Weak-moderate (8 studies) | [Diaz-Canestro & Montero 2019](https://www.springermedizin.de/sex-dimorphism-of-vo2max-trainability-a-systematic-review-and-me/17149252) |
| Women usually more fatigue-resistant in isometric tasks at the same relative intensity | Supports **per-user** hold/rep calibration, not sex-based targets | Strong (lab), weak for planks | [Hunter 2014](https://paulogentil.com/pdf/Sex%20differences%20in%20human%20fatigability%20-%20mechanisms%20and%20insight%20to%20physiological%20responses.pdf); [Hunter 2016](https://zendy.io/title/10.1113/ep085370) |
| Menstrual-cycle phase effects are trivial or unproven | Challenges cycle-based programming | Strong | [McNulty 2020](https://rgu-repository.worktribe.com/output/940959); [Colenso-Semple 2023](https://pmc.ncbi.nlm.nih.gov/articles/PMC10076834) |
| WHO gives one recommendation for adults 18-64; differences only for 65+, pregnancy/postpartum, clinical groups | Challenges age sub-grouping within 18-64 | Strong (guideline) | [WHO/Europe fact sheet](https://www.who.int/europe/news-room/fact-sheets/item/physical-activity); [Bull et al. 2020](https://digibug.ugr.es/handle/10481/66573) |
| ACSM prescribes by training status, goals and capacity (2-3 / 3-4 / 4-5 days by level) | Supports Delva's level x days x goal design | Strong (guideline) | [ACSM 2009](https://pubmed.ncbi.nlm.nih.gov/19204579/) |
| Midlife (45-55) hypertrophy smaller than young (18-28) | Weakly supports age-aware **expectations**, not lower intensity | Weak (one study) | [Phillips 2017](https://insight.jci.org/articles/view/95581) |
| Large interindividual response variability to the same dose | Challenges any demographic grouping; supports adapting on observed response | Strong (consensus) | [Ross 2019](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract) |
| Tailoring helps a little; what is tailored on matters | Supports tailoring on behaviour/psychology rather than demographics | Strong for small effect; direction of demographic moderator unverified | [Noar 2007](https://pubmed.ncbi.nlm.nih.gov/17592961/); [Lustria 2013](https://informahealthcare.com/doi/full/10.1080/10810730.2013.768727) |
| Proxy labels create group bias | Challenges using gender/age as stand-ins for capability | Strong (different domain) | [Obermeyer 2019](https://chmi.berkeley.edu/news/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations) |
| Binary gender inputs harm trans/non-binary users of health tech | Challenges mandatory binary gender that changes content | Weak-moderate (qualitative, CHI) | [Wilcox et al. CHI 2023](https://research.google/pubs/infrastructuring-care-how-trans-and-non-binary-people-meet-health-and-well-being-needs-through-technology/) |
| EU and California law restrict sex/gender-differentiated consumer services | Challenges gender-gated content | Primary law; application not legal advice | [Directive 2004/113/EC Art. 4](https://www.legislation.gov.uk/eudr/2004/113/article/4); [Test-Achats](https://fra.europa.eu/en/caselaw-reference/cjeu-c-23609-judgment); [Unruh](https://calcivilrights.ca.gov/unruh/) |

### Inferences

#### Verdict on grouping by age and gender
- **Gender: challenges (strong evidence against using it to assign programs).** No meta-analysis supports different programs for women and men; the relative-gain evidence argues the opposite, and the legal and inclusion risks are real. Keep gender **optional**, inclusive (woman, man, non-binary, self-describe, prefer not to say), and use it, if at all, only for **user-chosen presentation** (demonstrator, voice), never for program, level, intensity, price or access.
- **Age within 18-64: challenges (strong evidence that guidelines do not split this band; weak evidence for midlife blunting).** Use age only to **enforce eligibility (18-64)** and, optionally, to tune **expectation copy** (for example, "progress may be steadier", without promises), not to pick programs or cap intensity.
- **Delva-specific observation**: the 29 Oct 2026 spec defines content cells as program x level x days. Age and gender therefore already do not select content. Collecting them "for grouping" adds onboarding length (Item 15), privacy surface and fairness risk with no defined benefit. The spec should either remove them from the grouping definition or state exactly what they change (and that change would need evidence the review did not find).

#### Better grouping variables (evidence-backed)
1. **Training status / current capability** (ACSM's primary variable, [ACSM 2009](https://pubmed.ncbi.nlm.nih.gov/19204579/)), ideally **measured** in a first calibration session using rep counting and hold timing rather than only self-reported (supported by [Ross 2019](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract) and [Hunter 2014](https://paulogentil.com/pdf/Sex%20differences%20in%20human%20fatigability%20-%20mechanisms%20and%20insight%20to%20physiological%20responses.pdf)).
2. **Goal / purpose** (ACSM; already Delva's five programs).
3. **Days and time available** (already in spec; aligns with ACSM frequency bands).
4. **Observed response and adherence** each chapter: completion, reps/holds trend, perceived effort and enjoyment (data-driven adaptation; [Ross 2019](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract); [Brons 2024](https://pmc.ncbi.nlm.nih.gov/articles/PMC11607567/)).
5. **Preferences and self-selected intensity** (exercise likes/dislikes, "easier/harder" choice per exercise) ([Ekkekakis 2009](https://www.springermedicine.com/let-them-roam-free/23075776); [Oliveira 2015](https://www.frontiersin.org/articles/10.3389/fpsyg.2015.01105/full)).
6. **Psychological constructs** such as confidence (self-efficacy) and experience with structured training, which map naturally to **First Steps** ([Noar 2007](https://pubmed.ncbi.nlm.nih.gov/17592961/) moderators; [Hors-Fraile 2018](https://idus.us.es/handle/11441/82683?show=full) on missing behaviour-change grounding).
7. **Safety constraints** as filters, not groups: pregnancy/postpartum, current injury or pain, joint limitations (WHO treats pregnancy/postpartum separately: [sedentarybehaviour.org summary](https://sedentarybehaviour.org/2020/11/26/2020-who-guidelines-on-physical-activity-and-sedentary-behaviour-just-released)); exercise substitutions rather than separate programs. (Overlaps the safety area of the larger brief.)

#### Recommendation approach: rule-based vs data-driven, cold start, onboarding, explanations
- **Cold start**: rule-based mapping of 3 questions (goal, level, days) to one of 45 curated cells. No user data or ML needed on day 1 ([De Croon 2021](https://doaj.org/article/5d860b65d3984a3ea112e41038198342); [Ghanvatkar 2019](https://pmc.ncbi.nlm.nih.gov/articles/PMC6352015)).
- **Calibration**: first 1-2 sessions double as a level check; if measured reps/holds disagree strongly with the self-reported level, suggest a level change (user accepts or declines).
- **Data-driven layer later**: per-user progression within a cell (rep and hold targets from the camera) and, once real usage data exist, per-user tuning of audio-feedback type/timing (the use-case where reinforcement learning has been applied, per [Brons 2024](https://pmc.ncbi.nlm.nih.gov/articles/PMC11607567/)). Population-level learning across users should be audited for subgroup differences before it affects assignment (Item 17).
- **Onboarding**: keep it to the few questions that change content, put them first, and defer optional profile fields ([Galesic & Bosnjak 2009](https://academic.oup.com/poq/article-lookup/doi/10.1093/poq/nfp031)).
- **Explanations**: one plain sentence tied to the user's own answers ("Suggested because you chose strength, 3 days a week, and are new to structured training") plus a visible "change program" control. Evidence is thin ([HealthRecSys 2017](https://ceur-ws.org/Vol-1953/healthRecSys17_paper_8.pdf)), so A/B-test it.
- **User control**: allow switching program/level any time; keep the chapter check-in as accept/decline; never lock content by demographic.
- **Evaluation**: judge the recommender on adherence, chapter completion, switch rate and user-rated fit, broken down by gender, age band and body size to detect unintended disparities, not just on assignment "accuracy" ([De Croon 2021](https://doaj.org/article/5d860b65d3984a3ea112e41038198342)).

#### Fairness and legal risks (summary)
- **Steering**: routing women away from Build Strength or 50-64-year-olds away from intensity contradicts the training evidence and the WHO strength recommendation for all adults ([Roberts 2020](https://pubmed.ncbi.nlm.nih.gov/32218059/); [Refalo 2025](https://peerj.com/articles/19042); [WHO/Europe](https://www.who.int/europe/news-room/fact-sheets/item/physical-activity)).
- **Proxy bias**: demographics as stand-ins for capability will mis-place many users ([Obermeyer 2019](https://chmi.berkeley.edu/news/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations); [Ross 2019](https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract)).
- **Exclusion of trans and non-binary users** by binary, content-changing gender fields ([Wilcox et al. CHI 2023](https://research.google/pubs/infrastructuring-care-how-trans-and-non-binary-people-meet-health-and-well-being-needs-through-technology/)).
- **EU**: sex-differentiated services under Directive 2004/113/EC with a narrow Art. 4(5) justification; Test-Achats precedent against sex as a predictive proxy ([Art. 4](https://www.legislation.gov.uk/eudr/2004/113/article/4); [FRA](https://fra.europa.eu/en/caselaw-reference/cjeu-c-23609-judgment)). GDPR Art. 22 if assignment were solely automated with significant effects ([gdpr-text.com](https://gdpr-text.com/en/read/article-22/)).
- **US**: California Unruh Act covers sex and gender identity/expression in business establishments ([CRD](https://calcivilrights.ca.gov/unruh/)).
- Mitigations: age only as eligibility gate; optional inclusive gender field with no content effect; transparent, overridable suggestions; subgroup audits of outcomes; legal review in EU, UK and US before launch.

### Gaps

#### Gaps / open questions for Delva user research
- Do users **expect or want** gender- or age-specific programs? (Some may prefer them for identity or comfort reasons; test whether an optional "programs popular with people like me" view is wanted, and whether it changes choices.)
- How accurately do users **self-report level**, and how often does a camera calibration session disagree? What disagreement threshold should trigger a level suggestion?
- What **onboarding length** keeps completion high in Delva's audience? Measure drop-off per question.
- Does a short **"why this program"** explanation increase trust, switching or adherence? (A/B test.)
- Are women or 50-64-year-olds **choosing** Build Strength less often under a neutral design, and if so, is that preference or messaging? (Watch for steering via imagery and copy.)
- Do **plank and hold targets** calibrated per user feel right across body types, and do camera hold-timing and rep-counting work equally well across sex, age, body size and skin tone? (Hand-off to the vision area.)
- How do **trans and non-binary** testers experience the onboarding and program assignment?
- Legal review: UK Equality Act 2010 services provisions, EU AI Act classification, US federal and state public-accommodation law, and GDPR Art. 9 health data in onboarding (none fully verified here).

#### Also considered (not core)
- Polito et al. 2021, J Sports Sci, resistance-training moderators in untrained young vs older adults ([publisher](https://informahealthcare.com/doi/full/10.1080/02640414.2021.1924978)); abstract-level only.
- Andrade, Bastos & Teixeira 2024, systematic review of self-selected intensity ([Cuadernos de Psicología del Deporte](https://revistas.um.es/cpd/article/view/569371/version/774041)); smaller journal, high heterogeneity.
- JMIR Human Factors 2024 scoping review of AI for physical activity ([PDF](https://humanfactors.jmir.org/2024/1/e55964/PDF)); title/authors not verified.
- Said 2025 position paper on recommender systems for physical activity ([arXiv, preprint](https://arxiv.org/abs/2508.07980v1)).
- "This Whole Thing Smacks of Gender" bioimpedance paper ([arXiv 2101.08325](https://ar5iv.labs.arxiv.org/html/2101.08325)); venue not verified.
- A congress abstract on age- and sex-specific anabolic response (World Physiotherapy proceeding) was excluded as not peer-reviewed.

#### Source list (all accessed 2026-11-07)
- Roberts, Nuckols, Krieger 2020, J Strength Cond Res: https://pubmed.ncbi.nlm.nih.gov/32218059/
- Refalo et al. 2025, PeerJ: https://peerj.com/articles/19042 ; https://doaj.org/article/dbf856c9d64840b59318c009c4abd626 ; https://napier-repository.worktribe.com/output/4166718/sex-differences-in-absolute-and-relative-changes-in-muscle-size-following-resistance-training-in-healthy-adults-a-systematic-review-with-bayesian-meta-analysis
- Jones et al. 2021, Sports Medicine: https://research.bond.edu.au/en/publications/sex-differences-in-adaptations-in-muscle-strength-and-size-follow/ ; https://pubmed.ncbi.nlm.nih.gov/33332016 ; https://edisciplinas.usp.br/pluginfile.php/7965310/mod_resource/content/1/jones%202021%20-%20sex%20differences%20in%20adaptations%20in%20muscle%20stregth%20an%20size%20following%20resistance%20training%20in%20older%20adults%20systematic%20review.pdf
- Hunter 2014, Acta Physiologica: https://paulogentil.com/pdf/Sex%20differences%20in%20human%20fatigability%20-%20mechanisms%20and%20insight%20to%20physiological%20responses.pdf
- Hunter 2016, Experimental Physiology: https://zendy.io/title/10.1113/ep085370
- Hunter, Marquette repository: https://epublications.marquette.edu/exsci_fac/64
- Age and fatigability (PMC): https://pmc.ncbi.nlm.nih.gov/articles/PMC2909485
- McNulty et al. 2020, Sports Medicine: https://rgu-repository.worktribe.com/output/940959 ; https://springerlink.bibliotecabuap.elogim.com/content/pdf/10.1007/s40279-020-01319-3.pdf
- Colenso-Semple et al. 2023, Front Sports Act Living: https://pmc.ncbi.nlm.nih.gov/articles/PMC10076834 ; https://doaj.org/article/6b0c0ed2b14045e29d01c055be956349 ; https://e-space.mmu.ac.uk/631857/1/Colenso-Semple%20et%20al%20no%20MC%20phase%20effects.pdf
- Diaz-Canestro & Montero 2019, Sports Medicine: https://www.springermedizin.de/sex-dimorphism-of-vo2max-trainability-a-systematic-review-and-me/17149252 ; https://repository.hku.hk/handle/10722/288964
- WHO 2020 guidelines / Bull et al. BJSM: https://digibug.ugr.es/handle/10481/66573 ; https://digibug.ugr.es/bitstream/handle/10481/66573/1451.full.pdf?sequence=1 ; https://chiro.org/Graphics_Box_RESEARCH/GRAPHICS_20/THE_ROLE/WHO_2020_Guidelines_on_Physical_Activity_and_Sedentary_Behaviour.pdf
- WHO/Europe physical activity fact sheet: https://www.who.int/europe/news-room/fact-sheets/item/physical-activity
- WHO EMRO recommended levels: https://www.emro.who.int/health-education/physical-activity/recommended-levels-of-physical-activity-for-health.html
- WHO 2020 release summary: https://sedentarybehaviour.org/2020/11/26/2020-who-guidelines-on-physical-activity-and-sedentary-behaviour-just-released
- ACSM 2009 position stand: https://pubmed.ncbi.nlm.nih.gov/19204579/ ; https://sfu.ca/~ryand/kin343/ACSMresistance.pdf ; later ACSM overview: https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823
- Phillips et al. 2017, JCI Insight: https://insight.jci.org/articles/view/95581 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC5621901/
- Ross et al. 2019, BJSM: https://bjsm.bmj.com/content/early/2019/03/09/bjsports-2018-100328.abstract ; https://vu-9.eprints-hosting.org/40357/1/1141.full.pdf
- Noar, Benac, Harris 2007, Psychological Bulletin: https://pubmed.ncbi.nlm.nih.gov/17592961/ ; https://core.ac.uk/download/17050054.pdf ; https://pmc.ncbi.nlm.nih.gov/articles/PMC4578294
- Lustria et al. 2013, J Health Communication: https://informahealthcare.com/doi/full/10.1080/10810730.2013.768727 ; erratum: https://profiles.umsl.edu/en/publications/erratum-a-meta-analysis-of-web-delivered-tailored-health-behavior/
- Ekkekakis 2009, Sports Medicine: https://www.springermedicine.com/let-them-roam-free/23075776
- Ekkekakis, Parfitt, Petruzzello 2011, Sports Medicine: https://www.doi.org/10.2165/11590680-000000000-00000 ; https://pubmed.ncbi.nlm.nih.gov/21780850/
- Oliveira, Deslandes, Santos 2015, Frontiers in Psychology: https://www.frontiersin.org/articles/10.3389/fpsyg.2015.01105/full
- Andrade, Bastos, Teixeira 2024: https://revistas.um.es/cpd/article/view/569371/version/774041
- De Croon et al. 2021, JMIR: https://doaj.org/article/5d860b65d3984a3ea112e41038198342 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC8278303 ; https://lirias.kuleuven.be/3476820
- Hors-Fraile et al. 2018, Int J Med Inform: https://idus.us.es/handle/11441/82683?show=full
- Ghanvatkar et al. 2019, JMIR mHealth uHealth: https://pmc.ncbi.nlm.nih.gov/articles/PMC6352015
- Brons et al. 2024, JMIR: https://pmc.ncbi.nlm.nih.gov/articles/PMC11607567/ ; https://doaj.org/article/3dd1a32a5d184dfcb06719a3ed60bbb6
- JMIR Human Factors 2024 AI/PA review: https://humanfactors.jmir.org/2024/1/e55964/PDF
- Galesic & Bosnjak 2009, Public Opinion Quarterly: https://academic.oup.com/poq/article-lookup/doi/10.1093/poq/nfp031
- Survey Research Methods, questionnaire length experiment: https://ojs.ub.uni-konstanz.de/srm/article/view/8348/7667
- HealthRecSys 2017 uncertainty paper: https://ceur-ws.org/Vol-1953/healthRecSys17_paper_8.pdf
- imec explanation modalities study: https://imec-publications.be/handle/20.500.12860/59547
- Said 2025 (preprint): https://arxiv.org/abs/2508.07980v1
- Obermeyer et al. 2019, Science: https://chmi.berkeley.edu/news/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations ; https://just-tech.ssrc.org/citation/dissecting-racial-bias-in-an-algorithm-used-to-manage-the-health-of-populations/
- Wilcox et al. CHI 2023: https://research.google/pubs/infrastructuring-care-how-trans-and-non-binary-people-meet-health-and-well-being-needs-through-technology/
- Cifor & Garcia, ACM, doi 10.1145/3364685: https://bvbvf1.bib-bvb.de/vufind/PrimoRecord/cdi_crossref_primary_10_1145_3364685
- Bioimpedance and gender (preprint): https://ar5iv.labs.arxiv.org/html/2101.08325
- Directive 2004/113/EC: https://eur-lex.europa.eu/eli/dir/2004/113/oj/eng ; Article 4: https://www.legislation.gov.uk/eudr/2004/113/article/4
- Test-Achats C-236/09: https://fra.europa.eu/en/caselaw-reference/cjeu-c-23609-judgment
- Commission 2015 report summary: https://oeil.europarl.europa.eu/oeil/en/procedure-document-summary/pdf?id=1419255
- Equinet findings: https://equineteurope.org/wp-content/uploads/2014/10/key_findings_-_executive_summary.pdf
- GDPR Article 22: https://gdpr-text.com/en/read/article-22/ ; https://legislation.gov.uk/eur/2016/679/article/22/adopted ; https://eur-lex.europa.eu/eli/reg/2016/679/oj
- UK GDPR Art. 22 annotation: https://ukgdpr.fieldfisher.com/chapter-3/article-22-gdpr/
- California Unruh Act: https://calcivilrights.ca.gov/unruh/ ; https://calcivilrights.ca.gov/wp-content/uploads/sites/32/2024/12/Unruh-FAQ.pdf ; https://law.justia.com/codes/california/code-civ/division-1/part-2/section-51
- UK Equality Act 2010 (to check, not verified): https://www.legislation.gov.uk/ukpga/2010/15
