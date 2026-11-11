# R-E: first pass, area E (personalisation and user grouping)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:10 UTC |
| Output | [02-notes/first-pass/E_personalisation_grouping.md](../../02-notes/first-pass/E_personalisation_grouping.md) |
| Checked later by | V2 |

## Prompt sent by the coordinator (verbatim)

````text
Research personalisation and user grouping for fitness programs, including whether age and sex/gender should change prescription, and the fairness risks of demographic segmentation (Area E of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps: learning structured training; All Round: balanced everyday fitness; Build Strength: resistance focus; Go Further: sustained effort; Move Freely: range, flexibility, control); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters of ~2 weeks of work; a chapter ends only when its work is done AND >=14 active days have passed; missed workouts never become debt (sequence, not calendar); end-of-chapter check-in suggests frequency changes the user accepts/declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) was already analysed: do not re-analyse it. Assume launch markets EU/UK and US.

Objective: Find the strongest evidence on whether age (within 18-64) or sex/gender should change exercise prescription beyond fitness level, goal and available time; review rule-based vs data-driven recommendation for fitness programs (cold start, onboarding questionnaires, explaining recommendations); and identify fairness/bias/legal risks of segmenting users by demographics. Explicitly assess Delva's spec decision to group users by age and gender.

Key questions:
- Sex differences in training response: meta-analyses on relative strength and hypertrophy gains in men vs women (e.g., Roberts et al. 2020 J Strength Cond Res; Refalo et al. 2024/2025 Bayesian meta-analysis on sex differences in muscle size; Jones et al. 2021 Sports Medicine in older adults; any 2022-2026 updates), sex differences in fatigability (e.g., Hunter's work — women often more fatigue-resistant at the same relative intensity; relevance to timed holds and rep targets), menstrual-cycle phase effects on performance/training (e.g., McNulty et al. 2020 Sports Medicine meta-analysis; Colenso-Semple et al. 2023 review), aerobic/HIIT response differences.
- Age within 18-64: evidence on age-related differences in trainability, recovery and injury risk across young vs middle-aged adults (not 65+); whether ACSM/WHO guidelines differentiate prescription for adults 18-64 by age or sex (they generally do not — verify); where they do differ (pregnancy/postpartum, menopause, older adults 65+).
- Does tailoring work? Meta-analyses of tailored vs generic interventions (e.g., Noar et al. 2007 Psychological Bulletin — foundational; Lustria et al. 2013 J Health Communication web-based tailored interventions), and evidence on what to tailor on (preferences, baseline fitness, self-efficacy, stage of change) rather than demographics. Self-selected vs prescribed intensity and affect (Ekkekakis et al.) and its effect on adherence.
- Rule-based vs data-driven recommendation: systematic/scoping reviews of health recommender systems (e.g., De Croon et al. 2021 JMIR; Hors-Fraile et al. 2018 Int J Med Inform; Tran et al. 2018; any 2022-2026 reviews of physical activity recommenders), cold-start strategies, onboarding questionnaire design (length, drop-off), explainable recommendations in health apps (CHI/IMWUT/RecSys/JMIR), and user control (letting users choose/override).
- Fairness and bias risks of demographic segmentation: gender stereotyping in fitness apps (HCI papers), treatment of non-binary/trans users, proxy discrimination (e.g., Obermeyer et al. 2019 Science — foundational, as an example of proxy bias), legal angles (EU Gender Goods & Services Directive 2004/113/EC; GDPR Art. 22 automated decision-making and profiling; EU AI Act if relevant; US anti-discrimination in consumer services — keep brief and cite primary texts), and the risk of steering women away from strength work or older users away from intensity.
- Conclude: what evidence supports or challenges grouping by age and gender, and what alternative grouping variables have better support.

Suggested sources:
- Sports Medicine, BJSM, MSSE, J Strength Cond Res, J Appl Physiol, Eur J Appl Physiol; ACSM/WHO guideline documents
- JMIR, JMIR mHealth uHealth, IJBNPA, Psychological Bulletin, Health Psychology Review; CHI, IMWUT, CSCW, RecSys
- EUR-Lex for EU law primary texts

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Repos (if any): generally >=1,000 GitHub stars OR maintained by a major company/academic lab with a peer-reviewed paper; report stars, last commit date, contributors, organisation, licence, date checked. Papers: peer-reviewed in reputable venues (HCI/ubicomp: CHI, IMWUT/UbiComp, CSCW, RecSys; health/sport: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA and similar reputable journals; official guidelines ACSM, WHO). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice (public docs of commercial apps = industry practice). Exclude SEO blogs, vendor marketing, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items (you may briefly list "also considered" items).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (paper, meta-analysis, guideline, law) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (venue, design, citations with date checked) | licence/commercial-use implications (usually n/a) | key ideas to borrow | limitations. Then sections: "Verdict on grouping by age and gender (supports / challenges, with evidence strength)", "Better grouping variables", "Recommendation approach: rule-based vs data-driven, cold start, onboarding, explanations", "Fairness and legal risks", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/E_personalisation_grouping.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I've saved the Area E notes, and the main finding is that the evidence argues against grouping Delva users by age (18-64) or gender. Delva's own spec also gives these two fields no job: content cells are program x level x days only, so age and gender don't pick content.

File: /home/user/openGym/research_notes/Vision guided home fitness evidence/E_personalisation_grouping.md (about 8,900 words, all dates checked 2026-11-07). It uses the researcher template (Q1 to Q6, each with Takeaway, Cited Findings, Inferences and Gaps). It has 21 numbered source cards in your requested fields, about 10 of them marked Core. The parts you asked for (verdict, better grouping variables, recommendation approach, fairness and legal risks, user-research gaps, also considered, full source list) are sub-sections of Q6, to stay inside the template.

**Verdict**
- **Gender: the evidence argues against it (strong evidence).**
  - Roberts et al. 2020 (JSCR): no sex difference in muscle growth (ES 0.07, P = 0.31) or lower-body strength; women gained more upper-body strength (ES -0.60).
  - Refalo et al. 2025 (PeerJ Bayesian meta-analysis, 29 studies, ages 18-45): men gained slightly more muscle in absolute terms (SMD 0.19); relative gains were similar.
  - Jones et al. 2021 (Sports Med, older adults): the differences mostly disappear in relative terms.
  - Menstrual-cycle phase effects are trivial (McNulty 2020) or not shown (Colenso-Semple 2023 umbrella review).
  - The one real difference is aerobic: men gained more VO2max (Diaz-Canestro & Montero 2019; only 8 studies, 175 people). That is too small a basis for a separate program.
- **Age within 18-64: the evidence argues against it.**
  - WHO 2020 gives one recommendation for adults 18-64, including muscle-strengthening on 2 or more days a week. Separate advice exists only for 65+, pregnancy/postpartum and clinical groups.
  - The ACSM 2009 position stand prescribes by training status, goals and capacity. Its 2-3 / 3-4 / 4-5 days by level closely matches Delva's level x days matrix.
  - Midlife does show smaller muscle growth, but only in one small study (Phillips 2017: +1.1% lean mass at 45-55 vs +5.2% at 18-28).
  - Ross et al. 2019 (BJSM consensus): people respond very differently to the same training. Measuring each user is therefore more useful than grouping by demographics.
- **Hold timing:** Hunter's reviews show women are usually more fatigue-resistant in held contractions at the same relative effort. For planks and similar holds, this argues for setting targets per user from the camera, not by sex.

**Recommended changes for Delva**
- Use age only to check the user is 18-64.
- Make gender optional and inclusive (non-binary, prefer not to say). It should never change program, level, intensity, price or access.
- Group users by:
  - goal, level and days available
  - a level check measured in the first one or two sessions
  - preferences and a choice of easier or harder versions (self-selected intensity improves how exercise feels, per Ekkekakis and Oliveira 2015)
  - how the user actually responds each chapter
  - safety screens such as pregnancy/postpartum or injury, used to filter exercises rather than to form groups

**Recommendation approach**
- On day 1, use fixed rules to map three questions (goal, level, days) to the 45 curated cells. Add data-driven adjustment later.
- Reviews of health recommender systems found half of studies tested only the algorithm and none used behaviour-change theory (De Croon 2021: 73 studies; Hors-Fraile 2018: 19 papers). Brons 2024 found reinforcement learning is mostly used for the type of feedback message.
- Keep onboarding short. Galesic & Bosnjak 2009 found longer questionnaires lose people, though that evidence comes from web surveys, not apps.
- Evidence on explaining recommendations is thin (workshop papers only). Suggest a one-line "why this program" plus a "change program" control at any time.
- Tailoring helps, but only a little (Noar 2007: r = .074; Lustria 2013: d = .139).

**Fairness and legal risks**
- **Proxy bias.** Obermeyer 2019 (Science) shows how a stand-in variable produces group bias. Age and gender would be stand-ins for capability here.
- **Steering.** Routing women away from strength work, or older users away from intensity, would contradict both the training evidence and WHO.
- **Trans and non-binary users.** Wilcox et al. CHI 2023 documents harm to trans and non-binary users from binary inputs.
- **EU law.** Directive 2004/113/EC Art. 4(5) only allows sex-differentiated services on narrow grounds. In Test-Achats (C-236/09) the EU court rejected sex as a pricing factor in insurance even though it was statistically predictive.
- **GDPR Art. 22.** Verified wording; the risk stays low if users can see and override the suggestion.
- **California.** The Unruh Act covers sex and gender identity in business establishments.
- All application of the law to Delva is my inference, not legal advice.

**What I could not check**
- **No citation counts.** The Semantic Scholar API and Google Scholar were blocked, so every item says "citation count not verified". To fill them in, `api.semanticscholar.org` has to be allowed in the session network settings.
- **Blocked hosts.** PubMed, EUR-Lex and jmir.org pages were also blocked. Facts come from search extracts of the publisher, PMC, DOAJ, repository and legislation.gov.uk pages that are linked.
- **Search budget ran out.** The shared web-search budget ran out before the UK Equality Act 2010 search, so it is listed as a gap with its legislation.gov.uk link.
- **Other legal gaps.** The EU AI Act classification and US federal law were not checked.
- **Evidence gaps.**
  - No meta-analysis of bodyweight-only home training by sex.
  - Nothing isolating middle-aged against young adults.
  - No peer-reviewed study of onboarding drop-off in fitness apps.
  - No study of gender steering in commercial apps.
- **Unconfirmed details.**
  - The California agency page appears to list "age (40 and over)" under Unruh, which conflicts with my understanding of the statute. It is flagged as unverified.
  - The journal for Cifor & Garcia (doi 10.1145/3364685) is unconfirmed.
- **Repositories.** None were relevant to this area.
````

## What changed afterwards

V2 confirmed the priority numbers, including Phillips 2017 from full text (5.24% vs 1.12% lean-mass gain) and the WHO 2020 wording for adults 18 to 64. It confirmed Cifor & Garcia's venue (ACM Transactions on Social Computing 2(4), 2019) and added Renee Shelby as second author of Wilcox et al. CHI 2023. The EU legal wording (Directive 2004/113/EC Art. 4(5), Test-Achats, GDPR Art. 22) stayed unverified in V2 because EUR-Lex returned a bot-check page; V4 later confirmed GDPR Art. 22. See [V2_verify_DE.md](../../02-notes/verification/V2_verify_DE.md).
