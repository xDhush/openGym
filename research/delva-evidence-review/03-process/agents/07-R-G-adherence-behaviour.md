# R-G: first pass, area G (adherence, missed sessions and program structure)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:09 UTC |
| Output | [02-notes/first-pass/G_adherence_behaviour.md](../../02-notes/first-pass/G_adherence_behaviour.md) |
| Checked later by | V3 |

## Prompt sent by the coordinator (verbatim)

````text
Research adherence, dropout, missed-session handling, habit formation, behaviour change techniques, goal setting/milestones, check-ins, streaks/gamification and just-in-time adaptive interventions for app-based home exercise (Area G of a larger brief), and the behavioural evidence on several of Delva's spec decisions.

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely); each content cell = program x level (beginner/intermediate/advanced) x 3, 4 or 5 days a week; no equipment; adults 18-64; 15-20 min sessions; a program lasts at least 8 weeks, split into 4 chapters of about two weeks of work each; a chapter ends only when its assigned work is done AND at least 14 active days have passed (paused days don't count); missed workouts never become debt (the next unfinished workout stays next; the plan is a sequence, not a calendar); credit rules: an approved shorter version of a workout earns credit, removing required work without approval does not, a partial workout is saved as activity; a review/check-in at the end of each chapter suggests changes to weekly frequency which the user accepts or declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) was already analysed (it uses sequence scheduling): do not re-analyse it; mention only as a comparison.

Objective: Find the strongest evidence on when and why people drop out of app-based/home exercise, how flexible vs fixed scheduling and missed sessions should be handled, how long habits take, which behaviour change techniques (BCTs) work for physical activity, how goal setting and sub-goals/milestones and periodic reviews work, the benefits and harms of streaks/gamification, and what JITAIs offer. Then assess Delva's spec decisions: 8-week minimum and four chapters; 14 active days per chapter; 3/4/5-day starting frequencies; 15-20 minute sessions; sequence-based missed workouts; credit for approved shorter versions; end-of-chapter check-ins.

Key questions:
- Adherence/dropout curves: Meyerowitz-Katz et al. 2020 JMIR meta-analysis of attrition in app-based interventions; Eysenbach 2005 "law of attrition" (JMIR — foundational); Pratap et al. 2020 npj Digital Medicine (retention across remote digital health studies); systematic reviews of adherence to home-based exercise programs; large-scale analyses of fitness-app engagement decay (JMIR, IMWUT, npj Digit Med); when do people quit (first days/weeks/months)? Classic exercise dropout (~50% within 6 months, Dishman — foundational; verify). Industry retention benchmarks only if from primary sources and labelled as industry.
- Flexible vs fixed scheduling and missed sessions: studies on flexible/autoregulated scheduling (e.g., flexible nonlinear periodization), "emergency reserves"/slack in goals (Sharif & Shu 2017, J Marketing Research), the "fresh start effect" (Dai, Milkman & Riis 2014, Management Science — foundational), broken streak effects (e.g., Silverman & Barasch 2023, J Consumer Research), abstinence-violation / "what-the-hell" effects, and Lally et al.'s finding that missing one opportunity did not materially affect habit formation.
- Habit formation timelines: Lally et al. 2010 EJSP (median 66 days, range 18-254 — foundational); Kaushal & Rhodes 2015 J Behav Med (exercise habit in new gym members); Singh et al. 2024 systematic review (Healthcare, habit formation time); Gardner et al. reviews on habit and physical activity; exercise "instigation" vs "execution" habits (Phillips & Gardner 2016).
- BCTs: Michie et al. 2013 BCT Taxonomy v1 (Annals of Behavioral Medicine); Michie et al. 2009 Health Psychology meta-regression (self-monitoring plus another self-regulation technique); Olander et al. 2013 IJBNPA; Howlett et al. 2019 Translational Behavioral Medicine (BCTs in inactive adults); mHealth PA meta-analyses (e.g., Direito et al. 2017; Romeo et al. 2019 JMIR; Laranjo et al. 2021 BJSM on apps/trackers); the BCT Ontology (Marques et al. 2024) if relevant.
- Goal setting, sub-goals and milestones (relevant to 4 chapters): McEwan et al. 2016 Health Psychology Review meta-analysis of goal setting for PA; Epton et al. 2017 Health Psychology; proximal sub-goals (Bandura & Schunk 1981 — foundational); goal-gradient effects; review of goals/check-ins ("review behaviour goals", "feedback on behaviour"); supportive accountability (Mohr et al. 2011 JMIR).
- Streaks and gamification: benefits (e.g., Mazeas et al. 2022 JMIR meta-analysis; Patel et al. 2019 JAMA Internal Medicine STEP UP RCT) and harms (streak anxiety, guilt, compulsive use, undermining autonomous motivation per self-determination theory; e.g., Teixeira et al. 2012 IJBNPA; Ntoumanis et al. 2021 Health Psychology Review; CHI/CSCW papers on streak design and harms).
- JITAIs: Nahum-Shani et al. 2018 Annals of Behavioral Medicine; HeartSteps micro-randomised trial (Klasnja et al. 2019 Annals of Behavioral Medicine); Hardeman et al. 2019 IJBNPA systematic review of JITAIs for PA; any 2022-2026 reviews.
- Session length and frequency vs adherence: "lack of time" as top barrier (e.g., Trost et al. 2002 MSSE — foundational; later reviews); evidence that shorter sessions or lower prescribed frequency improve adherence (or not); does prescribed weekly frequency predict dropout?

Suggested sources:
- JMIR, JMIR mHealth uHealth, npj Digital Medicine, IJBNPA, Annals of Behavioral Medicine, Health Psychology, Health Psychology Review, BJSM, MSSE, Translational Behavioral Medicine, J Behav Med; CHI, CSCW, IMWUT; Management Science/J Marketing Research/J Consumer Research for behavioural-economics findings

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Papers: peer-reviewed in reputable venues (HCI/ubicomp: CHI, IMWUT/UbiComp, CSCW; health/behaviour: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA, Ann Behav Med, Health Psychology and similar reputable journals). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice (public docs of commercial apps = industry practice). Exclude SEO blogs, vendor marketing, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items for the main table (you may add a short list of supporting studies for the spec-decision section).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (paper, meta-analysis, RCT, taxonomy) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (venue, design, citations with date checked) | licence/commercial-use implications (e.g., BCTTv1 terms of use if any) | key ideas to borrow | limitations. Then sections: "When people quit (numbers and timing)", "Missed sessions and flexible scheduling", "Habit formation timelines", "BCTs, goals, sub-goals and check-ins", "Streaks and gamification: benefits and harms", "JITAIs", "Evidence on Delva spec decisions: 8-week minimum + 4 chapters; 14 active days; 3/4/5 days; 15-20 min sessions; sequence-based missed workouts; credit for approved shorter versions; chapter check-ins (supports / challenges, with evidence strength)", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/G_adherence_behaviour.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
The Area G notes are written, but under half the evidence was checked this session. 19 sources were confirmed from abstracts or records; 30 come from my prior knowledge and are flagged "not re-verified". No citation counts could be collected, so every item says "citation count not verified".

File: /home/user/openGym/research_notes/Vision guided home fitness evidence/G_adherence_behaviour.md

**Why the checking stopped short**
- WebFetch could not reach jmir.org, nature.com or api.semanticscholar.org. To get citation counts, `api.semanticscholar.org` has to be allowed in the session's network settings.
- The shared web-search limit for this turn (200 searches across all agents) ran out after about 20 of my searches.
- Every item is marked [V] (checked 2026-11-07, from abstracts or records; full texts not opened) or [NR]. For [NR] items I give only the direction of a finding where I wasn't sure of the number. Unverifiable sources have Google Scholar or PubMed search links, not guessed DOIs.

**What the file contains**
- A main table of 10 items: Pratap 2020; Meyerowitz-Katz 2020; Milkman 2021 megastudy; Beshears 2021; Silverman & Barasch 2023; Lally 2010 with Singh 2024; Kaushal & Rhodes 2015; Howlett 2019; Mazeas 2022; Klasnja 2019 (HeartSteps).
- All the sections you asked for, a section on session length and frequency, and a list of 49 sources.

**Key findings (all [V], checked 2026-11-07)**
- **When people quit:** in 8 large app-based health studies, half of participants had stopped within 5.5 days (range 2 to 26 days). Dropout across app-based chronic-disease programmes pooled at 43% (49% in real-world studies, 40% in RCTs); one preprint page says 47%, so check the final text.
- **Missed sessions:** of 54 gym interventions tested on 61,293 members, the best one rewarded coming back after a missed workout. Only 8% of the interventions still had an effect after the four weeks ended.
- **Flexibility:** paying for gym visits at any time produced more visits than paying only within a fixed two-hour window, both during and after the incentives.
- **Broken streaks:** highlighting a broken streak lowers later engagement. The drop is bigger when people blame themselves and smaller when the streak can be repaired.
- **Built-in skip days:** goals with a few allowed skips are preferred and kept better. The paper's published title says the slack comes "with a cost", not the brief's "built-in concession" wording.
- **Habit timing:** median time to habit is 59 to 66 days, with individuals ranging from 4 to 335 days. New gym members needed at least 4 sessions a week for 6 weeks.
- **Behaviour change techniques:** self-monitoring combined with goal review or feedback had an effect of 0.42, against 0.26 for other interventions. In inactive adults, action planning, instruction, prompts, practice, graded tasks and self-reward were linked with change that lasted 6 months or more.
- **Apps and gamification:** apps and trackers add about 1,850 steps a day. Gamification adds a small effect that fades to g = 0.15 at follow-up. In the STEP UP trial, only the competition arm stayed above control after the game ended.
- **Reminders (HeartSteps):** effects were small and shrank over time: +14% steps (p = .06), and +24% for walking suggestions alone.

**Delva spec verdicts**
| Spec decision | Evidence | Verdict |
|---|---|---|
| Sequence-based missed workouts | Moderate to strong | Supported |
| Credit for approved shorter versions | Moderate | Supported; cap how many are allowed |
| Chapter check-ins | Moderate | Supported; add a lighter check-in in week 1 |
| 8 weeks + 4 chapters | Weak to moderate | Chapter 1 is longer than most users stay; risk of a dip after each milestone |
| 3/4/5 days | Weak to moderate | 3 days is below the 4-a-week habit threshold |
| 15-20 min sessions | Weak | Rests mostly on "lack of time" barrier surveys |
| 14 active days per chapter | Weak | No direct evidence |

**Corrections and gaps**
- Epton 2017 was published in the *Journal of Consulting and Clinical Psychology*, not *Health Psychology* as the brief says (from my prior knowledge, not re-verified).
- Dishman's "about 50% drop out within 6 months" could not be verified; don't cite it yet.
- Lally's "missing one opportunity" line was confirmed only through secondary sources.
- Not retrieved: CHI/CSCW papers on streak harms, home-exercise adherence reviews, large fitness-app engagement studies, 2024-2026 activity-specific JITAI reviews, and the commercial-use terms for BCTTv1 and the BCT Ontology.
- A follow-up run with a fresh search budget and Semantic Scholar access could fill these gaps and the citation counts.
````

## What changed afterwards

V3 confirmed Lally's "missing one opportunity" line verbatim in the abstract, confirmed Epton 2017's venue with a corrected DOI (10.1037/ccp0000260), clarified that the "47%" was the share of observational studies rather than a dropout rate, and traced ">50% dropout within 6 months" to Rhodes & Sui 2021 citing 1980s studies (no checkable Dishman source). It also found Perri 2002: prescribing 5 to 7 days instead of 3 to 4 raised total exercise without lowering adherence. See [V3_verify_FG.md](../../02-notes/verification/V3_verify_FG.md).
