# R-HK: first pass, areas H and K (exercise libraries and comparable open-source projects)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:13 UTC (last first-pass track to finish, with R-A) |
| Output | [02-notes/first-pass/HK_exercise_libraries_open_apps.md](../../02-notes/first-pass/HK_exercise_libraries_open_apps.md) |
| Checked later by | V5 |

## Prompt sent by the coordinator (verbatim)

````text
Research (H) open exercise libraries, taxonomies/ontologies and content-curation practices, and (K) comparable popular open-source fitness apps and pose-based fitness projects (Areas H and K of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters of ~2 weeks of work; a chapter ends only when its work is done AND >=14 active days have passed (paused days don't count); missed workouts never become debt (sequence, not calendar); approved shorter versions earn credit, unapproved removal of required work doesn't, partial workouts are saved as activity; end-of-chapter check-in suggests frequency changes the user accepts/declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code; licences matter for (a) whether a library/model/dataset could be used directly in a commercial app and (b) red flags. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0, 20,026 stars, last push 2026-11-06, checked 2026-11-07; its exercise media are licensed separately from Gym visual) was already analysed in depth (sequence scheduling, multi-week programmes, progression rules, catalogue curation, AI coach): do NOT re-analyse it; use it only as a reference point for credibility and popularity when comparing.

Objective: (H) Identify credible open exercise databases and ontologies, their licences (code vs data vs media/images), and how mature projects validate, version, review and translate exercise content. (K) Identify the most popular/credible open-source workout apps and pose-based fitness projects (other than openGym) and note only what is relevant to Delva: how they structure plans, schedules, progression, bodyweight/home content, and any pose-based form/rep features.

Key questions:
- (H) Verify and assess: wger exercise database (wger-project; code AGPL-3.0; check the exercise data and image licences, e.g., CC-BY-SA, and the submission/moderation and Weblate translation workflow, versioning/UUIDs, API); free-exercise-db (yuhonas/free-exercise-db; licence; data provenance); ExerciseDB (check licence/commercial terms; likely not open); any other credible open datasets (e.g., exercises.json projects with >1k stars); ontologies/standards: Compendium of Physical Activities (Ainsworth et al. 2011 MSSE; 2024 Adult Compendium update, Herrmann et al., J Sport Health Sci) and its terms of use; Physical Activity Ontology (PACO, Kim et al. 2019); Exercise Medicine Ontology (EXMO) or Ontology of Physical Exercises (OPE) — check publication venues and whether they are maintained (OBO Foundry/BioPortal); HL7 FHIR Physical Activity Implementation Guide; platform exercise-type enumerations (Apple HealthKit HKWorkoutActivityType, Android Health Connect ExerciseSessionRecord types) labelled as industry practice. What attributes do they model (movement pattern, muscles, equipment, difficulty, contraindications, regressions/progressions, cues)?
- (H) Content governance: how do wger and others validate, review, version and translate content (contribution guidelines, moderation, translation platforms, licence for contributed images)? Any peer-reviewed work on exercise-content quality in apps (e.g., quality of exercise instructions in fitness apps; MARS app-quality scale; evaluations of fitness app content against ACSM guidelines in JMIR mHealth uHealth)?
- (K) Verify popularity/credibility and assess relevance of: wger (server + Flutter app), Liftosaur (astashov/liftosaur; Liftoscript progression language), LiftLog, workout.cool (Snouzy/workout-cool), Feeel (open-source home bodyweight workout app, hosted on GitLab: enjoyingfoss/feeel — check licence and how it structures workouts), Massive / Flexify, Ryot, OpenScale (only if relevant), and any other popular open-source workout/home-exercise apps with >=1,000 stars. For pose/biomechanics projects with substance: OpenCap (Stanford, Uhlrich et al. 2023 PLOS Computational Biology — smartphone video biomechanics; licence), Pose2Sim and Sports2D (JOSS papers; joint angles from video; licences), and any credible pose-based fitness coaching repo (>=1,000 stars or lab-backed). Exclude tutorial repos.
- For each app/project: how it structures plans, schedules (calendar vs sequence), progression, deloads, missed sessions, content model, home/bodyweight support; and anything it does that Delva should learn from or avoid.

Suggested sources:
- GitHub/GitLab repos (README, LICENSE, CONTRIBUTING, docs), project documentation sites (wger.readthedocs.io), F-Droid listings, JOSS, PLOS Comput Biol, MSSE, J Sport Health Sci, JMIR mHealth uHealth, BioPortal/OBO Foundry, hl7.org, Apple/Android developer docs

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Repos: generally >=1,000 GitHub stars OR maintained by a major company/academic lab with a peer-reviewed paper; state the reason for any exception (e.g., Feeel is on GitLab, so report its GitLab stars and why included). Active in the last 18 months (pushed since May 2025) or explicitly label "archived but influential". Must have a licence file; no licence = all rights reserved, flag it. For every repo report: stars, last commit/push date, number of contributors, organisation, licence, date checked. Check licences SEPARATELY for code, data and media/images; flag non-commercial, research-only, share-alike, copyleft (GPL/AGPL), and custom licences. Papers: peer-reviewed in reputable venues. Report citation counts with date checked and source; if you cannot retrieve a count, write "citation count not verified". Never invent a repo, paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice. Exclude SEO blogs, vendor marketing, abandoned forks, tutorial repos without substance. Quality over quantity: 5-10 best items for H and 5-10 for K (you may briefly list "also considered" items with reason for exclusion).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For GitHub repo metadata this works: gh api -X GET search/repositories -f q='repo:OWNER/NAME' --jq '.items[0] | {full_name, stargazers_count, pushed_at, archived, license: .license.spdx_id, owner: .owner.login}' (use gh only for search endpoints like this; to find popular repos you can also use gh api -X GET search/repositories -f q='workout stars:>1000' etc.). For contributor counts, WebFetch https://github.com/OWNER/NAME and read the Contributors count; if unavailable write "not verified". For GitLab projects, WebFetch the project page. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (repo, dataset, ontology, standard, app) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (with date checked) | licence and commercial-use implications (code vs data vs media) | key ideas to borrow | limitations. Use two separate tables/sections for H and K. Then sections: "Content governance practices worth copying (validation, versioning, review, translation)", "How comparable apps structure plans, schedules, progression and missed sessions (relevant to Delva only)", "Licence red flags", "Gaps / open questions", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/HK_exercise_libraries_open_apps.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
Areas H and K are done, with gaps. I verified the repos, licences and code, but could not check the Compendium, PACO, OPE, the papers on app content quality, or any citation counts. These hosts were unreachable from this session: wger.de, wger.readthedocs.io, f-droid.org, api.semanticscholar.org, bioportal.bioontology.org, build.fhir.org and pacompendium.com. The shared WebSearch budget also ran out partway through. So every citation count reads "citation count not verified", and those items appear in Gaps only as clearly marked unverified leads, with expected DOIs. GitHub contributor counts are also "not verified", because the fetched pages did not show them. Everything else was checked against primary sources (code, licence files, standard source files) on 2026-11-07.

Notes are saved at: /home/user/openGym/research_notes/Vision guided home fitness evidence/HK_exercise_libraries_open_apps.md

## H. Exercise libraries and standards
- **wger** (7,237 stars, pushed 2026-11-05) is the only mature, governed open exercise database.
  - Licences: code AGPL-3.0; exercise data Creative Commons per entry, with CC-BY-SA 4.0 as the default for new objects.
  - Governance:
    - Each exercise has a global UUID and a "variation group" UUID.
    - Edits are versioned on exercises, translations, images and videos.
    - A deletion log records which exercise replaced a removed or merged one.
    - Each asset stores its title, author, source and licence.
    - To contribute, an account must be older than about 21 days and have a verified email.
    - Syncing a self-hosted copy never overwrites local content.
    - The app is translated on Weblate; exercise text is translated inside wger.
  - Gap: wger records no difficulty, movement pattern, contraindications, cues or easier/harder variants.
- **free-exercise-db** (2,101 stars, Unlicense) checks every file against a JSON schema in CI. But it was restructured from wrkout/exercises.json, which never says where its text or images came from.
- **hasaneyldrm/exercises-dataset** (23,605 stars): the MIT licence covers only code and text. The media are © Gym visual (180×180, the same vendor as openGym), and cloning grants no licence to them.
- **ExerciseDB** (751 stars): code AGPL. Data and media sit behind separate paid terms, so it is not open data.
- **Workout Guide / Everkinetic** (1,407 stars): 302 illustrations under CC BY-SA 4.0.
- **EXMO** (Exercise Medicine Ontology) was accepted into the OBO Foundry in 2025. The registry says CC BY 4.0, but the GitHub repo has no licence file. Its paper venue is not verified.
- **HL7 FHIR Physical Activity IG** (v1.0.1, trial use) records coarse measures only, such as "strength days per week" (LOINC 82291-6). It does not code individual exercises.
- **Android Health Connect** `ExerciseSegment` is directly usable by Delva. It has 68 segment types (including PLANK, SQUAT, LUNGE, BURPEE) and a `repetitions` field. **Apple HealthKit** records only workout categories plus lap/segment events, with no exercises, sets or reps. That was read from a third-party mirror of Apple's SDK headers, not Apple's own docs.
- No open dataset models ordered easier-to-harder chains, contraindications or coaching cues, so Delva must write these itself.

## K. Open-source apps and pose projects
- **workout.cool** (8,665 stars, MIT) is the closest match to Delva's program × level × days cells.
  - A program has a level, length in weeks (default 4), sessions per week (3) and session minutes (30).
  - Programs contain weeks, then sessions, then exercises, then sets given in reps or seconds.
  - Users advance by sequence counters with no dates. The completion code does not enforce order or block completing a session twice.
  - The source and licence of its exercise data are undocumented.
- **wger routines** offer two schedules: tied to weekdays ("fit in week") or a repeating sequence ("custom cycle").
  - A progression can require the previous session to be fully completed before it applies.
  - An optional per-day "needs logs to advance" setting moves on after just one logged set, which is too lax for Delva's rule that partial workouts don't count.
- **LiftLog** (602 stars, AGPL): after a session where every set hit its target, it applies only the first progression rule that still has room. A reps rule can have a ceiling that hands over to the next rule, which suits bodyweight progressions.
- **Liftosaur** (774 stars, AGPL) uses its own progression language. A deload week is just a week with progression switched off, and failures can lower the load.
- **Feeel** (GitLab, 110 stars, AGPL) is the only real home bodyweight app. Its 7-minute workout is 30 s work, 10 s rest, 5 s countdown, with side planks at 15 s per side, plus spoken prompts. It has no levels or programs, and its exercises come from wger.
- Also covered: GymMane (1,546 stars; GPL-3.0 plus an extra attribution term; CC BY-SA art) and Ryot (3,657 stars; GPL; uses free-exercise-db).
- **No open app** has Delva's two-part chapter gate (work done and at least 14 active days), credit for approved shorter versions, or check-ins that suggest frequency changes.
- **No pose-based fitness coaching repo reaches 1,000 stars.** Good-GYM, at 440, is the largest. The credible pose projects are lab-backed:
  - **OpenCap**: Apache-2.0 code, paper in PLOS Comput Biol (DOI 10.1371/journal.pcbi.1011462). Its cloud pipeline uses OpenPose, which is licensed for non-commercial research only.
  - **OpenCap Monocular**: PolyForm Noncommercial licence, and it depends on SMPL body models, also non-commercial.
  - **Pose2Sim**: BSD-3, published in JOSS, needs two or more cameras, and claims 2–6° joint-angle error.
  - **Sports2D**: BSD-3, published in JOSS (2024), single camera. It warns that results hold only for movement in a 2D plane filmed parallel to the camera, and that depth should not be trusted.
  - **Qualcomm QEVD/Fit-Coach**: NeurIPS 2024 benchmark on when to give real-time feedback. Its licence is unclear, and the repo has been inactive since Dec 2024.

## Licence red flags
- Proprietary media inside MIT repos.
- Non-commercial models (OpenPose, SMPL) inside otherwise permissive pipelines.
- Unproven "public domain" claims with no stated sources.
- Copyleft code (AGPL/GPL) throughout: take ideas only.
- Share-alike (CC-BY-SA) data and art: commercial use is allowed, but adapted versions must carry the same licence.

To close the gaps, allow the blocked hosts or raise the search limit, then re-check the Compendium (2011 and 2024) terms, PACO, OPE, MARS (Stoyanov 2015), Modave 2015, Bondaronek 2018, EXMO's paper, the current HealthKit enum and citation counts.
````

## What changed afterwards

V5 measured every repository (stars, last commit, contributor approximations, licence files), corrected Feeel's activity (last commit 2024-12-26, so stale), found EXMO's ontology file declares CC BY 4.0 and its paper is in Scientific Data (2024), confirmed PACO (JMIR 2019), MARS, Modave 2015 and Bondaronek 2018, and confirmed HealthKit's 84 activity types from Apple's own page. See [V5_verify_repos_HK.md](../../02-notes/verification/V5_verify_repos_HK.md).
