# R-I: first pass, area I (safety and screening)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:09 UTC |
| Output | [02-notes/first-pass/I_safety_screening.md](../../02-notes/first-pass/I_safety_screening.md) |
| Checked later by | V4 |

## Prompt sent by the coordinator (verbatim)

````text
Research safety and pre-exercise screening for an unsupervised home bodyweight fitness app (Area I of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further [sustained effort, may include interval work], Move Freely [range, flexibility, control]); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters; missed workouts never become debt; partial workouts are saved as activity; end-of-chapter check-in; Delva explicitly does not promise weight loss, rehabilitation, perfect technique, or results by a deadline. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) was already analysed: do not re-analyse it. Assume launch markets EU/UK and US.

Objective: Determine best practice and evidence for pre-exercise screening in a consumer app, how to model contraindications and exercise modifications, how to handle pain reports and when to tell users to stop or seek medical advice, the injury risk of unsupervised home bodyweight training, and the regulatory line between a wellness app and a medical device (which supports or constrains Delva's "no rehab promise" rule and any pain/injury features).

Key questions:
- Pre-exercise screening: PAR-Q+ (current version year; Warburton et al. 2011 and later papers; Bredin et al. 2013) and the PAR-Q+ Collaboration's terms for reproducing it in an app (copyright/permission — verify on eparmedx.com or the official site); ePARmed-X+; ACSM preparticipation health screening recommendations (Riebe et al. 2015 MSSE) — the shift away from risk-factor-based screening to activity status + known disease + symptoms; evidence on over-referral and barriers created by screening; CSEP Get Active Questionnaire and the Get Active Questionnaire for Pregnancy (terms of use); how to implement self-screening digitally (and who is excluded, e.g., pregnancy, recent surgery, cardiovascular symptoms).
- Modelling contraindications and modifications: credible sources for exercise modifications for common conditions in a general adult population (e.g., hypertension and breath-holding/Valsalva during holds; isometric exercise and blood pressure — Edwards et al. 2023 BJSM meta-analysis; low back pain; knee pain; osteoporosis and spinal flexion — e.g., Too Fit To Fracture recommendations; pregnancy — e.g., 2019 Canadian guideline Mottola et al. BJSM; WHO 2020 includes pregnancy/postpartum); how to represent these as rules (exclude/modify/warn) — label practice vs evidence.
- Pain reports: pain-monitoring model (Thomee 1997 — foundational; Silbernagel et al. 2007 Am J Sports Med RCT), traffic-light approaches, distinguishing expected muscle soreness (DOMS) from warning signs; stop rules and red flags (e.g., ACSM warning signs during exercise: chest pain/discomfort, unusual breathlessness, dizziness/fainting, palpitations; NHS guidance) — cite primary guideline text.
- Injury risk in unsupervised home bodyweight training: epidemiology of resistance-training and HIIT injuries (e.g., Keogh & Winwood 2017 Sports Medicine; Kerr, Collins & Comstock 2010 Am J Sports Med (ED weight-training injuries); HIIT/CrossFit-type injury rates and NEISS-based analyses of HIIT/burpee/home exercise injuries; any COVID-era home-exercise injury studies), supervised vs unsupervised training outcomes and safety (e.g., Lacroix et al. 2017 Sports Medicine meta-analysis; Fisher et al. on supervision in RT; home vs centre-based cardiac rehab Cochrane review for adverse events); typical adverse-event rates in home-based exercise RCTs. What does the evidence say about relative risk vs other activities (e.g., injury per 1000 h)?
- Regulatory boundary: US FDA "General Wellness: Policy for Low Risk Devices" guidance (verify the current version and date, including any 2025-2026 update) and FDA's Policy for Device Software Functions/Mobile Medical Applications; EU MDR and MDCG 2019-11 guidance on qualification of software as a medical device; UK MHRA guidance on software and AI as a medical device. Which Delva features or claims (e.g., pain triage, injury rehab, posture correction "to prevent injury") could tip it into medical-device territory?
- What do major commercial apps publicly do for screening and pain handling (label as industry practice)?

Suggested sources:
- MSSE, BJSM, Sports Medicine, Am J Sports Med, J Strength Cond Res, Cochrane Library; acsm.org; csep.ca; eparmedx.com; who.int; nhs.uk; fda.gov; health.ec.europa.eu (MDCG documents); gov.uk (MHRA)

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Papers: peer-reviewed in reputable venues (health/sport: BJSM, Sports Medicine, MSSE, Am J Sports Med, JMIR and similar; official guidelines ACSM, WHO, CSEP; regulators FDA, EU MDCG, MHRA). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice. Exclude SEO blogs, vendor marketing, law-firm marketing posts (prefer primary regulatory texts), and anything not traceable to a primary source. Quality over quantity: the 5-10 best items for the main table (you may add short supporting lists).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (guideline, questionnaire, paper, meta-analysis, regulation) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (venue, design, citations with date checked) | licence/commercial-use implications (e.g., PAR-Q+ reproduction terms) | key ideas to borrow | limitations. Then sections: "Screening flow recommendation (with evidence strength)", "Contraindication/modification modelling", "Pain reports and stop rules", "Injury risk evidence", "Wellness vs medical device boundary (EU/UK/US)", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/I_safety_screening.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
Area I notes (safety and pre-exercise screening) are saved to:
/home/user/openGym/research_notes/Vision guided home fitness evidence/I_safety_screening.md

The file has a 10-item main table in the requested notes format, then these sections: screening flow recommendation, contraindication/modification modelling (with a draft exclude/modify/warn rule table), pain reports and stop rules, injury risk evidence, wellness vs medical device boundary (with a feature-by-feature risk map), industry practice, gaps / open questions for user research, and a full source list. Every claim carries an evidence label ([Strong] / [Weak] / [Opinion/Industry]), and every number is marked as checked on 2026-11-07.

**Limits on this work:**
- **Full texts not read.** WebFetch could not reach fda.gov, csep.ca, eparmedx.com, pmc.ncbi.nlm.nih.gov or api.semanticscholar.org, because they are outside this session's allowed network. Everything comes from search-result excerpts, and quotes are labelled that way. For full reads, those hosts need to be allowed in the session's network settings.
- **No citation counts.** Every item says "citation count not verified".
- **Search budget ran out.** The shared web-search budget was used up before the last round of queries. These remain unverified and are listed as gaps:
  - Thomeé 1997
  - Fisher et al. on supervision
  - Valsalva/breath-holding guideline text
  - the Canadian pregnancy guideline's stop signs
  - NHS back-pain red flags
  - NICE NG226 (knee osteoarthritis)

**Key findings:**
1. **Licensing blocks copying either questionnaire into a commercial app.**
   - The 2023 PAR-Q+ (HFJC) is published under CC BY-NC-ND 4.0. Forms in circulation carry "© 2025 PAR-Q+ Collaboration" and allow copies only of the whole questionnaire, unchanged.
   - CSEP lets people reproduce the Get Active Questionnaire and the pregnancy version unmodified with credit, but putting them in software needs a CSEP licensing agreement and fees.
   - So Delva either licenses one (contacts: eparmedx@gmail.com; CSEP info@csep.ca) or writes its own questions from ACSM's logic. This is my inference from the licence terms, not legal advice.
2. **Screening best practice.** ACSM's 2015 recommendations (Riebe et al., MSSE) ask about current activity, known heart/metabolic/kidney disease and symptoms, and dropped risk-factor screening because it caused unnecessary referrals.
   - Over-referral is still large: applying the ACSM algorithm to US survey data (Whitfield et al. 2017), 54.2% of adults aged 40+ would be sent to a doctor before any exercise.
   - PAR-Q+ developers report referrals of about 1%, versus 15% with the original PAR-Q.
   - Proposed flow: symptom questions first (pause until checked), then known disease (vigorous "Go Further" intervals locked until the user confirms clearance), activity status, routing for pregnancy and recent surgery, and a re-screen at each end-of-chapter check-in.
3. **Conditions mostly mean "modify", not "exclude".**
   - Edwards et al. 2023 (BJSM, 270 RCTs): isometric training gave the largest resting blood-pressure drop (-8.24/-4.00 mmHg), and wall squats ranked top for systolic pressure. Safety data on isometrics in high blood pressure are low certainty (Hansford 2021: adverse-event risk ratio 1.12, 95% CI 0.47-2.68, mostly handgrip trials).
   - The 2019 Canadian pregnancy guideline and WHO 2020 support activity in pregnancy, but secondary sources disagree on the list of absolute contraindications.
   - Too Fit To Fracture (osteoporosis) recommendations are all conditional, and its specific spinal-flexion advice was not retrieved.
   - "Avoid breath-holding" and "no spinal flexion with osteoporosis" are flagged as common practice without verified guideline text.
4. **Pain.** Silbernagel 2007 (Am J Sports Med RCT, n=38) allowed training at pain up to 5/10 if it settled by next morning and did not rise week to week, with no negative effects. This is the basis for the proposed pain rule (weak evidence).
   - Stop rules come from ACSM's symptom list and UK clinical guidance: chest pain, fainting, unusual breathlessness and palpitations mean stop and seek urgent help.
5. **Injury risk.**
   - Niemeijer 2020 (BJSM): serious adverse events in exercise trials were not raised (RR 0.96); minor ones were (RR 1.19, number needed to harm 6).
   - Weight-training sports run at about 2-4 injuries per 1000 h (secondary summary of Keogh and Winwood 2017), CrossFit about 3.2, high-intensity functional training about 4.29.
   - US emergency-department data (Rynecki 2019) show calisthenics and HIIT injuries, mostly knee and ankle sprains and strains, rising with the popularity of those workouts.
   - **There is no injury rate per 1000 h for unsupervised home bodyweight training.**
   - Supervision improves strength and balance results (Lacroix 2017) but has no injury outcome data.
   - The only COVID-era home-exercise injury figure came from a non-peer-reviewed source and is excluded.
6. **Regulation.**
   - FDA's General Wellness guidance was revised on **6 January 2026**, replacing 2019; this was confirmed only through several law-firm alerts.
   - FDA's software policy dates from 28 September 2022.
   - EU MDCG 2019-11 Rev.1 is from June 2025; commentators disagree on how much it changed.
   - UK MHRA guidance says general fitness and wellbeing monitoring is not usually a medical purpose, and the stated intended purpose decides.
   - **Features likely to tip Delva into device territory:** pain triage that names a cause, rehab or "return from injury" programs, programs for a named condition, "lowers blood pressure" claims, and posture correction "to prevent [named] injury".
   - Delva's "no rehab promise" rule fits the wellness side.
7. **Industry practice.** Freeletics tells postpartum users to see a doctor before starting and, in its forum, advises against using the app while pregnant. Apple Fitness+ has a pregnancy program. iFIT uses a consult-your-physician disclaimer. No major app was found running a full PAR-Q+-style screen.
````

## What changed afterwards

V4 confirmed the FDA General Wellness guidance date (6 January 2026) from the FDA text itself, confirmed Riebe 2015, Whitfield 2017, Edwards 2023, Hansford 2021, Niemeijer 2020, Keogh & Winwood 2017, Lacroix 2017 and Thomeé 1997, corrected the Mottola PubMed link (BJSM version is PMID 30337460) and a Rynecki figure, and replaced the unverified "1% vs 15%" referral claim with measured figures (original PAR-Q 68.4%, AAPQ 94.5% in the same NHANES sample). PAR-Q+ and CSEP licence terms stayed unverified. See [V4_verify_IJ.md](../../02-notes/verification/V4_verify_IJ.md).
