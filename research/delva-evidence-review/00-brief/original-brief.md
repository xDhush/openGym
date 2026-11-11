# Original research brief (verbatim)

This is the request that started the work, as the user sent it on 2026-11-07. It is reproduced word for word below the line. Nothing in it has been edited.

---

# Deep research brief: credible open-source projects and research for a vision-guided home fitness app

## Context: what we are building
I work on Delva, a mobile fitness app in development. Its core features:
1. Vision-based form tracking through the phone camera.
2. Real-time audio feedback while the user exercises.
3. Automatic rep counting (and timing of holds such as planks).
4. Semi-personalised workout programs. Users are placed into groups from their details
   (age, gender, fitness level, goal, days available), and each group gets a curated program.

Current content scope (from our internal spec, 29 Oct 2026):
- Five programs with different purposes, not difficulty levels:
  - First Steps: learning structured training
  - All Round: balanced everyday fitness
  - Build Strength: resistance focus
  - Go Further: sustained effort
  - Move Freely: range, flexibility, control
- Each content cell is: program × starting level (beginner, intermediate, advanced) × 3, 4 or 5
  days a week. 2 and 6 days come later, as adjustments.
- No equipment, adults 18 to 64, sessions of about 15 to 20 minutes with warm-up, main work and
  cool-down.
