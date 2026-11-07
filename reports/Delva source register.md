# Delva source register

One place that lists every source the Delva brainstorm can lean on, what each is good for, how much
to trust it, and what we may reuse.

- **Last updated:** 2026-11-07, research round 2 included.
- **Contents:**
  - our own documents
  - openGym
  - research round 1 (161 sources)
  - research round 2 (about 70 sources)
  - what we must not use
  - where no source exists
  - questions for counsel
  - contradictions
- **Scope:** programs, the camera and voice engine, the content library, safety and privacy.
- **Not legal or medical advice.** Items for counsel are listed in section 8.

## How to read this register

**Trust labels.** Every entry carries one, using the same scale as the research report:

| Label | Means |
|---|---|
| Our decision | A Delva document that records a choice already made (or drafted). It wins unless we change it on purpose. |
| Strong evidence | Systematic review or meta-analysis, large RCT or megastudy, official guideline, binding law, or official documentation for a fact about that product. |
| Weak evidence | Single or small study, preprint, lab study far from Delva's setting, narrative review. |
| Industry practice | What apps, vendors or coaches do, with no tested outcome. |
| Opinion | Consensus without grading, commentary, or our own inference. |
| Reference app | openGym. Proven working behaviour in a real app, but no outcome data. |

**What we may reuse.**

| Mark | Means |
|---|---|
| Ideas only | Learn from it; never copy code, text or media (copyleft or all rights reserved). |
| Facts only | Cite or paraphrase findings; do not reproduce text or figures commercially (e.g. CC BY-NC-ND papers). |
| Reusable | Licence allows commercial use with attribution (e.g. Apache-2.0, CC BY 4.0). |
| Do not use | Licence forbids Delva's use, including training or benchmarking. See section 6. |

**Brainstorm topics.**

| Code | Topic |
|---|---|
| T1 | User groups, onboarding and the recommendation |
| T2 | What "done" means: credit, shorter and partial workouts, camera counts |
| T3 | Sequence rules: next workout, misses, pauses, moves, chapter boundaries, comebacks |
| T4 | Chapter 1 and the first week (early dropout, milestones) |
| T5 | What each 3/4/5-day plan contains: session make-up, progressions, aerobic, mobility |
| T6 | Check-ins, screening, pain, health-data consent |
| T7 | Exercise library: structure, governance, translation |
| TB | Track B, camera and voice: pose, counting, cues, audio, validation |
| X | Cross-cutting: privacy, licences, claims |

---

## 1. Our own sources

These record decisions and internal data. They come first because the brainstorm is about
changing or confirming them.

### Decisions and drafts we have read

| Source | Date and status | What it holds | Topics | Link |
|---|---|---|---|---|
| Program content and journey (spec) | 29 Oct 2026, "Final content decisions" | The 24 content areas: five programs, eight-week minimum, four chapters, sequence plan, credit contract, reviews, completion | T1-T6 | PDF shared in the chat; keep the team's master copy |
| Delva program workouts (mockup) | Content review draft, version `consistent-progressions-seasons-v3` | 45 plans (5 programs × 3 levels × 3/4/5 days), 120 workouts, 22 exercises with dose per level, 13 mobility moves. Every plan has 3 main sessions; 4 and 5 days add 8-9 minute light sessions | T5, T7 | HTML shared in the chat |
| Programs Framework v0 | 5-6 Nov 2026, working draft | How a program gets made: Set up → Create (AI + human) → Review (AI, three passes) → SME check → Deploy. Rulebooks per level, including "Gender-specific". Users placed in groups by age, gender, level, goal and days. Programs "usually 8 to 14 weeks" | T1, T5, T7 | https://claude.ai/artifact/Xytj18hYohVVvTcXkSTMXL |
| Coaching Rulebook 1-draft.4 | 30 Oct 2026, not approved | 9 rules for grading spoken corrections, for example C2: start within 900 ms; C3: due at the Nth fault, 3,000 ms gap; C8: two silent half-reps fail | TB | https://claude.ai/artifact/8e11EyFoiMTMTycLccpTWA |
| Coaching Rulebook counting-1-draft.1 | 30 Oct 2026, not approved | 6 rules for counting cues: one progress checkpoint per set, sparse numbered counts (playful coach only), none on the last rep, cue priorities, deadlines 1,200-3,600 ms | TB, T2 | https://claude.ai/artifact/Jt2JRhDGLzHgrjLW2Vfh4L |
| Voice Feedback Walkthrough | 27 Oct 2026, proposed | Spoken questions to the athlete on rest and summary screens; mic and music handling; bystander-voice privacy note | TB, T6 | https://claude.ai/artifact/DzHTZmzkhAPEDaFFaMBYy1 |
| Pose Landmarks vs Lighting | 4 Nov 2026, R&D | MediaPipe's 33 points under dimming. Head, shoulders and hips hold; limbs fade on the floor below about -1 stop. One phone, one tester | TB | https://claude.ai/artifact/K4Lw5qjzvBQSFAhBRoqH42 |
| Detection Blind Spots | 22 Sep 2026, planning note | The test harness (567 clips, 71 suites) compares rep totals only. A field capture credited 48 of 96 glute bridges. 9 of 14 reports say "no feedback when I expected some" | TB, T2 | https://claude.ai/artifact/XHKmMfbBzAcFwH5aFHMj9e |
| Recommender in Brief | 2 Sep 2026, proposal | Claude composes each session from a code-filtered menu. Priority order Safety > Recovery > Time > Rotation > Goal > Progression > Novelty. Open: what "completed" means | T1, T2 | https://claude.ai/artifact/QYbw5Nmc9186zokKXXkbJJ |
| How to evaluate a workout (labelling pipeline) | 4 Nov 2026 | Empty document | TB | https://claude.ai/artifact/DHSy81C3yzRTXoSZYE5MoY |

### Probably relevant, not yet reviewed

Found in the artifact list; worth a look before the matching topic.

| Source | Date | Likely topics | Link |
|---|---|---|---|
| Workout Content Recommender (the concept the Brief answers) | 2 Sep 2026 | T1 | https://claude.ai/artifact/UVWTw6axc3nrSKJgPAf7i1 |
| Workout Content Delivery Spec | 18 Sep 2026 | T5, T7 | https://claude.ai/artifact/NUg7X8yMo4Av9sWqPujE7J |
| Twelve-Exercise Catalog | 31 Aug 2026 | T7 | https://claude.ai/artifact/N7qnRGvP5STyosHqrZijjz |
| Three-Lane Library | 29 Aug 2026 | T7 | https://claude.ai/artifact/ETs2Kw6jxq99RNZfP2izC6 |
| HIIT Library Runbook | 21 Sep 2026 | T5, T7 | https://claude.ai/artifact/CSvYZgro3wmP2bCKqdEFty |
| Feedback Engine Blueprint | 1 Sep 2026 | TB | https://claude.ai/artifact/TNvkbCSukhrmhf5wL6Suwx |
| Alpha Feedback Engine | 1 Sep 2026 | TB | https://claude.ai/artifact/1q1a6kxYoX6nNyh2UFNdr6 |
| Feedback Pool Contract | 2 Sep 2026 | TB | https://claude.ai/artifact/53WHC8bq57ed9Aay3PnFiD |
| Eval manifest: attempts and fault changes | 27 Oct 2026 | TB, T2 | https://claude.ai/artifact/StAxzDDhhh1TnhMjS1RTGU |
| Rep Evals Phase 1 | 23 Oct 2026 | TB | https://claude.ai/artifact/YK7M4DhVbaQAtnvMh8xugu |
| v4 metadata: points to agree before backend | 30 Oct 2026 | TB, T2 | https://claude.ai/artifact/9y5ARxuAhLsL4ifc5rAVAH |
| Workout Label Review | 28 Oct 2026 | TB | https://claude.ai/artifact/65vC9CAkmBmMmYtYjV885C |
| Flagging scope: Crews and Streaks | 13 Oct 2026 | T4 | https://claude.ai/artifact/GihrDfR476wZTgtGQhAack |
| Hero Workout and Library | 12 Oct 2026 | T5, T7 | https://claude.ai/artifact/7vaiNewrzspa8hQRsFWxWd |

### Internal data the brainstorm can ask for

- The engine test harness: 567 recorded clips in 71 suites, compared against one person's declared
  rep totals.
