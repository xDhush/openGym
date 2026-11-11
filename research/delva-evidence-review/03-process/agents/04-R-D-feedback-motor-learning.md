# R-D: first pass, area D (real-time feedback and motor learning)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, 08:00 UTC |
| Finished | 2026-11-07, about 08:07 UTC (first track to finish) |
| Output | [02-notes/first-pass/D_feedback_motor_learning.md](../../02-notes/first-pass/D_feedback_motor_learning.md) |
| Checked later by | V2 |

## Prompt sent by the coordinator (verbatim)

````text
Research motor-learning evidence and interaction-design evidence for real-time (mainly audio) exercise feedback (Area D of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters of ~2 weeks of work; a chapter ends only when its work is done AND >=14 active days have passed (paused days don't count); missed workouts never become debt (sequence, not calendar); approved shorter versions earn credit, unapproved removal of required work doesn't, partial workouts are saved as activity; end-of-chapter check-in suggests frequency changes the user accepts/declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) was already analysed: do not re-analyse it. Users are mostly novices training alone at home with the phone on the floor or propped up, often several metres away, so they cannot read the screen mid-set.

Objective: Summarise the strongest evidence on feedback scheduling and content from motor learning, judge which findings transfer to novices training alone at home, and gather evidence and credible guidance on modality (audio vs visual vs haptic), number of cues per set, acceptable latency, counting aloud, cue fatigue, and accessibility. Include the replication/meta-science caveats where the evidence has weakened.

Key questions:
- Feedback frequency and fading; the guidance hypothesis (Salmoni, Schmidt & Walter 1984, Psychological Bulletin — foundational); reduced relative frequency (Winstein & Schmidt 1990 — foundational); bandwidth feedback (Sherwood 1988; Lee & Carnahan 1990 — foundational); concurrent vs terminal feedback; knowledge of performance (KP) vs knowledge of results (KR). Find recent systematic reviews/meta-analyses (2013-2026) that test these, including any that challenge them (e.g., meta-analyses on reduced-frequency feedback, on self-controlled feedback such as McKay et al. 2022/2023 that found small or bias-corrected-null effects).
- Internal vs external focus of attention: Wulf 2013 review (Int Rev Sport Exerc Psychol); Wulf & Lewthwaite 2016 OPTIMAL theory (Psychonomic Bulletin & Review); Chua et al. 2021 meta-analyses (Psychological Bulletin, "Superiority of external attentional focus..."); and any later critiques or re-analyses (e.g., publication-bias concerns). Specifically: are there studies on external vs internal cues in resistance/bodyweight exercise (squats, push-ups) and on muscle activation (internal focus may help hypertrophy-oriented mind-muscle connection — e.g., Schoenfeld et al. 2018)?
- Augmented feedback modality: Sigrist et al. 2013 (Psychonomic Bulletin & Review) review of visual, auditory, haptic and multimodal feedback; sonification/auditory feedback studies in exercise or rehab (CHI, IMWUT, J NeuroEngineering Rehabil, Frontiers); studies of real-time feedback in resistance training (e.g., velocity or technique feedback; Weakley et al.).
- Which of this applies to novices training alone at home (self-directed, unsupervised)? Any studies of app-based or automated real-time coaching for novices?
- How many cues per set? Acceptable latency for concurrent audio feedback (human perception of audio-motor delay; HCI latency thresholds)? Counting reps aloud (any evidence on counting by app/coach)? Cue fatigue/habituation (alarm-fatigue literature)? Positive vs corrective feedback (e.g., Chiviacowsky & Wulf 2007, feedback after good trials — foundational) and autonomy-supportive language.
- Accessibility: exercise systems for blind/low-vision users (e.g., Eyes-Free Yoga, Rector et al., ASSETS 2013 — foundational; later CHI/ASSETS work), Deaf/hard-of-hearing users (visual/haptic alternatives), and platform accessibility guidance (Apple/Google HIG; WCAG) labelled as industry/standards.
- Where evidence is missing, say so explicitly (e.g., number of cues per set may have no direct evidence).

Suggested sources:
- Psychological Bulletin, Psychonomic Bulletin & Review, Human Movement Science, J Motor Behavior, Int Rev Sport Exerc Psychol, Sports Medicine, J Strength Cond Res; CHI, IMWUT, ASSETS; J NeuroEngineering and Rehabilitation
- Official platform accessibility guidelines

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Repos (if any): generally >=1,000 GitHub stars OR maintained by a major company/academic lab with a peer-reviewed paper; report stars, last commit date, contributors, organisation, licence, date checked. Papers: peer-reviewed in reputable venues (HCI/ubicomp: CHI, IMWUT/UbiComp, CSCW, ASSETS; health/sport/psychology: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA, Psychological Bulletin and similar reputable journals; official guidelines). For health/learning claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice (public docs of commercial apps = industry practice). Exclude SEO blogs, vendor marketing, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items (you may briefly list "also considered" items).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (paper, review, meta-analysis, guideline) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (venue, design, citations with date checked) | licence/commercial-use implications (usually n/a for papers) | key ideas to borrow | limitations. Then sections: "Applicability to novices training alone at home", "Design recommendations with evidence strength (cue frequency, fading, focus, modality, latency, counting aloud, cue fatigue, accessibility)", "Where the evidence has weakened (replication caveats)", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/D_feedback_motor_learning.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I finished the Area D notes. They are saved at /home/user/openGym/research_notes/Vision guided home fitness evidence/D_feedback_motor_learning.md. The date checked is 2026-11-07 throughout.

**Limits on the evidence:**
- No citation counts were verified. Page fetches to api.semanticscholar.org, ncbi.nlm.nih.gov and aminer.org were blocked, so every item says "citation count not verified".
- All numbers come from abstracts or repository records found through search, not from full texts.
- The shared web-search budget ran out before 3 planned searches, so these were not covered:
  - Calatayud's push-up and bench EMG studies
  - The details of the Kaia Motion Coach JMIR 2021 study
  - Any study on an app or coach counting reps aloud
- Winstein & Schmidt 1990, Sherwood 1988 and Lee & Carnahan 1990 were not retrieved. The guidance hypothesis is covered through Salmoni 1984 (cited second-hand) and the later meta-analyses.
- Android accessibility guidance was not retrieved.
- No code repositories were assessed.

**Main findings:**
1. **How often to give feedback.** The classic rule "give less feedback so learners don't become dependent" is foundational, but later meta-analyses don't back it.
   - McKay et al. 2022 (Psychology of Sport and Exercise) found no significant effect of reduced feedback frequency at any time point.
   - For learner-chosen feedback, the apparent benefit shrank from g = .44 to g = .107 once publication bias was corrected (Meta-Psychology 2022).
   - St. Germain et al. 2023 (N = 228) found no advantage for letting learners choose when to get feedback.
2. **Strength-training feedback.** Weakley et al. 2023 (Sports Medicine; 20 studies; CC BY) is the closest match to Delva.
   - Feedback raised performance within a session (g = 0.63, about 8.4% faster bar speed).
   - Feedback after every rep worked better than less frequent feedback.
   - Visual feedback (g = 1.11) beat verbal (g = 0.47), but users could see a screen in those studies. Samples were trained or athletic, and long-term effects are uncertain.
3. **Internal vs external focus.** Chua et al. 2021 (Psychological Bulletin) reported clear external-focus benefits (g 0.26 to 0.58). McKay et al. 2024, in the same journal, corrected for publication bias and got g = 0.01 to 0.15, with Bayes factors favouring no effect and large variation between studies.
   - For strength: external focus gave a small immediate strength gain (SMD 0.34) and a long-term difference that was not significant (Grgic 2021). It also improved muscular endurance (Grgic 2022).
   - Internal focus gave more elbow-flexor growth in one small RCT (Schoenfeld 2018, n = 30).
4. **Motivation-based claims.** The benefits of positive expectations and autonomy-supportive wording were "substantially exaggerated" by reporting bias, and the average statistical power of the studies was 6% (McKay, International Review of Sport and Exercise Psychology, 2025 issue). Chiviacowsky & Wulf 2007 ("feedback after good trials helps") is a small foundational study in this weakened literature.
5. **Modality.**
   - Sigrist 2013 and Schaffert 2019 support audio feedback and sonification as feasible.
   - A 2017 review of vibrotactile feedback found no evidence it helps people learn new skills.
   - YouMove (UIST 2013) is a design precedent for fading guidance in stages, which maps onto Delva's 4 chapters.
6. **Latency.** Non-musicians notice an action-to-sound delay at about 180 ms on average (SD 104); musicians at about 102 ms. The notes suggest under about 100 ms for rep counts, with 200 ms as an upper bound. These targets are extrapolated from lab studies; there is no exercise-specific evidence.
7. **Number of cues and counting aloud.** No direct evidence was found for either. The closest is a children's study showing that working memory limits learning when several instructions are given (Buszard 2017).
8. **Cue fatigue.** By analogy from healthcare alarm reviews: false or non-actionable alarms drive people to tune them out (72 to 99% of ICU alarms are false or non-actionable). For Delva this argues for confidence and persistence gating on form cues, and against repeating cues the user can't act on.
9. **Accessibility.**
   - Eyes-Free Yoga (ASSETS 2013; 16 blind or low-vision participants, 13 would recommend it) is the strongest precedent for camera-tracked, audio-only correction. Its 2015 and 2017 follow-ups were seen only through a secondary review site.
   - Research for Deaf and hard-of-hearing users is thin (haptic start signals for sprinters; small samples).
   - Standards and platform guidance: WCAG 1.4.2 on audio control, and Apple HIG pages on haptics, VoiceOver and audio descriptions.

The notes also contain:
- 11 item cards in the requested format, each with an evidence label.
- A table of design recommendations by evidence strength.
- A section on where the evidence has weakened.
- 10 open questions for user research.
- A full source list with URLs and an "also considered" list.

I could re-run the missing searches and citation counts in a follow-up if hosts are allowed (api.semanticscholar.org, ncbi.nlm.nih.gov), or if the search budget is raised.
````

## What changed afterwards

V2 confirmed the priority numbers and named the latency paper (van Vugt & Tillmann 2014, PLoS ONE). It corrected the "72 to 99%" alarm figure (a background statement in Chromik et al. 2022 citing Sendelbach & Funk 2013, not that review's finding) and noted that the Eyes-Free Yoga home deployment had n = 4. See [V2_verify_DE.md](../../02-notes/verification/V2_verify_DE.md).