- A program lasts at least 8 weeks, split into 4 chapters of about two weeks of work each. A
  chapter ends only when its assigned work is done AND at least 14 active days have passed
  (paused days don't count).
- Missed workouts never become debt: the next unfinished workout stays next. The plan is a
  sequence, not a calendar.
- Credit rules:
  - An approved shorter version of a workout earns credit.
  - Removing required work without approval does not.
  - A partial workout is saved as activity.
- A review/check-in at the end of each chapter. Changes to weekly frequency are suggested,
  and the user accepts or declines.
- We do not promise weight loss, rehabilitation, perfect technique, or results by a deadline.

We have already analysed one open-source app in depth: openGym
(github.com/DuarteSantos8/openGym, AGPL-3.0, a self-hosted gym tracker). We studied its sequence
scheduling, multi-week programmes, progression rules, exercise catalogue curation and AI coach.
Do not re-analyse it. Use it as a reference point for credibility and popularity, and mention it
only when comparing.

## What I want
Find the most credible and popular open-source repositories, and the most relevant research
papers, for each area below. For each one, explain concretely what Delva can learn from it. We
will reuse ideas, concepts and findings, not copy code. So licences matter for two things:
(a) whether we could ever use a library, model or dataset directly in a commercial app, and
(b) red flags we must avoid.

## Research areas and questions

A. Real-time pose estimation on phones
- Which on-device models and SDKs are credible for real-time single-person tracking on
  mid-range iOS and Android phones? Compare latency/FPS, 2D vs 3D, and keypoint sets.
- How accurate are they against motion capture or goniometers?
- What are known failure modes: floor exercises (plank, glute bridge, dead bug), side vs front
  camera views, occlusion, loose clothing, lighting, and differences across body types,
  skin tones, ages and genders?
- What guidance exists on camera placement and framing for users at home?

B. Exercise form assessment and error detection
- Rule-based joint-angle thresholds vs learned classifiers: what works, for which exercises?
- Public datasets of correct vs incorrect form, and error taxonomies per exercise
  (e.g. knee valgus, hip sag, partial range).
- How is form feedback validated, and what is the cost of false positives on user trust?

C. Repetition counting and hold timing
- Class-agnostic counting (repetition counting from video) vs pose-signal methods vs wearables.
- Handling partial reps, alternating unilateral moves, tempo, and start/stop of timed holds.
- Standard accuracy metrics and benchmark datasets.

D. Real-time feedback design (audio)
- Motor-learning evidence on feedback:
  - frequency and fading
  - the guidance hypothesis
  - concurrent vs terminal feedback
  - knowledge of performance vs knowledge of results
  - bandwidth feedback
  - internal vs external focus-of-attention cues
- Which of this applies to novices training alone at home?
- Audio vs visual vs haptic cues. How many cues per set? Acceptable latency. Counting aloud.
  Cue fatigue. Accessibility.

E. Personalisation and user grouping
- Is there evidence that age or gender (within 18 to 64) should change exercise prescription,
  beyond fitness level, goal and available time?
- Rule-based vs data-driven recommendation for fitness programs, cold start, onboarding
  questionnaires, and explaining a recommendation to the user.
- Fairness and bias risks of segmenting by demographics.

F. Program design for novices and bodyweight progression
- Guidelines from ACSM, WHO and similar bodies on resistance, aerobic and flexibility training
  for beginners: minimum effective dose, frequency, sets and rep ranges, rest.
- Bodyweight progression and regression ladders. RPE/RIR for novices. Warm-ups. Whether
  beginners need deloads. HIIT for untrained adults. Evidence for mobility/flexibility programs
  (our Move Freely).

G. Adherence, missed sessions and program structure
- Adherence and dropout curves in app-based or home exercise programs: when do people quit?
- Flexible vs fixed scheduling. How missed sessions are best handled.
- Habit formation timelines. Behaviour change techniques (BCT taxonomy). Goal setting and
  sub-goals/milestones (relevant to our 4 chapters). Check-ins and reviews.
- Streaks and gamification: benefits and harms. Just-in-time adaptive interventions.

H. Exercise libraries, taxonomies and content curation
- Credible open exercise databases and ontologies, and their licences.
- How mature projects validate, version, review and translate exercise content.

I. Safety and screening
- Pre-exercise screening (e.g. PAR-Q+), modelling contraindications, how to handle pain
  reports, and when to tell users to stop.
- Injury risk in unsupervised home bodyweight training.

J. Privacy of camera and health data
- On-device vs cloud processing of video. GDPR "special category" data. Biometric laws
  (e.g. Illinois BIPA). Policies on retaining frames. App Store and Google Play rules for
  camera and health data.

K. Comparable open-source fitness projects
- Popular open-source workout apps and pose-based fitness projects other than openGym: how
  they structure plans, schedules, progression and content. Note only what is relevant to
  Delva.

## Credibility bar
Repositories:
- Generally 1,000+ GitHub stars, OR maintained by a major company or academic lab with a
  peer-reviewed paper behind it. Exceptions need a stated reason (e.g. the official code of a
  key paper).
- Active in the last 18 months, or explicitly marked "archived but influential".
- Has a licence file. No licence means all rights reserved; flag it.
- Report: stars, last commit date, number of contributors, organisation, licence, and the
  date you checked.

Papers:
- Peer-reviewed in a reputable venue:
  - computer vision: CVPR, ICCV, ECCV, NeurIPS, WACV
  - HCI and ubiquitous computing: CHI, IMWUT/UbiComp, CSCW
  - health and sport science: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA
  - official guidelines: ACSM, WHO
- For health claims, prefer systematic reviews, meta-analyses and RCTs over single studies.
- A preprint is acceptable only if highly cited, and must be labelled as a preprint.
- Report citation counts (Google Scholar or Semantic Scholar) with the date checked.
- Prefer 2019 to 2026. Older foundational work is fine if marked as foundational.

## Rules
- Verify everything live. Never invent a repository, paper, number or quote. Every claim needs
  a link. If you cannot verify something, say so.
- Check licences separately for code, model weights and datasets: they often differ. Flag
  anything non-commercial, research-only, or copyleft (GPL/AGPL).
- Separate strong evidence, weak evidence and opinion or industry practice. Public docs of
  commercial apps count as industry practice, not evidence.
- Exclude: SEO blogs, vendor marketing, abandoned forks, tutorial repos without substance,
  and anything you cannot trace to a primary source.
- Quality over quantity: at most 5 to 10 items per area.
- Do not ask me clarifying questions. State your assumptions and continue.

## Output format
1. Executive summary (about one page): key findings per area, and a "top 10 must-reads"
   list across all areas.
2. One section per area (A to K), with a table: name and link | type (repo, paper, dataset,
   guideline) | what it is | why it matters for Delva (name the feature or spec rule) |
   credibility evidence | licence and commercial-use implications | key ideas to borrow |
   limitations.
3. Licence red flags: everything we must not use directly in a commercial app, and why.
4. Evidence that challenges or supports our current decisions:
   - the 8-week minimum and four chapters
   - 14 active days per chapter
   - the 3/4/5-day starting frequencies
   - 15 to 20 minute sessions
   - grouping by age and gender
   - sequence-based handling of missed workouts
5. Gaps: where no credible source exists, and open questions we must answer with our own
   user research.
6. Full bibliography with links and access dates.

## Seed leads (believed to exist; verify each, correct anything wrong, and go well beyond them)
- Pose: Google MediaPipe Pose Landmarker / BlazePose; TensorFlow MoveNet; OpenMMLab MMPose /
  RTMPose; CMU OpenPose (check its licence); Ultralytics YOLO pose models (check its licence);
  Apple Vision body-pose and Google ML Kit pose detection as platform SDKs.
- Form and counting: RepNet ("Counting Out Time", CVPR 2020) and the Countix dataset;
  TransRAC and the RepCount dataset (CVPR 2022); AIFit and the Fit3D dataset; Fitness-AQA.
- Feedback and behaviour: Gabriele Wulf's reviews on focus of attention; the guidance
  hypothesis (Salmoni, Schmidt and Walter); Michie et al.'s BCT Taxonomy v1; Lally et al. on
  habit formation.
- Guidelines and safety: ACSM position stand on progression models in resistance training;
  WHO 2020 physical activity guidelines; PAR-Q+.
- Open fitness apps and data: wger (open-source workout manager) and open exercise databases.