- In-app feedback reports: 14 production reports read in Detection Blind Spots.
- What signup already collects: goals, fitness level, date of birth, gender, structured injuries.
  Nothing reads them yet, per Recommender in Brief.
- Any usage or retention data from current builds. This is not seen yet, and it is the only source
  for Delva's own drop-off curve.

---

## 2. openGym: the reference app

- **Repository:** github.com/DuarteSantos8/openGym. This repo is a fork of it.
- **Licence:** AGPL-3.0.
- **Popularity:** 20,026 stars on 2026-11-07, created 2026-07-18, so young for its stars.
- **Trust:** reference app, ideas only.
- **Reuse limits:**
  - Exercise media are licensed from Gym visual "for use in openGym only": do not use.
  - Exercise text came via ExerciseDB v1 by AscendAPI through a MIT-licensed dataset, and whether
    AscendAPI released it under MIT is unverified: do not copy.
- **Full mapping:** [openGym inventory for Delva](openGym%20inventory%20for%20Delva.md) maps all 24
  spec items.

| What to look at | Where | What it teaches | Topics |
|---|---|---|---|
| Sequence ("queue") and its done rule | `frontend/src/lib/queue.js`, `api/queue.js` | First unfinished workout is next on any day; one credit per planned workout from the earliest qualifying session; tolerant of deleted items | T2, T3 |
| Loops with rest entries and the one-day boundary | `frontend/src/lib/rotation.js` | How a completed pass hands over to the next without double credit | T3 |
| Multi-week programmes, pause and resume | `frontend/src/lib/programmes.js` | Pause stored as a date that shifts the start; old plan saved and restored. Its calendar-week clock is what Delva rejects | T3 |
| One-off moves | `frontend/src/lib/history.js` (`effectiveRoutineIds`, `S.dayPlan`) | Per-date override separate from the weekly plan; moves expire | T3 |
| Missed-day nudge and back-off | `frontend/src/lib/nudge.js`, `api/nudge.js` | Day after a workout is rest, not a miss; quiet after 3 misses; nothing stored | T3, T4 |
| Excused days | `frontend/src/lib/day-notes.js` | Sick, travelling, rest, injured; only past days | T3, T4 |
| Weekly streak with freezes | `frontend/src/lib/streak.js` | Weekly unit, a freeze earned every 4 weeks, at most 2; worked out from the log | T4 |
| Weekly countdown | `frontend/src/lib/week-left.js` | "2 of 4 left this week" | T3, T4 |
| Saved workout record | `frontend/src/lib/finish-workout.js` | Keeps `planned` next to performed sets. Drops exercises with nothing ticked, which Delva must not do | T2 |
| Today-only changes | `frontend/src/lib/coach-adapt.js` | Mid-session changes never touch logged sets or the routine | T2 |
| Progression rules | `frontend/src/lib/progression.js` | Next numbers from performance, never the date; double progression; time rule for holds; deload after repeated misses | T5 |
| Starter plans and equipment fitting | `frontend/src/lib/starter.js` | Plans written per day count; "closest suitable stand-in" rule | T5, T7 |
| Review timing and one pending proposal | `api/coach/cadence.js`, `api/coach/core/due.js` | Skip silently when nothing is new; never stack reviews | T6 |
| Closed list of allowed changes, out-of-date check | `api/coach/core/validate.js`, plan hash | Suggestions limited to known change types; stale ones greyed out | T6 |
| Comparing with others | `api/coach/cohort.js` | Opt-in by admin and user, at least 3 people, medians only | T1 |
| Sex and age used only for grading | `frontend/src/lib/strength-level.js` | Demographics interpret results; they never choose a plan | T1 |
| Spoken cues | `frontend/src/lib/spoken-cues.js`, `speech.js`, `sound.js` | Short scripted phrases, app language, music lowered briefly and never paused, off by default | TB |
| Hands-free holds | `frontend/src/lib/auto-holds.js` | Count-in, hold, tick, rest chain on clock time; a locked phone catches up | TB, T2 |
| Form videos kept with the set | `frontend/src/lib/set-videos.js` | "Keep videos on this phone only" option | TB, X |
| Catalogue pipeline | `catalogue/`, `scripts/catalogue/validate.mjs`, `build.mjs`, `check-media.mjs`, `frontend/src/lib/catalogue-continuity.test.js` | Schema and allowed words checked in CI; stable ids enforced; media size rule | T7 |
| Reviewed stand-in families | `frontend/src/lib/exercise-substitutes.js` | Substitutes from reviewed lists, not name matching | T7 |
| Feature switches | `frontend/src/lib/modules.js`, `docs/MODULES.md` | Whole areas on or off without deleting data | X |
| AI coach design | `docs/AI_COACH.md` | Intake questions, consent screen generated from the payload builder, approval before change | T1, T6 |
| Design notes | `docs/dev/` (combine routines, fatigue model, list view, set types) | Rationale behind session features | T5 |
| Upstream issue tracker | github.com/DuarteSantos8/openGym/issues (e.g. #536 rest days in loops, #753 workouts left, #159 and #679 programmes, #261 day notes) | Real users asking for scheduling behaviour. **Not yet read**: outside this session's GitHub access; it can be added if wanted | T3, T4 |

---

## 3. Research round 1: open-source and evidence review

- **Files:**
  - Report: [Vision guided home fitness evidence](Vision%20guided%20home%20fitness%20evidence.md)
    (161-source bibliography, all accessed 2026-11-07).
  - Notes: `research_notes/Vision guided home fitness evidence/` (areas A to K plus five
    verification passes).
- **Coverage:** open-source projects and published evidence only. No commercial app was reviewed.
- **Citation counts:** from Crossref (CR) and Semantic Scholar (S2), because Google Scholar was
  unreachable.

The tables below pick the sources that drive decisions in each topic. Everything else is in the
report's bibliography, under the area letter shown.

### T1. User groups, onboarding, recommendation (report area E)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| Roberts, Nuckols, Krieger 2020, JSCR ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32218059/)) | Same program, men vs women: similar hypertrophy; upper-body relative strength favoured women | Strong | Facts |
| Refalo et al. 2025, PeerJ ([PubMed](https://pubmed.ncbi.nlm.nih.gov/40028215/)) | Absolute growth slightly favoured men; relative gains similar | Strong | Reusable (CC BY 4.0) |
| Jones et al. 2021, Sports Med ([PubMed](https://pubmed.ncbi.nlm.nih.gov/33332016/)) | Over-50s: women gained more relative lower-body strength | Strong | Facts |
| WHO 2020 guidelines, Bull et al. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7719906/)) | One recommendation for all adults 18-64 | Strong | Reusable (CC BY 4.0) |
| Ross et al. 2019, BJSM ([PubMed](https://pubmed.ncbi.nlm.nih.gov/30862704/)) | Individual response to the same dose varies widely | Strong (consensus) | Facts |
| Noar 2007 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17592961/)); Lustria 2013 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/23750972/)) | Tailoring helps a little (r = .074; d = .139) | Strong | Facts |
| De Croon 2021; Brons 2024; Gabarron 2024 (JMIR) | Health recommenders are mostly tested as algorithms; very low certainty they raise activity | Strong (reviews) | Facts |
| Obermeyer et al. 2019, Science ([PubMed](https://pubmed.ncbi.nlm.nih.gov/31649194/)) | Proxy labels create group bias | Strong (mechanism) | Facts |
| Wilcox et al. CHI 2023; Albert and Delano FAccT 2021 | Binary, content-changing gender fields exclude people | Weak | Facts |
| McNulty 2020; Colenso-Semple 2023 | Menstrual-phase effects trivial or unproven | Strong | Facts |
| Galesic and Bosnjak 2009 | Longer questionnaires lose more starters | Weak | Facts |
| GDPR Art. 22; AI Act Recital 16 (EUR-Lex) | Limits on solely automated decisions; inferring sex or age from the camera is risky | Strong (law) | n/a |

### T2. What "done" means (report areas C, G, K)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| Oliosi et al. 2026, JMIR mHealth ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC12978916/)) | Phone counting: about 61% detection, error about 1 rep on 5-rep sets; placement matters (MoveNet, students) | Weak to moderate | Facts |
| ML Kit `RepetitionCounter` and MediaPipe pose-classification guide ([guide](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose_classification.md)) | Two key poses with enter/exit thresholds; pause, don't reset, when the pose is lost | Industry practice | Reusable (Apache-2.0) |
| Garmin and Peloton public docs | Show counts once confident; edit reps after a set; credit holds by time | Industry practice | n/a |
| Sharif and Shu 2017, JMR | Slack with a cost ("emergency reserve") raises persistence | Strong (multi-study) | Facts |
| Androulakis-Korakakis 2020 ([DOI](https://doi.org/10.1007/s40279-019-01236-0)) | One hard set 1-3 times a week raised strength in trained men | Weak to moderate | Facts |
| workout.cool ([repo](https://github.com/Snouzy/workout-cool)) | Program > week > session hierarchy; progress by counters | Industry practice | Reusable (MIT code; data undocumented) |
| wger routines docs ([doc](https://raw.githubusercontent.com/wger-project/docs/master/docs/manual/routines.rst)) | "Needs logs to advance" counts one logged set; too lax for Delva | Industry practice | Ideas only |
| Dixon, Wickens, McCarley 2007, Human Factors ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17702209/)) | False alarms hurt trust more than misses; form cues must not gate credit | Strong (mechanism) | Facts |

### T3. Sequence rules (report areas G, F, K)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| Beshears et al. 2021, Management Science ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8734590/)) | Rewarding visits at any time beat fixed time slots | Strong | Facts |
| Milkman et al. 2021, Nature ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8822539/)) | Best of 54 interventions rewarded returning after a miss (+27%, "probably inflated") | Strong | Facts |
| Lally et al. 2010 ([record](https://api.crossref.org/works/10.1002/ejsp.674)) | Missing one opportunity did not materially affect habit formation | Weak | Facts |
| Bosquet et al. 2013 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/23347054/)); Ogasawara 2011 and 2013 | Detraining grows with break length; 3-week breaks did not reduce final gains in young men | Strong; weak | Facts |
| McNamara and Stearne 2010 | Beginners who chose the day's workout gained as much or more | Weak | Facts |
| Kaushal and Rhodes 2015 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/25851609/)) | Consistency and a stable place predict habit | Weak | Facts |
| GymMane, LiftLog, Liftosaur, Feeel (area K) | All open apps run by sequence; none has partial credit or chapter check-ins | Industry practice | Ideas only (copyleft) |

### T4. Chapter 1 and the first week (report area G)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| Pratap et al. 2020, npj Digit Med ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32128451/)) | Median retention 5.5 days across 8 remote app studies (>100,000 people) | Strong | Reusable (CC BY 4.0) |
| Meyerowitz-Katz et al. 2020, JMIR ([PubMed](https://pubmed.ncbi.nlm.nih.gov/32990635/)) | Pooled dropout 43% | Strong | Reusable (CC BY) |
| Singh et al. 2024 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/39685110/)) | Habit medians 59-66 days, range 4-335 | Strong | Reusable (CC BY 4.0) |
| Silverman and Barasch 2023, JCR | Highlighting a broken streak lowers engagement; repair softens it | Strong (mechanism) | Facts |
| Howlett et al. 2019 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/29506209/)) | Action planning, prompts and graded tasks linked with maintenance | Strong | Facts |
| Michie et al. 2009 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/19916637/)) | Self-monitoring plus goal review is effective | Strong | Facts |
| Mazeas et al. 2022 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/34982715/)) | Gamification g = 0.42 overall, 0.15 at follow-up | Strong | Facts |
| Klasnja et al. 2019 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/30192907/)) | Prompt effects fade over weeks | Weak | Facts |

