# Delva source register

One place that lists every source the Delva brainstorm can lean on, what each is good for, how much
to trust it, and what we may reuse.

- **Last updated:** 2026-11-07.
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

Round 1 had four gaps: commercial apps, coaching-practice progressions, app-based adherence and
quality frameworks, and validation methods with platform rules. This round searched those. Each
entry was opened and checked on 2026-11-07 unless marked otherwise.

_(Being filled in.)_

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
