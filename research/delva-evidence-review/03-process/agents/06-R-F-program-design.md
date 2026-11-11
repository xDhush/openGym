# R-F: first pass, area F (program design for novices and bodyweight progression)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:11 UTC |
| Output | [02-notes/first-pass/F_program_design.md](../../02-notes/first-pass/F_program_design.md) |
| Checked later by | V3 |

## Prompt sent by the coordinator (verbatim)

````text
Research program design for novice adults and bodyweight progression (Area F of a larger brief), and the exercise-science evidence on several of Delva's spec decisions.

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose, not difficulty (First Steps: learning structured training; All Round: balanced everyday fitness; Build Strength: resistance focus; Go Further: sustained effort; Move Freely: range, flexibility, control); each content cell = program x starting level (beginner/intermediate/advanced) x 3, 4 or 5 days a week (2 and 6 days come later as adjustments); no equipment; adults 18-64; sessions of about 15-20 minutes including warm-up, main work and cool-down; a program lasts at least 8 weeks, split into 4 chapters of about two weeks of work each; a chapter ends only when its assigned work is done AND at least 14 active days have passed (paused days don't count); missed workouts never become debt (the next unfinished workout stays next; the plan is a sequence, not a calendar); approved shorter versions earn credit; end-of-chapter check-in suggests frequency changes; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) was already analysed (it has progression rules such as linear, double progression): do not re-analyse it; mention only as a comparison.

Objective: Gather the official guidelines and strongest meta-analytic evidence on resistance, aerobic and flexibility training for untrained adults, bodyweight progression/regression, effort scales (RPE/RIR) for novices, warm-ups, deloads, HIIT for untrained adults, and mobility/flexibility programs; then state what this evidence says about Delva's 8-week minimum and four chapters, the 3/4/5-day starting frequencies, the 15-20 minute sessions, and sequence-based handling of missed workouts (detraining after short breaks).

Key questions:
- Guidelines: ACSM 2009 Position Stand "Progression models in resistance training for healthy adults" (MSSE) — verify, and check whether ACSM has published a newer resistance-training position stand or update (2024-2026); ACSM 2011 position stand on quantity and quality of exercise (Garber et al., MSSE); ACSM's Guidelines for Exercise Testing and Prescription (latest edition); WHO 2020 guidelines on physical activity and sedentary behaviour (Bull et al., BJSM 2020; note removal of the 10-minute bout minimum, "some is better than none", muscle-strengthening >=2 days/week); US Physical Activity Guidelines 2nd ed. (2018); UK CMO guidelines (2019).
- Minimum effective dose and dose-response: e.g., Momma et al. 2022 BJSM meta-analysis (muscle-strengthening activity and mortality; benefit peaks around 30-60 min/week); Iversen et al. 2021 Sports Medicine "No time to lift?"; Androulakis-Korakakis et al. 2020 Sports Medicine; Schoenfeld volume and frequency meta-analyses (2016, 2017, 2019); Grgic et al. 2018 Sports Medicine on frequency and strength; Pelland et al. dose-response meta-regression (check venue/status); low-load training to near-failure effectiveness (Schoenfeld et al. 2017 meta; Lasevicius et al.); exercise snacks / very short bouts (e.g., Islam et al., Jenkins et al.; label evidence level).
- Bodyweight/calisthenics efficacy and progression/regression ladders: e.g., Kotarsky et al. 2018 (progressive calisthenic push-up training), Kikuchi & Nakazato 2017 (push-up vs bench press), Calatayud et al. 2015 (push-up vs bench press at matched EMG); how to progress without load (leverage, range, tempo, unilateral, reps, density); any ladder frameworks from credible bodies (NSCA, ACSM) — label as practice if not evidence.
- RPE/RIR for novices: Halperin et al. 2022 Sports Medicine meta-analysis on accuracy of predicting repetitions to failure; Zourdos et al. 2016; Helms et al. 2016; OMNI-RES scale (Robertson et al. 2003 — foundational). Are novices accurate? Does accuracy improve with practice?
- Warm-ups: evidence for performance and injury prevention (e.g., Fradkin et al. 2010 meta — foundational; McGowan et al. 2015 Sports Medicine; later reviews); cool-down evidence (e.g., Van Hooren & Peake 2018 Sports Medicine — cool-downs largely do not reduce soreness or improve recovery).
- Deloads: do beginners need them? (e.g., Bell et al. 2023 Delphi consensus; Coleman et al. 2024 deload RCT; any evidence specific to novices).
- HIIT for untrained adults: efficacy and safety (e.g., Weston et al. 2014 BJSM; Milanovic et al. 2015 Sports Medicine; affective responses and adherence debate, e.g., Biddle & Batterham 2015; low-volume HIIT reviews) — relevant to Go Further.
- Flexibility/mobility programs (Move Freely): ACSM flexibility recommendations (frequency, hold durations); chronic stretching meta-analyses on ROM (e.g., Konrad et al. 2023/2024; Afonso et al. 2021 strength training vs stretching for ROM); yoga/Pilates meta-analyses for flexibility; dose for ROM gains.
- Spec decisions: (a) 8-week minimum and 4 chapters: time course of adaptation in untrained adults (neural strength gains in first weeks; detectable hypertrophy ~6-8+ weeks; typical RCT durations); (b) 3/4/5 days: is 3+ days needed or appropriate for beginners vs 2 days; volume-equated frequency effects; recovery between bodyweight sessions; (c) 15-20 min sessions: can 3-5 sessions of 15-20 min (including warm-up/cool-down) meet WHO/ACSM targets? What is realistic to expect (e.g., aerobic minutes vs 150 min/week)? (d) sequence-based missed workouts: detraining evidence after 1-4 week breaks (e.g., Bosquet et al. 2013 meta on detraining; Ogasawara et al. 2013 periodic vs continuous training) — does resuming where you left off make physiological sense?

Suggested sources:
- MSSE, BJSM, Sports Medicine, J Strength Cond Res, Eur J Appl Physiol, J Appl Physiol, Scand J Med Sci Sports; acsm.org; who.int; health.gov; gov.uk

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Papers: peer-reviewed in reputable venues (health/sport: BJSM, Sports Medicine, MSSE, J Strength Cond Res, IJBNPA and similar; official guidelines ACSM, WHO). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints (e.g., SportRxiv) only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice. Exclude SEO blogs, vendor marketing, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items for the main table (you may add a short list of supporting studies for the spec-decision section).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (guideline, paper, meta-analysis, RCT) | what it is | why it matters for Delva (name the program, feature or spec rule) | credibility evidence (venue, design, citations with date checked) | licence/commercial-use implications (usually n/a; note if guideline text is copyrighted) | key ideas to borrow | limitations. Then sections: "Prescription numbers for untrained adults (frequency, sets, reps, rest, intensity, flexibility dose) with sources", "Bodyweight progression/regression principles", "Evidence on Delva spec decisions: 8-week minimum + 4 chapters; 3/4/5 days; 15-20 min sessions; sequence-based missed workouts (supports / challenges, with evidence strength)", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/F_program_design.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
The notes for Area F are saved at `/home/user/openGym/research_notes/Vision guided home fitness evidence/F_program_design.md` (about 8,400 words). They contain everything the brief asked for:
- a main table of 10 items with all 8 fields;
- sections on guidelines, minimum dose, bodyweight, RPE/RIR, warm-up and cool-down, deloads, HIIT and flexibility;
- the prescription-numbers table, the bodyweight progression/regression principles, the four spec decisions, user-research gaps and a full source list.

Every finding has an evidence label and the date checked, 2026-11-07.

**Limits you need to know about:**
- **No full texts.** WebFetch was blocked (api.semanticscholar.org and newswise.com did not resolve). Every number comes from abstracts, publisher, PubMed or repository records, or press releases.
- **No citation counts.** Semantic Scholar and Google Scholar could not be reached, so every item says "citation count not verified". None were estimated.
- **Search budget ran out.** The shared web-search budget was used up after about 37 queries. Items I could not verify are flagged in the file and listed under Gaps.

**Key findings:**
1. **ACSM has a new resistance-training stand.** Currier et al., MSSE 2026;58(4):851-872, DOI 10.1249/mss.0000000000003897, replaces the 2009 progression-models stand. According to the abstract, training to failure, equipment type, exercise complexity, time under tension and periodisation did not consistently change outcomes. Load and frequency affected strength but not muscle size; volume affected both. The press release reports 137 reviews and more than 30,000 participants. Its exact numbers per goal (sets, %1RM, RIR) appear only in blogs and are unverified.
2. **Guideline floor.**
   - The US 2018 guidelines (verified) set strength training on 2 or more days a week, plus 150-300 min moderate or 75-150 min vigorous aerobic activity.
   - WHO 2020 and US 2018 both dropped the 10-minute minimum bout.
   - The WHO numeric text and the UK "vigorous" wording were not visible in what I could reach.
3. **Dose.**
   - Momma 2022: muscle-strengthening is associated with the lowest risk at about 30-60 min/week (observational).
   - A single set 1-3 times a week raises strength (meta-analysis in trained men).
   - Weekly volume is the main lever. Frequency matters mostly through volume (Grgic 2018, Schoenfeld 2016/2017). Pelland 2026 (Sports Medicine) finds a frequency effect for strength only.
   - Currier 2023 (network meta-analysis): heavier loads maximise strength, but all prescriptions build muscle size similarly.
4. **Bodyweight.** Small RCTs show progressive push-ups match bench press for strength over 4-8 weeks (Kotarsky 2018, Kikuchi 2017). Progression ladders themselves are coaching practice, not tested evidence.
5. **RIR.** People misjudge reps left by about one rep and tend to underestimate (Halperin 2022). Accuracy is worse in sets above 12 reps and in novices. This supports using the camera's rep slowdown as an extra effort signal; that idea is my inference and has not been tested.
6. **Warm-up, cool-down, deloads.** Warm-ups help performance; cool-downs do little for recovery. There is no evidence that novices need deloads (Bell 2023 Delphi; Coleman 2024 RCT in trained lifters).
7. **HIIT.** Milanović 2015 found +5.5 mL/kg/min VO2max versus no exercise. The debate about whether the public will stick with it (Biddle & Batterham 2015) is the main caveat for Go Further.
8. **Stretching.** Konrad 2024 (77 studies): stretching moderately improves range of motion, static and PNF beat dynamic, and dose is not a significant moderator. Afonso 2021: strength training improves range of motion about as much as stretching.

**Delva spec decisions:**

| Decision | Verdict | Why |
|---|---|---|
| 8-week minimum, 4 chapters | Supported, but a design choice | 8 weeks matches typical trial lengths. Periodisation didn't matter in ACSM 2026, so chapters can serve motivation. The 14-active-day floor has no direct evidence. |
| 3/4/5 starting days | Supported | Above the 2-day floor. With fixed session length, more days means more weekly volume, with diminishing returns. Adherence is the open question. |
| 15-20 min sessions | Supported for strength; caveat for aerobic | 3-4 sessions give about 30-55 min/week of strength work. My arithmetic: 3-5 sessions total 60-100 min including warm-up, below 150 min moderate. Sessions count toward the target but rarely meet it alone. |
| Sequence-based missed workouts | Supported for short breaks | Bosquet 2013: losses grow with break length. Ogasawara 2011/2013: 3-week breaks didn't reduce long-term gains in untrained men. My suggestion: resume after short pauses and step back one level after longer ones. The exact cut-off is unknown. |

**Not verified this session:**
- ACSM 2009 novice numbers;
- ACSM 2026 per-goal numbers;
- the WHO numeric text;
- UK "very vigorous" wording;
- Ebben 2011 push-up load percentages;
- Thomas 2018 stretching dose;
- yoga and Pilates meta-analyses;
- HIIT affect, adherence and unsupervised safety;
- aerobic detraining (Mujika & Padilla);
- Damas 2016 swelling confound;
- Calatayud 2015 and Lasevicius 2018 primaries;
- a 2025 bodyweight meta-analysis in older adults, which I found only through ScienceAlert.

Two attributions are flagged as uncertain in the file: that PMC5712461 is Steele et al. 2017 in PeerJ, and that PMC10199130 is the commentary on the Momma overlap.
````

## What changed afterwards

V3 corrected three claims: Schoenfeld 2016 found twice a week beat once a week (the volume-equated "no frequency effect" is Schoenfeld 2019); Halperin 2022 found training status did not affect RIR accuracy, so "worse in novices" is wrong; Thomas 2018 is at least 5 minutes per week of stretching, not per muscle. It also found the ACSM 2026 per-goal numbers in the abstract and that ACSM 2026 studied bodyweight training only through the Nordic hamstring curl. See [V3_verify_FG.md](../../02-notes/verification/V3_verify_FG.md).