### T5. What each plan contains (report area F)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| ACSM Position Stand 2026, Currier et al. ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC12965823/)) | Progressive training with variable prescription works; at least 2 strength sessions a week; bodyweight not studied alone except the Nordic curl | Strong | Facts (CC BY-NC-ND) |
| WHO 2020; US PAG 2018 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/30418471/)) | 150-300 min moderate aerobic plus 2+ strength days; any bout counts; no dose-response for more strength volume | Strong | WHO reusable; PAG facts |
| Currier et al. 2023, BJSM ([PubMed](https://pubmed.ncbi.nlm.nih.gov/37414459/)) | Heavier loads maximise strength; all prescriptions give comparable growth | Strong | Facts (CC BY-NC) |
| Pelland et al. 2026 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/41343037/)); Schoenfeld 2019 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/30558493/)); Grgic 2018 | Volume drives growth; frequency matters for strength, with diminishing returns | Strong | Facts |
| Momma et al. 2022 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/35228201/)) | Lowest risk at about 30-60 min/week of strength work | Strong (observational) | Reusable (CC BY 4.0) |
| Kotarsky 2018; Kikuchi and Nakazato 2017 | Push-up ladders build strength like bench pressing (small, young men) | Weak | Facts |
| Halperin et al. 2022 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/34542869/)) | People under-predict reps to failure by about 1; worse above 12 reps | Strong | Facts |
| Konrad 2024; Thomas 2018 | Stretching raises range of motion; they conflict on dose | Strong | Facts |
| Milanović 2015 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/26243014/)); Perri 2002 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/12211512/)) | HIIT raises VO2max; higher prescribed intensity lowers adherence | Strong; weak | Facts |
| Fradkin 2010; Van Hooren and Peake 2018 | Warm-ups help; active cool-downs do little for recovery | Strong | Facts |
| LiftLog plan format ([doc](https://raw.githubusercontent.com/LiamMorrow/LiftLog/main/docs/PlanFileFormat.md)) | "One rule after full success": reps to a ceiling, then the next rule | Industry practice | Ideas only (AGPL) |

### T6. Check-ins, screening, health data (report areas I, J)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| Riebe et al. 2015, ACSM screening ([PubMed](https://pubmed.ncbi.nlm.nih.gov/26473759/)); Whitfield 2017 ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7059860/)) | Screen on activity, symptoms or known disease, and intended intensity; strict screens refer many people | Strong (consensus); weak | Facts |
| PAR-Q+ and CSEP questionnaires | Off-the-shelf screens; licences for apps **unverified** | Industry practice | Do not use until licensed |
| Niemeijer et al. 2020, BJSM ([PubMed](https://pubmed.ncbi.nlm.nih.gov/31563884/)) | Serious harm rare; minor problems common (number needed to harm 6) | Strong | Facts (BMJ no commercial re-use) |
| Silbernagel et al. 2007 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/17307888/)) | Pain-monitoring model: continued activity did no harm | Weak | Facts |
| Mottola et al. 2018, pregnancy guideline ([PubMed](https://pubmed.ncbi.nlm.nih.gov/30337460/)) | Benefits moderate, no harms; contraindication lists exist | Strong | Facts only; do not copy tables |
| FDA General Wellness (2026) and Device Software Functions (2022) ([PDF](https://www.fda.gov/media/90652/download)) | Tracking and "exercise or posture suggestions" are not devices; condition claims are | Strong (regulator text) | n/a |
| GDPR Arts. 4(14), 9, 22, 25, 35; CJEU C-21/23 and C-184/20 (EUR-Lex) | Check-in and screening answers are health data; inferred data counts | Strong (law) | n/a |
| Apple App Store Review Guidelines; Google Play health policies | Camera consent and indicator; no health data in iCloud; Health apps declaration | Strong (official policy) | n/a |

### T7. Exercise library (report area H)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| wger exercise database ([repo](https://github.com/wger-project/wger)) | Global ids, variation groups, edit history, deletion log with replacement, licence per asset | Industry practice | Ideas only (AGPL); data CC-BY-SA per entry |
| free-exercise-db ([repo](https://github.com/yuhonas/free-exercise-db)) | JSON schema checked in CI; level, force, mechanic fields | Industry practice | Provenance unproven |
| EXMO ontology, Scientific Data 2024 ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC11655637/)) | Exercise-prescription vocabulary; no structured contraindications or ladders | Strong (peer-reviewed) | Reusable (ontology CC BY 4.0) |
| Android Health Connect `ExerciseSegment`; Apple HealthKit types | Export targets: 68 segment types with reps; HealthKit has no sets or reps | Strong (official docs) | Reusable (platform) |
| 2024 Adult Compendium ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC10818145/)) | MET values per activity | Strong | Terms of use unverified |
| MARS, Stoyanov 2015 ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4376132/)); Modave 2015; Bondaronek 2018 | App quality rating; most fitness apps fall short of guidelines | Strong | Facts |
| EC3D, Fitness-AQA (area B) | Per-exercise error taxonomies (squat, lunge, plank) | Weak | Ideas only; data Do not use |

### TB. Camera and voice (report areas A to D)

| Source | What it says | Trust | Reuse |
|---|---|---|---|
| BlazePose GHUM 3D model card ([PDF](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)); Pose Landmarker guide | 33 landmarks with heels; out of scope beyond 4 m or head not visible; fairness numbers by skin tone and gender | Strong (official) | Reusable (Apache-2.0) |
| Washabaugh 2022; Stenum 2021; Scataglini 2024 | Side-view hip and knee angles within about 2-8° in gait studies | Strong to moderate | Facts |
| Haberkamp 2022; Heliyon 2024 | Front-view knee valgus unreliable (r = 0.20) | Weak to moderate | Facts |
| Yue, Gu, Yu 2026, JMIR Rehabil ([PubMed](https://pubmed.ncbi.nlm.nih.gov/42976294/)) | Confidence gate lifts knee-angle ICC from 0.428 to 0.773; static bias and drift | Weak | Facts |
| Biebl et al. 2021, Kaia ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8317029/)) | App-vs-expert agreement next to expert-vs-expert: the validation template | Weak (n = 24, industry) | Facts |
| PoseRAC; TransRAC and RepCount (CVPR 2022) | Two key poses beat heavy video models; label each rep's start and end | Weak to moderate | Ideas only |
| Weakley et al. 2023, Sports Med ([PubMed](https://pubmed.ncbi.nlm.nih.gov/37410360/)) | Feedback after every rep raises effort (trained lifters) | Strong | Facts |
| McKay et al. 2022 and 2024; St. Germain 2023 | "Less feedback", self-controlled and external-focus benefits shrink to near zero after bias correction | Strong | Facts |
| Sherwood 1988; Lee and Carnahan 1990 | Speak only when the error is outside a tolerance band | Weak (foundational) | Facts |
| van Vugt and Tillmann 2014 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/24498299/)) | Sound delay noticed at about 180 ± 104 ms (non-musicians) | Weak to moderate | Facts |
| Alarm-fatigue reviews: Michels 2025; Chromik 2022 | Non-actionable alerts cause desensitisation | Moderate (by analogy) | Facts |
| Eyes-Free Yoga (ASSETS 2013, TACCESS 2017) | Audio-only corrections with a camera; accessibility precedent | Weak | Facts |
| WCAG 2.1 SC 1.4.2 Audio Control | Way to pause or set volume for audio over 3 s | Strong (standard) | n/a |
| OpenCap, Sports2D, Pose2Sim (area K) | Validation references, not product parts; licence traps inside | Strong (code) | Mixed; see section 6 |

### Cross-cutting privacy (report area J)

- **Verified at source:**
  - GDPR.
  - CJEU C-21/23 and C-184/20.
  - EU AI Act and Digital Omnibus 2026/1744.
  - Apple and Google store rules.
- **Unverified; counsel must pull the texts:**
  - Illinois BIPA.
  - Washington My Health My Data Act.
  - FTC Health Breach Notification Rule.
  - Texas CUBI, Colorado, CCPA.
  - EDPB 3/2019 and ICO guidance.

---

## 4. Research round 2: sources added on 2026-11-07

Round 1 had four gaps, and this round searched each of them:

- commercial apps
- coaching-practice progressions
- app-based adherence and quality frameworks
- validation methods with platform rules

**Verification:** "Yes" means the page or full text was opened. "Partly" means only an abstract or
a search-engine extract of the official page was seen. Many hosts were unreachable from this
session:

- every vendor help centre
- gov.uk
- Reddit
- the certifying bodies
- some publishers

So most commercial and practitioner entries are "partly". Numbers marked "secondary" were seen only
in summaries.

**Citation counts:** Crossref (CR) or OpenAlex (OA), retrieved 2026-11-07.

### 4a. Commercial apps: how they run programs and camera coaching (industry practice)

None of these vendors publishes how it measured its camera accuracy. Treat every claim as a vendor
claim.

| Source | What it shows | Topics | Verified |
|---|---|---|---|
| Freeletics Help Centre: [Bodyweight Training Journeys](https://help.freeletics.com/hc/en-us/articles/360008600540-Bodyweight-Training-Journeys), [journey preferences](https://help.freeletics.com/hc/en-us/articles/115005747425-Adjust-your-Bodyweight-Journey-preferences), [reset coach](https://help.freeletics.com/hc/en-us/articles/360011919479-Can-I-reset-my-Training-Coach), [Perfect weeks](https://help.freeletics.com/hc/en-us/articles/10286298927122-Perfect-weeks-and-Perfect-week-streaks-explained) | Journeys are counted in sessions, not weeks: Start Strong is 18 sessions over a 6-week plan; most journeys are 48 sessions. Users set 2 to 5 days a week, and the change applies at once. A missed session moves to the next day (staff forum posts say the next coach day). After more than a month away, the user is offered an easier session. Sessions logged outside the journey don't count | T1-T5 | Partly |
| Freeletics [Adapt session](https://help.freeletics.com/hc/en-us/articles/360003933780-Adapt-your-Bodyweight-training-session) and [feedback blog](https://www.freeletics.com/en/blog/posts/what-is-the-purpose-of-the-feedback-i-am-asked-to-give-after-each-workout/) | One-day changes from a fixed menu: 15/30/45/60-minute caps, no-space, quiet, swap, easier or harder. Users rate each exercise after the session, and one variable changes at a time. "90% accuracy after week one" is a vendor claim with no method | T2, T5, T6 | Partly |
| Peloton [Programs support](https://support.onepeloton.com/hc/en-us/articles/360059412711-Programs) | Fixed blocks (for example 5 weeks × 3 classes). A skipped class taken later doesn't count. After a missed week you pick up "where you left off, regardless of how much time has passed". You can mark a program done early | T2, T3 | Partly |
| Peloton weekly plans and Peloton IQ ([blog](https://www.onepeloton.com/blog/personalized-workout-plan), [press release](https://investor.onepeloton.com/news-releases/news-release-details/peloton-enters-new-era-ai-powered-peloton-iq-and-new-product), [engineering blog](https://careers.onepeloton.com/en/blog/product-and-tech/from-personalized-insights-to-actions-powering-peloton-iq-for-cross-training/)) | A weekly plan arrives every Monday, and an approved swap counts toward the goal. The AI plan is built from goal, frequency, length and experience. An LLM proposes changes, the user taps "Update Plan", and an LLM judge checks the suggestions. "90% positive rating" is self-reported | T1-T3, T6 | Partly |
| Peloton IQ camera and Peloton Guide ([IQ page](https://www.onepeloton.com/peloton-iq), [Guide FAQ](https://support.onepeloton.com/hc/en-us/articles/4409958503444)) | Optional camera with a shutter, on 3 devices only. "Not recorded or stored". Form cues can be set for frequency and volume, or turned off. The older Guide gave "credit for keeping up" and did not count reps | TB, T2 | Partly |
| Sweat ([Workout Series](https://support.sweat.com/hc/en-us/articles/5648990022287-How-to-use-Workout-Series), [repeat a week](https://sweat.com/blogs/community/repeat-week-sweat-workout-program)) | Main programs roll over every Sunday "regardless" of what was done. Workout Series do not ("no missed workouts"). Both models sit in one app | T3 | Partly |
| Tonal ([routine planning](https://tonal.com/blogs/all/routine-planning), [Smart View](https://tonal.com/blogs/all/tonal-smart-view), [health-data policy](https://tonal.com/pages/consumer-health-data)) | 2 to 5 days a week. A missed workout shifts all later ones. The Smart View camera records clips by design (opt-in, deletable) | T3, TB, T6 | Partly |
| Apple Fitness+ [Custom Plans](https://support.apple.com/guide/fitness-plus/use-custom-plans-apdf222051d8/ios) | Users pick days, minutes per day, plan length and activity types, and can go back to finish earlier days "at any time during your plan". "Refreshed Repeat" re-runs a plan | T2, T3, T5 | Partly |
| Apple [Newsroom, Jan 2026](https://www.apple.com/newsroom/2026/01/stay-active-in-the-new-year-with-apple-watch/): "Make Your Fitness Comeback", "Strength Basics in 3 Weeks" | A dedicated 4-week comeback program: 3 × 10 minutes a week. Starter programs are 3 to 4 weeks | T3, T4, T5 | Partly |
| Tempo [3D Vision support](https://support.tempo.fit/support/solutions/articles/151000154714-3d-tempo-vision-form-feedback) | Counting and form feedback only inside its own classes; "not all the exercises ready". Users "do not have the ability to undo rep counts" | TB, T2 | Partly |
| Zing Coach [privacy policy](https://www.zing.coach/privacy-policy) | Skeleton "dots" are made on the device, then stored on servers to check fit and improve the service. It says the dots "may be considered biometric data" | TB, X | Partly |
| Kemtai ([FAQ](https://kemtai.com/faqs/), [privacy](https://kemtai.com/privacy-policy/)) | Marketing says "no video recorded" and claims a Vicon comparison (paper not found). The privacy policy uploads joint locations, and video may be kept with consent | TB, X | Partly |
| QuickPose ([iOS SDK](https://quickpose.ai/products/ios-sdk/), [release note Sep 2026](https://quickpose.ai/2026/09/five-releases-in-five-weeks-whats-new-in-the-quickpose-ios-sdk/)); Sency ([FAQ](https://www.sency.ai/faq-motion-tracking)) | On-device SDKs. QuickPose admitted front-facing push-ups counted zero because its check assumed a side view (fixed in v1.5.0). Accuracy claims carry no method | TB | Partly |
| Fitbod ([how workouts are made](https://help.fitbod.me/hc/en-us/articles/360004429814-How-Fitbod-Creates-Your-Workout), [recovery](https://help.fitbod.me/hc/en-us/articles/360006269014-Muscle-Recovery)) | No fixed program: each workout is generated from history, recovery per muscle and equipment. "Recommend less" and "Never again" per exercise | T1, T3, T7 | Partly |
| Fanton et al. 2022, Amazon Halo Movement, npj Digit Med ([PMC9445016](https://pmc.ncbi.nlm.nih.gov/articles/PMC9445016/)) | The only peer-reviewed product validation of a phone front camera besides Kaia. The overall score agreed with 13 reference tests and Xsens sensors (r about 0.29-0.63, modest). Probably vendor-funded | TB, T6 | Partly |
| El-Rajab et al. 2025 ([PMC12098270](https://pmc.ncbi.nlm.nih.gov/articles/PMC12098270/)) | Systematic review of camera screening apps: validation "limited and heterogeneous" | TB | Partly |
| Hertel et al. 2022, Freeletics injury survey ([PMC9321304](https://pmc.ncbi.nlm.nih.gov/articles/PMC9321304/)) | 3,668 users, 4.57 injuries per 1,000 training hours, fewer in experienced users; self-report. The closest injury rate to home bodyweight training found | T6 | Partly |
| Centr, Future, Ladder, Nike Training Club (official pages) | Centr: "3 essential + 1 optional" a week. Future: a human coach replans missed weeks. Ladder: users "sub out" days. NTC: "4-6 week" plans | T3, T5 | Partly |

### 4b. Program design and easier-to-harder ladders

| Source | What it says | Trust | Reuse | Topics | Verified |
|---|---|---|---|---|---|
| Ebben et al. 2011, JSCR ([PubMed](https://pubmed.ncbi.nlm.nih.gov/21873902/)); Suprak 2011; San Juan 2015 ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4327800/)); Dhahbi 2022 review (26 studies, 46 variants) | Push-up load ladder, easiest to hardest: hands on a 61 cm box, knees, hands on a 30 cm box, regular, feet on a 30 cm box, feet on a 61 cm box. Regular about 64% and knee about 49% of body mass; no sex differences | Weak, but consistent across 3 labs plus a review | Facts (San Juan CC BY 4.0) | T7, T5 | Partly (some percentages secondary) |
| Kowalski et al. 2022, scoping review ([PMC9121296](https://pmc.ncbi.nlm.nih.gov/articles/PMC9121296/)) | Pooled shoulder activity: incline 15.8% of maximum, push-up plus 30.1%, standard 38.2%, unstable 49.6%. Keep unstable variants for last | Weak (EMG as a proxy) | Facts (CC BY-NC) | T7 | Yes |
| Calatayud 2017; Moreno-Navarro 2024; Ekstrom 2007 (JOSPT, CR 454); Fonza 2026 | Plank variants can be ordered; raising the feet raises abdominal load. Lunges and lateral step-ups reach strength-level thigh activity; bridges and planks stay below 45% (endurance and stability) | Weak | Facts | T7 | Yes (abstracts) |
| Helme 2022, JSCR; Muyor 2020, PLoS One ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7112217/)) | The front leg carries 84.4% of force in a rear-foot-elevated split squat. The one-leg squat beats lunge and step-up for muscle activity. Supports squat, then split squat, then rear-foot-elevated split squat, then one-leg squat (not tested with bodyweight only) | Weak | Facts (Muyor CC BY 4.0) | T7 | Yes |
| Afonso et al. 2021 ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8067745/)); Alizadeh et al. 2023, Sports Med ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9935664/)) | Strength training raises range of motion as much as stretching (ES 0.73). **But bodyweight-only strength work showed no significant gain** (4 effect sizes), so Move Freely needs real stretch or end-range work | Strong (general); weak (bodyweight subgroup) | Reusable (CC BY 4.0) | T5 | Yes |
| Warneke et al. 2025, Delphi consensus on stretching ([PMC12305623](https://pmc.ncbi.nlm.nih.gov/articles/PMC12305623/)) | Long-term flexibility: static or PNF, "2-3 sets daily, each held for 30-120 s per muscle". Avoid static stretches over 60 s per muscle before explosive work. Stretching doesn't fix posture, prevent all injuries or speed recovery | Opinion (graded consensus) | Facts (CC BY-NC-ND) | T5 | Yes |
| Ingram et al. 2025, Sports Med ([PubMed](https://pubmed.ncbi.nlm.nih.gov/39614059/)) | 189 studies: gains from static stretching level off at about 4 min per session and about 10 min per week (whether per muscle is unclear). Intensity, frequency, age and sex didn't matter | Strong | Facts | T5 | Partly |
| Scoubeau et al. 2023, home HIIT trial ([PMC10034507](https://pmc.ncbi.nlm.nih.gov/articles/PMC10034507/)) | 3 video sessions a week for 8 weeks. "Basic" variant in week 1, "harder" in week 2 of each 2-week block. VO2peak +5%, leg strength +13%; only 2 of 14 people missed 2 sessions each | Weak (n = 14 vs 14) | Facts (CC BY-NC-ND) | T5, T7 | Yes |
| Iversen et al. 2021, Sports Med ([PMC8449772](https://pmc.ncbi.nlm.nih.gov/articles/PMC8449772/)) | Minimum of about 4 weekly sets per muscle. Prioritise multi-joint moves, including a squat, a push **and a pull**. Supersets roughly halve session time | Weak (narrative review) | Reusable (CC BY 4.0) | T5 | Yes |
| ACSM 2009 position stand ([PubMed](https://pubmed.ncbi.nlm.nih.gov/19204579/)) | Novices 8-12 RM, 2-3 days a week; intermediate 3-4; advanced 4-5. Add 2-10% after 1-2 reps over target. Large before small, harder before easier | Weak (superseded in part by ACSM 2026) | Facts | T1, T5 | Partly |
| Garber et al. 2011, ACSM ([PubMed](https://pubmed.ncbi.nlm.nih.gov/21694556/)) | Flexibility: "a total of 60 s per exercise", 2+ days a week. "Gradual progression ... may reduce the risks" | Weak (consensus) | Facts | T5 | Partly |
| Archila et al. 2021, 5BX-style RCT ([PubMed](https://pubmed.ncbi.nlm.nih.gov/34055156/)) | 11-minute self-paced bodyweight sessions, 3 a week for 6 weeks, raised VO2peak in inactive adults. RPE 14, 100% compliance | Weak (n = 19) | Facts | T5 | Yes (abstract) |
| Poon et al. 2023 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/37711706/)); Machado 2019 | Calisthenics HIIT felt as hard as cycling HIIT and was more enjoyable than moderate cycling. Track it with RPE | Weak; opinion | Facts | T5 | Yes (abstracts) |
| Oliveira et al. 2018 ([PMC5991400](https://pmc.ncbi.nlm.nih.gov/articles/PMC5991400/)); Stork 2017 | HIIT is slightly more enjoyable than continuous exercise; only 4% of studied protocols were bodyweight | Weak | Oliveira CC BY 4.0 | T5 | Yes (abstracts) |
| Li and Huang 2026 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/41408545/)) | 12-week calisthenics RCT in adults with obesity: fitness and strength improved (ES 0.54-0.83). Unusual journal; a correction exists | Weak | Facts | T5 | Partly |
| ACE IFT model (2020), NASM OPT, NSCA "2-for-2" rule, ACSM Guidelines 12th ed. | Stages: ACE runs Functional, then Movement, then Load/Speed. NASM has 5 phases. NSCA adds load after 2 extra reps in 2 sessions in a row | Industry practice | Ideas only (proprietary) | T5, T1 | Partly (search snippets only) |
| r/bodyweightfitness Recommended Routine; Steven Low, *Overcoming Gravity* (2nd ed., 2016) | Community and book ladders "in order of increasing difficulty". The move-up rule conflicts between copies (3 × 8 vs 3 × 10) | Industry practice | Ideas only (no open licence) | T7, T1 | Partly |

### 4c. Behaviour, milestones, adherence and quality frameworks

| Source | What it says | Trust | Reuse | Topics | Verified |
|---|---|---|---|---|---|
| Harkin et al. 2016, Psychol Bull ([author copy](https://eprints.whiterose.ac.uk/id/eprint/87431/)) | 138 studies: prompting progress monitoring raised goal attainment (d = 0.40), more when progress was recorded or shared | Strong | Facts | T6, T4 | Partly |
| Huang, Jin and Zhang 2017, OBHDP ([Stanford page](https://www.gsb.stanford.edu/faculty-research/publications/step-step-sub-goals-source-motivation)) | Sub-goals help early; the overall goal helps late. Sub-goals first, then the whole goal: 57.1% reached target vs 33.8% (whole goal only) and 39.1% (sub-goals only) | Weak | Facts | T3, T4 | Partly |
| Kivetz, Urminsky and Zheng 2006, JMR; Nunes and Drèze 2006, JCR | Goal gradient: effort speeds up near a reward, then resets after it. A head start speeds completion | Weak (consumer, not exercise) | Facts | T2-T4 | Partly (numbers secondary) |
| Bonezzi, Brendl and De Angelis 2011, Psychol Sci ([author PDF](https://web-docs.stern.nyu.edu/pa/Stuck_in_the_Middle.pdf)) | Motivation dips mid-goal. Frame progress as "done so far" early and "left to go" late | Weak (no replication found) | Facts | T3, T6 | Partly |
| Amir and Ariely 2008; Fishbach and Dhar 2005 | Progress markers help when the distance to the goal is unclear, and breed complacency when it is clear. Progress can "license" slacking | Weak | Facts | T2, T4 | Partly |
| Etkin 2016, JCR ([preprint](https://marketing.wharton.upenn.edu/wp-content/uploads/2016/10/Etkin-Jordan-11-12-15-Hidden-Cost.pdf)) | Tracking output raised effort but cut enjoyment and continued engagement, unless framed around what was learned | Weak | Facts | T2, T6 | Partly |
| Stawarz, Cox and Blandford 2015, CHI; Renfree et al. 2016 | Reminders cut forgetting but weakened habit; streaks create dependency on the app. Use contextual cues and implementation intentions instead | Weak | Facts | T4 | Partly |
| Bailey et al. 2020, Hinge Health, JMIR ([PMC7248800](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7248800/)); Scheer et al. 2023, Sword Health ([PMC10132051](https://pmc.ncbi.nlm.nih.gov/articles/PMC10132051/)) | Sensor-guided 12-week programs with human coaches: about 73% completed. About 2.8-2.9 sessions a week against 3 recommended. A realistic ceiling for consumer plans | Weak (industry-authored, clinical, uncontrolled) | Facts | T3, T4, Q | Partly |
| Toelle 2019 (Kaia RCT, npj Digit Med); Clement 2018 (JMIR mHealth) | Kaia app beat physio plus education on pain at 12 weeks (n = 101). Redesign after user feedback lowered dropout | Weak | Facts | Q, T4 | Partly |
| Baumel 2019 ([PMC6785720](https://pmc.ncbi.nlm.nih.gov/articles/PMC6785720)); Hermsen 2017; Edney 2019; Fuente-Vidal 2026 (JMIR) | Mental-health apps: day-30 retention 3.3%. Free Fitbit: 73.9% still tracking at 100 days, 16% at 320. No peer-reviewed multi-app fitness benchmark exists | Weak | Facts | T4 | Partly |
| Adjust, AppsFlyer, OneSignal benchmarks | Health and fitness day-30 retention about 3-8.5%, day-1 about 24-28%; definitions differ | Industry practice | n/a | T4 | Partly |
| Michie, van Stralen and West 2011, COM-B and Behaviour Change Wheel ([UCL](https://discovery.ucl.ac.uk/1305716)) | Capability, Opportunity, Motivation at the hub, with 9 intervention functions. Keyworth 2020's 6-item COM-B questionnaire is CC BY-NC (not for commercial use) | Opinion (framework) | Paper CC BY 2.0 | Q, T6 | Partly |
| Marques et al. 2024, BCT Ontology ([PMC10427801](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10427801/)) | Machine-readable successor to BCT Taxonomy v1: 247 techniques | Opinion | Article CC BY 4.0; repo licence unclear | Q | Partly |
| NICE Evidence Standards Framework ([classification](https://www.nice.org.uk/corporate/ecd7/chapter/section-b-classification-of-digital-health-technologies)) | Tiers A/B/C. A fitness tracker is most likely Tier B; condition or pain claims push toward Tier C | Opinion (official standard) | Not checked | Q | Partly |
| ISO/TS 82304-2:2021 and Label2Enable ([ISO](https://www.iso.org/standard/78182.html), [Label2Enable](https://label2enable.eu/about-cen-iso-ts-82304-2)); Frey 2025 pilot ([JMIR](https://formative.jmir.org/2025/1/e64565)) | An EU health-app quality label (about 81 questions, energy-label style). The pilot found moderate rater agreement on 55 of 69 questions | Opinion; weak | ISO text is paid | Q | Partly |
| Stoyanov et al. 2016, uMARS ([PMC4920963](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4920963/)) | 20-item user version of MARS; alpha .90 | Weak | Not checked | Q, T6 | Partly |
| CONSORT-EHEALTH (Eysenbach 2011, [JMIR](https://www.jmir.org/2011/4/e126)); Eysenbach 2005, "law of attrition"; Yardley 2016 | Reporting checklist for app trials. Separates dropout from non-usage. "Effective engagement" means enough for the outcome, not simply more | Opinion | Not checked | Q, T4 | Partly |
| Nahum-Shani et al. 2018, JITAI design ([PubMed](https://pubmed.ncbi.nlm.nih.gov/27663578/)); Hardeman 2019; Nahum-Shani and Murphy 2025 | Six parts of a just-in-time prompt, including "send nothing". Frequent prompts habituate. Physical-activity JITAIs were mixed and underpowered | Opinion; weak | Facts | T4, T6 | Partly |

### 4d. Validating our own measurements, and platform rules for audio and camera

| Source | What it says | Trust | Reuse | Topics | Verified |
|---|---|---|---|---|---|
| COSMIN risk-of-bias tool, Mokkink et al. 2020 ([PMC7712525](https://pmc.ncbi.nlm.nih.gov/articles/PMC7712525/)); GRRAS, Kottner 2011 ([PubMed](https://pubmed.ncbi.nlm.nih.gov/21130355/)) | Which reliability statistic for which data: ICC for continuous, weighted kappa for ordinal, per-category kappa for labels. Specific positive and negative agreement for yes/no. 15 reporting items (OA 619; 2,313) | Strong | COSMIN CC BY 4.0 | V | Yes; partly |
| Bland and Altman 1986, Lancet ([PubMed](https://pubmed.ncbi.nlm.nih.gov/2868172/)); 2007 repeated-measures version; Giavarina 2015 tutorial ([PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4470095/)) | Report bias and 95% limits of agreement, not correlation. Set acceptable limits before testing. Use the clustered method when one person gives many sets (OA 48,286) | Strong | Facts | V | Partly |
| Feinstein and Cicchetti 1990, J Clin Epidemiol ([I](https://pubmed.ncbi.nlm.nih.gov/2348207/), [II](https://pubmed.ncbi.nlm.nih.gov/2189948/)) | High agreement can give a low kappa when most reps are credited. Always add agreement on positives and on negatives. This is the statistic for "credit agreement" | Strong | Facts | V, T2 | Partly |
| Koo and Li 2016 ([PMC4913118](https://pmc.ncbi.nlm.nih.gov/articles/PMC4913118/)) | 10 ICC forms; report the model and type; read the 95% CI. Bands: below 0.5 poor, 0.5-0.75 moderate, 0.75-0.9 good, above 0.9 excellent. The "30 subjects, 3 raters" rule is unverified | Strong (method); bands are convention | Facts | V | Partly |
| McHugh 2012, kappa tutorial ([PMC3900052](https://pmc.ncbi.nlm.nih.gov/articles/PMC3900052/)) | "Any kappa below 0.60 indicates inadequate agreement". Report percent agreement and kappa with CIs | Opinion (thresholds) | CC BY-NC 3.0 | V | Yes |
| Zapf et al. 2016 ([PMC4974794](https://pmc.ncbi.nlm.nih.gov/articles/PMC4974794/)) | Krippendorff's alpha or Fleiss' kappa for several raters, with bootstrap CIs; alpha when ratings are missing | Strong | CC BY 4.0 | V | Yes |
| RepNet (CVPR 2020) and TransRAC (CVPR 2022) papers | In the literature, "MAE" is error divided by true count, and "off-by-one" means within 1 rep. Delva must state both and also give raw reps (1 miss in 5 reps = 20%) | Strong (field convention) | Facts | V, TB | Yes |
| ACCORD reporting guideline, Gattrell 2024, PLoS Med ([PMC10805282](https://pmc.ncbi.nlm.nih.gov/articles/PMC10805282/)); Diamond 2014; CREDES (Jünger 2017) | How to run and report a consensus panel. Define consensus in advance (ACCORD used ≥80% of ≥20 voters, 2+ rounds). Of 100 Delphi studies, only 72 defined consensus. The template for writing Delva's technique criteria | Strong | ACCORD CC BY 4.0 | T7 | Yes; partly |
| Datasheets for Datasets, Gebru et al. ([arXiv](https://arxiv.org/abs/1803.09010)); Model Cards, Mitchell et al. 2019 ([arXiv](https://arxiv.org/abs/1810.03993)) | What to record about Delva's clip set (consent text, revocation, ethics review, labeller pay) and its models (results split by camera, light and group, with CIs) | Opinion (widely adopted) | Facts | V | Yes |
| Andrews et al. 2023, NeurIPS D&B ([arXiv](https://arxiv.org/abs/2302.03629)); GDPR Art. 7 | Explicit, revocable, plain-language consent from everyone recorded. Self-reported demographics, not inferred. Withdrawing must be "as easy" as giving consent | Opinion; law | n/a | V, X | Yes |
| MediaPipe Pose Landmarker docs ([guide](https://developers.google.com/edge/mediapipe/solutions/vision/pose_landmarker), updated 2026-11-04) | LIVE_STREAM mode drops frames when busy; VIDEO mode never does. Defaults: confidence thresholds 0.5, one pose. So test clips must also be replayed live on target phones | Official docs | Text CC BY 4.0, code Apache-2.0 | TB, V | Yes |
| Apple AVAudioSession `duckOthers`, `interruptSpokenAudioAndMixWithOthers`, `voicePrompt` mode; `AVSpeechSynthesizer.write(_:toBufferCallback:)` ([docs](https://developer.apple.com/documentation/avfaudio/avaudiosession/categoryoptions-swift.struct/duckothers)) | Apple names exercise apps for duck-plus-pause-podcasts. **"Don't use it to duck the audio of other apps for more than a few seconds."** Speech can be pre-rendered to buffers. AirPlay can add about 2 s of latency | Official docs | n/a | TB | Yes |
| Android audio focus ([guide](https://developer.android.com/media/optimize/audio-focus)), `AudioAttributes`, `TextToSpeech`, audio latency ([NDK guide](https://developer.android.com/ndk/guides/audio/audio-latency)) | `AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK` ducks music and pauses podcasts. Android 15 refuses focus unless the app is on top or runs a foreground service. TTS can pre-render clips. Low-latency devices guarantee 45 ms or less output | Official docs | n/a | TB | Yes |
| Apple `ProcessInfo.thermalState`, `AVCaptureDevice.SystemPressureState` ([docs](https://developer.apple.com/documentation/foundation/processinfo/thermalstate-swift.enum)) | At "serious", cut frame rate (for example 60 to 30 fps). At "critical", stop the camera if possible. The camera session is interrupted at "shutdown" | Official docs | n/a | TB | Yes |
| Android `PowerManager` thermal status and headroom ([ADPF guide](https://developer.android.com/games/optimize/adpf/thermal)) | Prefer thermal headroom (1.0 = severe) over status, which stays NONE on some devices. The docs conflict on how often to poll | Official docs | n/a | TB | Yes |
| Android CameraX ImageAnalysis and camera foreground service ([analyze](https://developer.android.com/media/camera/camerax/analyze), [service types](https://developer.android.com/develop/background-work/services/fgs/service-types)) | Keep-only-latest frames; analyse each frame within budget (about 32 ms at 30 fps). The camera service can't start from the background. A "health" service type exists for exercise apps | Official docs | n/a | TB | Yes |
| WCAG 2.2 and WCAG2ICT (W3C) | 1.3.3: instructions must not rely solely on sound. 4.1.3: status messages should reach screen readers. No criterion targets live spoken cues directly | Official standard | n/a | TB | Partly (read from W3C source) |
| Apple Human Interface Guidelines (accessibility, audio, haptics, privacy, workouts); WatchKit `play(_:)` | "Use haptics in addition to audio cues"; add visual cues. Process data on the device where possible. Watch haptics only during an active workout session; at least 100 ms delay when the haptic engine is busy | Official docs | n/a | TB | Yes |
| Hall et al. 2026 ([PMC13526966](https://pmc.ncbi.nlm.nih.gov/articles/PMC13526966/)); van Breda 2017 ([PMC5530110](https://pmc.ncbi.nlm.nih.gov/articles/PMC5530110/)); Android haptics principles | Only 4 of 1,735 fitness apps were tailored to Deaf/hard-of-hearing or blind users, and none gave Deaf users form feedback. Vibration feedback has no proven learning benefit. "Buzzy haptics or no haptics: choose no haptics" | Weak; official | CC BY 4.0; CC BY-NC | TB | Yes |

### What round 2 changes for the brainstorm

1. **Commercial apps hold the plan in place after a miss, as Delva does.**
   - They keep credit rules strict about where a workout came from.
   - They offer one-day shorter versions from a fixed menu.
   - They give comebacks their own path.
2. **Easier-to-harder ladders now have some measured ordering:**
   - push-up by body angle
   - plank by foot height
   - legs by shifting load to one leg
   - a tested "basic week, then harder week" pattern at home

   No full bodyweight ladder has been measured.
3. **Move Freely needs real stretching.** Bodyweight strength work alone showed no range-of-motion
   gain. Stretching gains level off at about 10 minutes a week.
4. **Milestones:**
   - Sub-goals early, the whole goal late.
   - Expect a mid-chapter dip.
   - Record progress at check-ins, but frame it around what was gained, not only counts.
5. **Validation now has a concrete recipe** (below).
6. **Apple's "few seconds" limit on lowering other apps' music** clashes with lowering it for a
   count on every rep.

### Validation recipe for Delva's own camera measurements

Built from the 4d sources. The thresholds are ours to set before testing.

1. **Human reference labels.**
   - 2-3 trained raters, each blind to the app and to each other, label every rep.
   - Report Krippendorff's alpha or Fleiss' kappa with bootstrap CIs, plus percent agreement.
   - Settle disagreements into one consensus label.
2. **Rep counter.**
   - Report the exact-match rate, off-by-one accuracy, and raw error in reps.
   - Also report error divided by the true count, for comparison with the literature.
   - Add Bland-Altman bias and limits, corrected for repeated sets from one person.
3. **Hold timer and joint angles.**
   - Report Bland-Altman limits in seconds or degrees, against acceptable limits fixed in advance.
   - Add an ICC with its model and type stated, read from its 95% CI.
4. **Credit agreement** (did the app and the humans agree on done vs partial):
   - kappa together with agreement on positives and on negatives
   - kappa for each error type, against all the others
   - the false-alarm rate against the consensus label
5. **Breakdowns and paperwork.**
   - Split every result by camera view, distance, light, device, sex, skin tone and body size, with
     CIs.
   - Replay clips through MediaPipe's live mode on target phones, not only offline.
   - Publish a datasheet for the clip set and a model card, with thresholds fixed before testing.
   - Use ACCORD to report the expert panel that sets technique criteria.

---

## 5. Sources weighed and set aside

| Source | Why set aside |
|---|---|
| Ryot, openScale, workout-lol, Bodyweight Fitness app, Good-GYM | Below the credibility bar, abandoned, or off-topic (report area K) |
| "About half of new exercisers drop out within 6 months" | Traces to early-1980s studies, not a verified primary figure |
| A 2025 exercise-snacks meta-analysis and a 2025 older-adult bodyweight meta-analysis | Could not be traced to primary sources |
| Sony AI pose fairness paper; EDPB smart-glasses statement | Could not be confirmed to exist as described |
| Pūioio counting preprint (98.89%) | Self-reported, not peer-reviewed |
| General vision-language models for live form judging | Near chance in FitAQA (preprint) and a CVPR 2026 workshop paper |

## 6. Do not use

The full list is in report section 3. The short version:

- **Code or models:**
  - OpenPose, AlphaPose (non-commercial).
  - Ultralytics YOLO (AGPL or paid).
  - MMPose EDPose head.
  - TransRAC (Anti-996 terms).
  - OpenCap Monocular (PolyForm Noncommercial).
  - Meta Sapiens weights.
  - RTMPose, ViTPose and other weights with no stated licence.
  - SMPL/SMPL-X.
- **Datasets:**
  - Fitness-AQA.
  - EgoExo-Fitness (not even internal benchmarking).
  - MyoMechanix.
  - QEVD (research licence; text unverified).
  - FitAQA videos.
  - MM-Fit data (all rights reserved).
  - Human-Art and COCO-WholeBody, which also taint weights trained on them.
- **Media:**
  - Gym visual media, in openGym and in exercises-dataset.
  - ExerciseDB data and media.
  - workout.cool data and video.
- **Copyleft apps, ideas only:**
  - AGPL: wger, Feeel, LiftLog, Liftosaur, openGym.
  - GPL with an attribution term: GymMane.
- **Questionnaires:** PAR-Q+ and CSEP, until written permission is obtained.
- **Clean for commercial use:**
  - MediaPipe/BlazePose code and weights, and MoveNet weights (all Apache-2.0).
  - Microsoft's wearable exercise dataset (CDLA-Permissive-2.0).
  - EXMO (CC BY 4.0).
  - WHO 2020 text (CC BY 4.0).

## 7. Where no source exists: our own user research

Taken from report section 5. No credible source covers:

- Phone pose accuracy on floor exercises (planks, bridges, dead bugs, bird dogs, mountain climbers).
- Mid-range 2024-2026 phones: speed, heat and battery over a 15-20 minute session.
- Pose accuracy by body size, for ages 50-64, in low light, with loose clothing, or on the front
  camera.
- Technique criteria for bridges, dead bugs, bird dogs, side planks, mountain climbers and jumping
  jacks.
- How false form cues affect trust in exercise; counting aloud; cues per set; what Deaf and
  hard-of-hearing users prefer.
- Thresholds for full vs partial bodyweight reps; per-side counting conventions; grace periods for
  holds.
- Program lengths, chapter structures, the 14-day floor, or sequence vs calendar, tested in an app.
- Stand-alone bodyweight resistance-training trials (beyond the Nordic curl).
- Injury rates for unsupervised home bodyweight training; how valid in-app screening is.
- Delva's own drop-off curve: camera permission, first and second workout, chapter boundaries.

Added by round 2:

- **A complete bodyweight ladder** for squat, lunge or hinge, measured end to end. Only parts exist:
  push-ups by angle, planks by foot height, legs by shifting load to one leg.
- **Validated tests for placing someone** at beginner, intermediate or advanced.
- **Safety of unsupervised bodyweight HIIT** in untrained adults. No adverse-event data; trials are
  small with mean ages of about 20-28.
- **A peer-reviewed retention benchmark** across consumer fitness apps. Industry figures for day-30
  retention range from 3% to 8.5%.
- **Camera feedback against wearable-sensor feedback** on adherence, compared head to head.
- **Sub-goals or milestones replicated in exercise programs.** The findings come from consumer and
  lab tasks.
- **Pass or fail thresholds** for rep-count or credit agreement, and a sample-size rule for Delva's
  validation study.
- **Speech latency** on either platform, and **per-device MediaPipe latency**: neither is documented.
- **Cue channels for Deaf and hard-of-hearing exercisers.** There is no evidence. Phone haptics
  likely don't work with the phone on a stand.
- **Camera accuracy for commercial apps.** No commercial vendor (Peloton, Tempo, Zing, Kemtai,
  QuickPose, Sency, Freeletics) publishes how it measured its accuracy.

## 8. Items for legal counsel

- The licences for PAR-Q+, CSEP, Compendium MET values, Gym visual terms and ExerciseDB terms.
- Whether Delva is the controller for processing that stays on the device.
- Whether stored keypoints or workout logs are biometric or health data.
- GDPR Art. 22 and any screening gate.
- BIPA, Texas CUBI, Washington MHMDA, the FTC Health Breach Notification Rule, Colorado, CCPA and
  the Swiss nFADP.
- EU MDR and MDCG 2019-11, and UK MHRA software guidance: where pain-driven plan changes would cross
  into medical-device rules.
- Directive 2004/113/EC and *Test-Achats*, plus the UK Equality Act 2010, if any content differs by
  gender.
- AI Act classification of the camera features.
- Whether stored or uploaded skeleton keypoints count as biometric data. Zing's own policy says its
  "dots" "may be considered biometric data in some jurisdictions".

**Licence and terms checks (not legal questions, but someone must read them):**

- The r/bodyweightfitness wiki: Reddit's user content has no open licence.
- *Overcoming Gravity* and the NSCA, ACE and NASM material: proprietary, ideas only.
- The Keyworth 2020 COM-B questionnaire: CC BY-NC, so not for a commercial app.
- The ISO/TS 82304-2 text: paid.

## 9. Known inconsistencies between sources

| Where | Disagreement | Status |
|---|---|---|
| Spec vs Programs Framework | Spec: "Chapter" is final, 8 weeks minimum with no cap. Framework: chapter or season undecided, "usually 8 to 14 weeks" | Decide in Step 0 |
| Spec vs Programs Framework vs research | Framework groups users by age and gender and plans a gender-specific rulebook. Spec: "age alone does not determine fit". Research: grouping by age or gender is challenged (strong evidence) | Topic T1 |
| Research notes I vs J | Safety notes pause training on any symptom until the user confirms advice. Privacy notes say never block automatically (GDPR Art. 22(4), Apple 1.4.1) | Topic T6 |
| Report vs verification pass V2 | Report says GDPR Art. 22 was verified at EUR-Lex. V2 could not reach EUR-Lex, but area J's pass read GDPR at source | Low impact |
| Report vs V5 | TransRAC: report says Apache-2.0 text followed by "Anti 996"; V5 says the LICENSE file is Apache and only the README badge says Anti-996 | Treat as do-not-use either way |
| Report vs mockup | The report's frequency reasoning assumes 4-5 full sessions; the mockup has 3 main sessions plus light ones in every plan | Topic T5 |
| Counting rulebook vs research | Rulebook: sparse spoken counts. Research: counting every rep raises effort (evidence from trained lifters) | Track B |
| Coaching rulebook vs research | Rulebook corrects every mapped half-rep, with no confidence gate. Research: correct only when confident and repeated, one theme per set | Track B |
| Research (count every rep) vs Apple's audio docs | Apple: don't lower other apps' music "for more than a few seconds". Counting every rep would keep it lowered all set. Counts may need to mix over music without lowering it | Track B |
| Move Freely concept vs Alizadeh 2023 | Bodyweight-only strength work showed no range-of-motion gain (4 effect sizes), so Move Freely needs real stretching (about 10 min a week where gains level off, Ingram 2025) | Topic T5 |
| ACSM 2009 vs the 5-day beginner plans | ACSM 2009: novices train 2-3 days a week. ACSM 2026 says that advice rested on 3 studies. Delva's 5-day beginner plans add light sessions only | Topic T5 |
| UK CMO guidelines | Round 1 cited the 2019 guidelines. Search results show a gov.uk page "updated 10 July 2026" that could not be opened | Check before citing |
| Freeletics help centre vs its staff forum posts | Missed sessions move to "the next calendar day" vs "the next coach day" | Low impact (vendor detail) |
