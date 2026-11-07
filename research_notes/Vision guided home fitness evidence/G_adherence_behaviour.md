# Area G: Adherence, dropout, missed sessions, habits, BCTs, goals, streaks and JITAIs for app-based home exercise (Delva)

Date checked for every number in these notes: **2026-11-07**.

**How to read these notes (verification status, important):**
- **[V]** = verified in this session from the paper's abstract, PubMed/PMC record, publisher record or university repository surfaced by web search on 2026-11-07. Full texts were not opened.
- **[NR]** = from the researcher's prior knowledge of a well-known paper; **not re-verified in this session**. Treat the exact figures as "to check" before they go into the final report. Where I was not confident of a figure, I give only the direction of the finding, not a number.
- **Citation counts: not verified for any item.** Semantic Scholar API (`api.semanticscholar.org`), `www.jmir.org` and `www.nature.com` were unreachable from this session (WebFetch DNS block), and the shared web-search budget for this turn ran out after about 20 searches. Every item below is therefore marked "citation count not verified". If counts are needed, `api.semanticscholar.org` has to be allowed in the session's network settings, or a follow-up run can collect them.
- Evidence labels: **strong** (meta-analysis, systematic review of RCTs, large RCT or large field experiment), **weak** (single small study, observational, lab/marketing experiments not in exercise, narrative review), **opinion/industry** (commercial app docs, expert opinion).
- openGym (github.com/DuarteSantos8/openGym) is mentioned only as a comparison: it also uses sequence scheduling (the next workout stays next), which is the same idea as Delva's "plan is a sequence, not a calendar". Not re-analysed here.

---

## Main evidence table: the 10 best items

Format per item: name and link | type | what it is | why it matters for Delva | credibility | licence/commercial use | ideas to borrow | limitations | evidence label.

### 1. Pratap et al. 2020, "Indicators of retention in remote digital health studies: a cross-study evaluation of 100,000 participants" [V]
- **Link:** https://doi.org/10.1038/s41746-020-0224-8 (record: https://doaj.org/article/86d1232336c940b38797a6044e476fd1 ; preprint arXiv:1910.01165 https://arxiv.org/pdf/1910.01165)
- **Type:** cross-study secondary analysis (8 app-based remote studies, survival analysis).
- **What it is:** pooled usage logs of >100,000 participants, ~3.5 million remote assessments, 850,000 participant-days, studies run 2014-2019.
- **Why it matters for Delva:** the shape of the drop-off curve. Median retention across the 8 studies was **5.5 days** (study medians **2 to 26 days**). This means Chapter 1 (at least 14 active days) is longer than the time most app users stay. Onboarding, the first workout and the first week carry most of the risk.
- **Credibility:** npj Digital Medicine (Nature portfolio), 2020; large n. Citation count not verified.
- **Licence/commercial use:** open-access paper; findings are ideas, free to use; do not copy figures without checking the article's CC licence.
- **Ideas to borrow:** a human/clinician referral added about **40 days** median retention, payment about **22 days** (one study only), having the condition of interest about **7 days**, older age about **4 days**. Delva cannot refer people clinically, but "a reason to be here" and social or human accountability are the levers.
- **Limitations:** research studies (surveys and sensor tasks), not fitness apps; US samples, not representative by race/ethnicity or geography.
- **Label:** strong evidence for "app engagement decays within days"; weak as a direct estimate for a paid fitness app.

### 2. Meyerowitz-Katz et al. 2020, "Rates of Attrition and Dropout in App-Based Interventions for Chronic Disease: Systematic Review and Meta-Analysis" [V]
- **Link:** https://www.jmir.org/2020/9/e20283 (PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC7556375 ; DOAJ: https://doaj.org/article/b1cdec8a68334f54bdd86b3086efa634)
- **Type:** systematic review and meta-analysis (17 of 833 screened studies; 9 RCTs, 8 observational).
- **What it is:** pooled dropout in app-based chronic-disease interventions: **43% (95% CI 29-57)**; observational/real-world **49% (27-70)** vs RCTs **40% (16-63)**; heterogeneity I² >99%. The 43/49/40 figures come from an indexed abstract record (https://katalog.lib.cas.cz/KNAV/EdsRecord/edsair,edsair.doi...........6812738e275e6ac59ec78709e714c41c); one preprint-stage page gave 47%, so check the final full text before quoting.
- **Why it matters for Delva:** a planning baseline: expect roughly 4 in 10 starters to drop out of a structured app programme, more in real-world use than in trials.
- **Credibility:** JMIR 2020, PROSPERO-registered (CRD42019128737). Citation count not verified.
- **Licence/commercial use:** JMIR is open access (CC BY); ideas free to use.
- **Ideas to borrow:** treat "real-world" attrition as higher than trial attrition when forecasting.
- **Limitations:** chronic disease (diabetes, etc.), not general fitness; huge heterogeneity; mixed study lengths.
- **Label:** strong evidence that attrition is high; weak as a fitness-specific number.

### 3. Milkman et al. 2021, "Megastudies improve the impact of applied behavioural science" (Nature) [V]
- **Link:** https://doi.org/10.1038/s41586-021-04128-4 (record: https://authors.library.caltech.edu/records/mys88-cc756 ; CMU news: https://www.cmu.edu/dietrich/news/news-stories/2021/megastudy-exercise.html)
- **Type:** megastudy (one large field experiment testing 54 interventions).
- **What it is:** **61,293** members of a US gym chain (24 Hour Fitness) randomised to 54 four-week digital programmes designed by 30 scientists. **45%** of interventions significantly increased weekly gym visits by **9% to 27%**. The **top intervention gave micro-rewards for returning to the gym after a missed workout**. Only **8%** of interventions produced a significant, measurable effect after the four weeks ended. Expert forecasters could not predict which would work.
- **Why it matters for Delva:** direct support for the "missed workouts never become debt" rule and for designing the moment after a miss as a welcome-back, not a penalty. Also a warning: most effects fade when the nudge ends.
- **Credibility:** Nature 2021; very large randomised field study. Citation count not verified.
- **Licence/commercial use:** ideas free to use.
- **Ideas to borrow:** "never miss twice" framing: the press coverage quotes the message that one miss is fine but two in a row matters (World Economic Forum summary: https://weforum.org/stories/2022/01/science-fitness-goal-motivation, secondary). A positive acknowledgement the first time the user comes back after a miss.
- **Limitations:** gym attendance with small cash/points incentives, not home exercise; 4-week window; effects mostly did not persist.
- **Label:** strong evidence.

### 4. Beshears, Lee, Milkman, Mislavsky & Wisdom 2021, "Creating Exercise Habits Using Incentives: The Trade-off Between Flexibility and Routinization" (Management Science 67(7):4139-4171) [V]
- **Link:** https://doi.org/10.1287/mnsc.2020.3706 (author PDF: https://static1.squarespace.com/static/5353b838e4b0e68461b517cf/t/5faabd2e420aac6e8253ef5e/1605025072088/creating-exercise-habits.pdf ; registry AEARCTR-0003471: https://www.socialscienceregistry.org/trials/3471)
- **Type:** field experiment (2,508 participants enrolled in pairs; four-week intervention).
- **What it is:** paying people for gym visits **at any time** (flexible) vs only **within a planned daily two-hour window** (routine). Routine incentives produced **fewer** visits during the intervention **and after** incentives ended; even among similar exercisers, routine recipients fell off more afterwards.
- **Why it matters for Delva:** supports the sequence-not-calendar plan and letting people train when they can, rather than rewarding a fixed slot.
- **Credibility:** Management Science (top-tier); pre-registered field experiment. Citation count not verified.
- **Licence/commercial use:** ideas free to use.
- **Ideas to borrow:** reward the workout, not the time slot. Optional, user-chosen time cues can still help (see habit section) but should not be a condition of credit.
- **Limitations:** gym visits with money; four weeks; employees of one company.
- **Label:** strong evidence (for flexibility over rigid timing in this context).

### 5. Silverman & Barasch 2023, "On or Off Track: How (Broken) Streaks Affect Consumer Decisions" (J Consumer Research 49(6):1095-1117) [V]
- **Link:** https://doi.org/10.1093/jcr/ucac029 (abstract: https://www.colorado.edu/business/faculty-research/2023/04/19/or-track-how-broken-streaks-affect-consumer-decisions ; https://udspace.udel.edu/items/42ce576b-8e1f-429a-8541-e29e48dbcfbb)
- **Type:** seven experiments/studies (behavioural science).
- **What it is:** showing an **intact streak** in a behaviour log raises later engagement compared with highlighting a **broken** streak, **independent of how much people actually did**; it depends only on how the log represents it. The streak becomes a goal in itself. The drop after a broken streak is **stronger when people blame themselves** and **weaker when they can "repair" the streak**.
- **Why it matters for Delva:** if Delva shows any history/calendar, do not highlight gaps. Consistent with the no-debt rule and with credit for approved shorter versions (a way to keep the record intact).
- **Credibility:** JCR (top marketing/consumer journal). Citation count not verified.
- **Licence/commercial use:** ideas free to use.
- **Ideas to borrow:** count streaks in units the user can keep (e.g., weeks with at least the planned minimum) rather than daily; offer a repair path; external-cause framing for pauses ("you paused for travel") rather than self-blame.
- **Limitations:** consumer/marketing studies, not exercise RCTs; short-term outcomes. Psychology Today summary (secondary) reports some participants paid costs to repair streaks: https://www.psychologytoday.com/us/blog/ulterior-motives/202306/how-broken-streaks-sap-motivation
- **Label:** strong evidence for the mechanism (multi-study); weak for direct exercise transfer.

### 6. Habit formation timeline: Lally et al. 2010 (foundational) + Singh et al. 2024 (systematic review) [V]
- **Links:** Lally P, van Jaarsveld CHM, Potts HWW, Wardle J. "How are habits formed: Modelling habit formation in the real world." Eur J Soc Psychol 40(6):998-1009, https://doi.org/10.1002/ejsp.674 ; Singh B, Murphy A, Maher C, Smith AE. "Time to Form a Habit: A Systematic Review and Meta-Analysis of Health Behaviour Habit Formation and Its Determinants." Healthcare 2024, https://pubmed.ncbi.nlm.nih.gov/39685110/ (full text https://pmc.ncbi.nlm.nih.gov/articles/PMC11641623/)
- **Type:** Lally = longitudinal observational study (foundational); Singh = systematic review and meta-analysis (20 studies).
- **What it is:** Lally: time to reach 95% of the automaticity plateau had a median of **66 days**, range **18 to a predicted 254 days**, from the participants whose data fitted the curve (39 people; the study ran 84 days, so 254 is an extrapolation) (BPS digest: https://bps.org.uk/research-digest/how-form-habit ; replication preprint note: https://rr.peercommunityin.org/download/t_recommendations.reply_pdf.8382af6b73bdd0f7.6d616e757363726970745f7072657072696e742e706466.pdf). The often-quoted line that **missing one opportunity did not materially affect habit formation** is widely attributed to Lally et al. but I could only confirm it via secondary sources (e.g., https://jamesclear.com/new-habit); check the paper's text. A secondary critique says exercise behaviours took longer (median ~91 days) (https://www.thebehavioralscientist.com/articles/how-long-to-form-a-habit; not verified in the paper). Singh 2024: only **4 of 20** studies reported time to habit: medians **59-66 days**, means **106-154 days**, individual range **4-335 days**; pooled habit-strength change SMD **0.69**; results refute the "21 days" idea.
- **Why it matters for Delva:** the 8-week minimum (56 days) sits just below the typical median; for many people exercise habits will still be forming at the end of a program. A next program should follow without a gap.
- **Credibility:** Lally: EJSP, very widely cited (count not verified), small sample. Singh: Healthcare (MDPI), 2024, PRISMA review. Citation counts not verified.
- **Licence/commercial use:** ideas free; Singh is open access.
- **Ideas to borrow:** message "habits take about two months or more and vary a lot"; missing a day is not failure; keep the same cue (time/place) where possible.
- **Limitations:** self-reported automaticity (SRHI); small samples; mostly simple behaviours (flossing, diet), few exercise data; Lally's replication is pending.
- **Label:** strong evidence that habit takes ~2 months on median with huge spread; weak for exercise-specific timing.

### 7. Kaushal & Rhodes 2015, "Exercise habit formation in new gym members: a longitudinal study" (J Behav Med 38(4):652-663) [V]
- **Link:** https://pubmed.ncbi.nlm.nih.gov/25851609/ (author PDF: https://www.uvic.ca/research/labs/bmed/assets/docs/Kaushal,%20Rhodes,%202015.pdf)
- **Type:** prospective longitudinal study (n = 111 new gym members, 12 weeks).
- **What it is:** **at least four exercise bouts per week for 6 weeks** was the minimum to establish an exercise habit. Predictors of habit growth: **consistency (β = .21)**, **low behavioural complexity (β = .19)**, **environment (β = .17)**, **affective judgements/enjoyment (β = .13)**.
- **Why it matters for Delva:** supports 4-5 days/week for habit building, short simple sessions (low complexity), a fixed home spot (environment) and enjoyable sessions. Suggests the 3-day cell may build habit more slowly.
- **Credibility:** J Behav Med (reputable); small single-site sample. Citation count not verified.
- **Licence/commercial use:** ideas free to use.
- **Ideas to borrow:** a "same place in the home" setup step during onboarding (camera position doubles as an environmental cue); keep the first chapter simple.
- **Limitations:** gym, not home; self-reported habit; short; one sample.
- **Label:** weak evidence (single observational study), but the most specific estimate available for exercise.

### 8. Howlett, Trivedi, Troop & Chater 2019, "Are physical activity interventions for healthy inactive adults effective in promoting behavior change and maintenance, and which behavior change techniques are effective?" (Transl Behav Med 9(1):147-157) [V]
- **Link:** https://uhra.herts.ac.uk/handle/2299/20185 (also https://researchprofiles.herts.ac.uk/en/publications/are-physical-activity-interventions-for-healthy-inactive-adults-e/)
- **Type:** systematic review and meta-analysis of RCTs with at least 6 months follow-up (26 studies; 16 pooled per search summary).
- **What it is:** interventions changed PA (**d = 0.32, 95% CI 0.16-0.48**) and change was **maintained at ≥6 months (d = 0.21, 0.12-0.30)**. BCTs linked with effects at follow-up: **action planning, instruction on how to perform the behaviour, prompts/cues, behaviour practice/rehearsal, graded tasks, self-reward**. Graded tasks, biofeedback, demonstration and practice were linked with post-intervention effects. Fidelity was documented in only one study.
- **Why it matters for Delva:** maps cleanly to Delva's features: demonstration and instruction (exercise videos + audio feedback), biofeedback (camera form/rep feedback), graded tasks (levels and chapters), prompts/cues (reminders), action planning (picking days).
- **Credibility:** TBM (Society of Behavioral Medicine journal). Citation count not verified.
- **Licence/commercial use:** ideas free; BCT labels come from BCTTv1 (see item 11 in supporting list).
- **Ideas to borrow:** add action planning ("when and where will you do your next workout?") since the plan has no calendar.
- **Limitations:** BCT-effect links are associations across studies, not randomised comparisons of BCTs; inactive healthy adults only.
- **Label:** strong evidence (meta-analysis) for overall effects; moderate for individual BCTs.

### 9. Mazeas, Duclos, Pereira & Chalabaev 2022, "Evaluating the Effectiveness of Gamification on Physical Activity: Systematic Review and Meta-analysis of Randomized Controlled Trials" (JMIR 24(1):e26779) [V, with caveat]
- **Link:** https://jmir.org/2022/1/e26779 (DOAJ: https://doaj.org/article/9754f1fd9dd84266b5e5a30336858ad8)
- **Type:** systematic review and meta-analysis of RCTs (2010-2020).
- **What it is:** main effect of gamified interventions on PA: **Hedges g = 0.42 (95% CI 0.14-0.69), 16 studies, 2,407 participants** (this figure surfaced from the preprint page; check the final text). Published abstract: vs inactive controls **g = 0.58 (0.08-1.07)**, vs active non-gamified PA programmes **g = 0.23 (0.05-0.41)**; at follow-up (~14 weeks after the end) **g = 0.15 (0.07-0.23)**, "very small to small".
- **Why it matters for Delva:** gamification adds a small benefit over an equivalent non-gamified programme, and the effect shrinks after it stops. Use light gamification, not as the core.
- **Credibility:** JMIR, RCT-only meta-analysis. Citation count not verified.
- **Licence/commercial use:** open access (CC BY); ideas free.
- **Ideas to borrow:** progress feedback and goals are what carry the effect; game elements are a modest add-on.
- **Limitations:** heterogeneous game designs; few long follow-ups; mostly step outcomes, not structured home workouts.
- **Label:** strong evidence for small short-term effect; weak for long-term.

### 10. Klasnja et al. 2019, "Efficacy of Contextually Tailored Suggestions for Physical Activity: A Micro-randomized Optimization Trial of HeartSteps" (Ann Behav Med 53(6):573-582) [V]
- **Link:** https://pubmed.ncbi.nlm.nih.gov/30192907/ (full text https://pmc.ncbi.nlm.nih.gov/articles/PMC6401341)
- **Type:** micro-randomised trial (MRT), 44 sedentary adults, 42 days, 5 decision points per day.
- **What it is:** a contextually tailored suggestion raised steps in the next 30 minutes by **14% (~35 steps), p = .06** on average; walking suggestions alone **+24% (~59 steps), p = .02**; the effect was **largest early (+66%, ~167 steps) and declined over time**; anti-sedentary suggestions showed no effect.
- **Why it matters for Delva:** shows how to test notification timing and content properly (MRT) and that prompt effects decay (habituation). Delva's real-time audio feedback is an in-session intervention, not a JITAI in this sense; JITAI ideas apply to reminders and "start now" prompts.
- **Credibility:** Ann Behav Med; the reference MRT in PA. Citation count not verified.
- **Licence/commercial use:** methods free to use.
- **Ideas to borrow:** randomise reminders at decision points within the live app to learn what works per user; rotate message content; expect decay.
- **Limitations:** tiny sample; walking, not structured workouts; proximal 30-minute effect only.
- **Label:** strong design for proximal effects; weak for long-term outcomes.

---

## When people quit (numbers and timing)

### Takeaway
App-based health engagement collapses fast: median retention across eight large remote studies was 5.5 days, and roughly 40-50% of starters drop out of structured app programmes. Effects of apps, gamification, nudges and prompts are real but shrink when support ends or as novelty wears off. The classic "about half of new exercisers drop out within 6 months" claim (Dishman) could not be verified in this session.

### Cited Findings
- Median participant retention across 8 remote digital health studies (>100,000 participants) was 5.5 days; study medians ranged 2-26 days (checked 2026-11-07) [V] - [Pratap 2020, npj Digit Med](https://doi.org/10.1038/s41746-020-0224-8); [DOAJ record](https://doaj.org/article/86d1232336c940b38797a6044e476fd1)
- Clinician referral (+~40 days), compensation (+~22 days, one study), having the condition (+~7 days) and older age (+~4 days) were linked with longer retention [V] - [Pratap 2020](https://doi.org/10.1038/s41746-020-0224-8)
- Pooled dropout in app-based chronic-disease interventions 43% (95% CI 29-57); observational 49% vs RCT 40%; I² >99%; 17 studies [V via abstract record; one preprint page says 47%] - [Meyerowitz-Katz 2020, JMIR](https://www.jmir.org/2020/9/e20283); [PMC7556375](https://pmc.ncbi.nlm.nih.gov/articles/PMC7556375)
- Apps and trackers increased PA by about 1,850 steps/day (95% CI 1,247-2,457; SDM 0.350; 28 RCTs, 7,454 adults aged 18-65; mean follow-up 13 weeks, range 2-40); text messaging and personalisation features were more effective; authors flag high drop-off as a major challenge [V] - [Laranjo 2021, BJSM](https://bjsm.bmj.com/content/55/8/422.full); [BJSM blog](https://blogs.bmj.com/bjsm/2021/01/26/do-smartphone-applications-and-activity-trackers-increase-physical-activity-in-adults/)
- Only 8% of 54 gym-attendance interventions had a significant measurable effect after the 4-week programme ended [V] - [Milkman 2021, Nature](https://authors.library.caltech.edu/records/mys88-cc756)
- STEP UP (602 adults with BMI ≥25, 24-week intervention, 12-week follow-up): all three gamification arms raised steps during the game (competition +920, support +689, collaboration +637 steps/day vs control), but at follow-up only competition stayed significant (+569, 95% CI 142-996); support (+428) and collaboration (+126) did not [V] - [Patel 2019, JAMA Intern Med, PubMed 31498375](https://pubmed.ncbi.nlm.nih.gov/31498375/); [Penn Medicine release](https://www.pennmedicine.org/news/news-releases/2019/september/using-a-wearable-device-to-exercise-more-add-competition-to-improve-your-results)
- Gamification effects fell from g ≈ 0.42 (post) to g = 0.15 at ~14 weeks after the end [V, post value from preprint] - [Mazeas 2022, JMIR](https://jmir.org/2022/1/e26779)
- HeartSteps suggestion effects were largest at the start and declined over the 42 days [V] - [Klasnja 2019, PMC6401341](https://pmc.ncbi.nlm.nih.gov/articles/PMC6401341)
- "Law of attrition": in eHealth trials a substantial share of users stop using the application before the end, and attrition should be studied as an outcome in itself; Eysenbach proposed plotting attrition curves [NR, foundational] - [Eysenbach 2005, JMIR](https://doi.org/10.2196/jmir.7.1.e11)

### Inferences
- For Delva the riskiest window is day 0 to day 7: install, camera set-up, first workout, second workout. Chapter 1 milestones need to be days, not weeks.
- A 43-49% real-world dropout expectation over a multi-week programme is a reasonable planning baseline, but fitness-specific data are missing.
- Pratap's "human referral" effect suggests that a partner, coach or social element (supportive accountability, see BCT section) is one of the few levers with large retention effects.

### Gaps
- **Dishman's "~50% drop out within 6 months"**: I could not verify the primary source or exact figure this session (often attributed to Dishman RK (ed.), *Exercise Adherence: Its Impact on Public Health*, 1988, Human Kinetics, foundational). Search link: https://scholar.google.com/scholar?q=Dishman+1988+exercise+adherence+impact+on+public+health . Do not cite the number until checked.
- **Systematic reviews of home-based exercise programme adherence** and **large-scale fitness-app engagement decay analyses (JMIR/IMWUT/npj)**: not retrieved this session (search budget exhausted). Not found ≠ does not exist.
- **Industry retention benchmarks** (app-store day-1/day-30 retention): none collected from primary sources; leave out rather than cite blogs.

---

## Missed sessions and flexible scheduling

### Takeaway
The best field evidence favours flexibility and a warm welcome back after a miss: flexible incentives beat routine-slot incentives (Beshears 2021), and the best of 54 interventions in a 61,293-person megastudy rewarded returning after a missed workout (Milkman 2021). Highlighting a broken streak reduces later engagement (Silverman & Barasch 2023). Goals with a small, costly reserve of "skips" are preferred and lead to better persistence than rigid goals (Sharif & Shu 2017). Temporal landmarks (new week, month) boost exercise starts (Dai 2014).

### Cited Findings
- Paying for gym visits at any time produced more visits, during and after the intervention, than paying only for visits in a planned daily two-hour window; routine recipients dropped off more afterwards (2,508 participants) [V] - [Beshears 2021, Management Science](https://doi.org/10.1287/mnsc.2020.3706); [registry](https://www.socialscienceregistry.org/trials/3471)
- Top megastudy intervention: micro-rewards for returning after a missed workout; 45% of interventions raised weekly visits by 9-27% [V] - [Milkman 2021, Nature](https://doi.org/10.1038/s41586-021-04128-4); [CMU summary](https://www.cmu.edu/dietrich/news/news-stories/2021/megastudy-exercise.html)
- Highlighting intact (vs broken) streaks increases later engagement regardless of actual past behaviour; the broken-streak drop is larger when people blame themselves and smaller when the streak can be repaired (7 studies) [V] - [Silverman & Barasch 2023, JCR](https://www.colorado.edu/business/faculty-research/2023/04/19/or-track-how-broken-streaks-affect-consumer-decisions)
- Goals with an "emergency reserve" (e.g., a gym goal of 7 days a week with 2 emergency skip days) are preferred to goals without reserves and lead to better performance; the verified published title is "...Goals That Have Slack with a Cost" (JMR 54(3), doi 10.1509/jmr.15.0231) (the brief's "built-in concession" wording could not be confirmed) [V] - [econbiz record](https://www.econbiz.de/Record/the-benefits-of-emergency-reserves-greater-preference-and-persistence-for-goals-that-have-slack-with-a-cost-sharif-marissa/10011697492); [UCLA Anderson Review](https://anderson-review.ucla.edu/emergency-reserves/); [field experiment working paper, Wharton](https://marketing.wharton.upenn.edu/wp-content/uploads/2016/10/Designing-More-Effective-Goals-by-Using-Emergency-Reserves-A-Field-Experiment.pdf) (working paper)
- Follow-up: framing a goal with emergency reserves increased perceived progress and commitment and supported persistence after failure [V] - [Sharif & Shu 2021, OBHDP 163:17-29](https://ideas.repec.org/a/eee/jobhdp/v163y2021icp17-29.html)
- Gym visits (university fitness centre card data), diet searches and goal commitments rise after temporal landmarks: start of a week, month, year or semester, birthdays, holidays (3 archival field studies) [V] - [Dai, Milkman & Riis 2014, Management Science 60(10):2563-2582](https://faculty.wharton.upenn.edu/wp-content/uploads/2014/06/Dai_Fresh_Start_2014_Mgmt_Sci.pdf)
- Missing a single opportunity reportedly did not materially affect the habit curve [secondary only; check in paper] - [Lally 2010](https://doi.org/10.1002/ejsp.674); quoted by [James Clear](https://jamesclear.com/new-habit) (secondary)
- "What-the-hell" / abstinence-violation effect (a lapse leads to giving up the goal): classic work by Cochran & Tesser (1996) and Marlatt's relapse-prevention model [NR, foundational; not verified this session; no exercise-app RCT found] - [Scholar search](https://scholar.google.com/scholar?q=Cochran+Tesser+1996+%22what+the+hell%22+effect+goal+proximity)
- Flexible nonlinear periodization (letting trainees pick the session type on the day) was tested in a beginner college weight-training class [NR; outcomes not verified; strength, not adherence, was the focus] - [McNamara & Stearne 2010, J Strength Cond Res, PubMed search](https://pubmed.ncbi.nlm.nih.gov/?term=McNamara+Stearne+flexible+nonlinear+periodization)

### Inferences
- Delva's "no debt, next unfinished workout stays next" rule matches the best field evidence (strong evidence for flexibility and for not punishing misses; the exact sequence design itself is untested).
- The return-after-miss moment deserves design attention: a positive message, maybe a slightly easier "welcome back" version (which Delva's approved shorter version can serve).
- Emergency reserves work when slack has a small **cost** or limit. If approved shorter versions are unlimited and free, they may become the default; a limited number per chapter is closer to the tested design.
- Chapter starts and Mondays are natural "fresh starts" for re-engagement messages after a lapse.
- openGym comparison: openGym also keeps the next workout next (sequence scheduling); neither app has published outcome data on this choice.

### Gaps
- No RCT found comparing sequence-based vs calendar-based home workout plans on adherence.
- No direct evidence found on "what-the-hell" effects inside exercise apps.
- Flexible periodization adherence data not verified.

---

## Habit formation timelines

### Takeaway
Typical habit formation takes about two months (medians 59-66 days), with a very wide spread (4 to 335 days); exercise appears slower than simple behaviours. In new gym members, at least four sessions a week for six weeks was the minimum for habit. The part of exercise that most needs to become automatic is the decision to start (instigation), not every step of the workout.

### Cited Findings
- Median 66 days to 95% of the automaticity plateau; range 18 to a predicted 254 days (39 well-fitted participants, 84-day study) [V] - [Lally 2010, EJSP](https://doi.org/10.1002/ejsp.674); [BPS Research Digest](https://bps.org.uk/research-digest/how-form-habit)
- Exercise behaviours reportedly took longer (median about 91 days) [secondary only] - [The Behavioral Scientist critique](https://www.thebehavioralscientist.com/articles/how-long-to-form-a-habit)
- Systematic review: 4 of 20 studies reported time to habit; medians 59-66 days, means 106-154 days, range 4-335 days; habit strength change SMD 0.69; "21 days" refuted [V] - [Singh 2024, Healthcare](https://pubmed.ncbi.nlm.nih.gov/39685110/); [PMC11641623](https://pmc.ncbi.nlm.nih.gov/articles/PMC11641623/)
- One underlying trial reportedly found only 23% of participants reached the habit threshold [secondary summary; not verified in the paper] - [news-medical summary](https://www.news-medical.net/news/20250124/Healthy-habits-take-longer-to-form-than-expected.aspx)
- At least 4 bouts/week for 6 weeks needed for exercise habit in new gym members; consistency, low complexity, environment and enjoyment predicted habit growth (n = 111, 12 weeks) [V] - [Kaushal & Rhodes 2015, J Behav Med](https://pubmed.ncbi.nlm.nih.gov/25851609/)
- Habitual **instigation** (automatically deciding to start exercising) predicted exercise frequency, while habitual **execution** did not [NR; direction from prior knowledge] - [Phillips & Gardner 2016, Health Psychol](https://doi.org/10.1037/hea0000249)
- Habit formation advice for practice: repeat a behaviour in a consistent context; automaticity grows with repetition [NR] - [Gardner, Lally & Wardle 2012, BJGP](https://doi.org/10.3399/bjgp12X659466)
- Habit apps that rely on reminders and streak tracking can create dependency on the app instead of automaticity (CHI papers by Stawarz et al. 2015 and Renfree et al. 2016) [NR, not verified this session] - [Stawarz, Cox & Blandford 2015, CHI](https://scholar.google.com/scholar?q=%22Beyond+Self-Tracking+and+Reminders%22+Stawarz+CHI+2015); [Renfree et al. 2016, CHI EA](https://scholar.google.com/scholar?q=%22Don%27t+Kick+the+Habit%22+dependency+habit+formation+apps)

### Inferences
- An 8-week program ends right around the median for simple habits and probably before habit is established for many exercisers; the second program should be offered before the first ends.
- Because Delva's plan has no calendar, the context cue (same time of day, same room, after a daily anchor like morning coffee) must come from the user. An onboarding "when and where" plan (action planning) protects instigation habits without making credit depend on timing.
- The 3-day cell is below Kaushal & Rhodes' 4/week threshold; it may still be the right start for beginners (adherence first), but expect slower habit growth.

### Gaps
- No habit-timeline data specific to short home bodyweight workouts.
- Phillips & Gardner and the CHI dependency papers not re-verified this session.

---

## BCTs, goals, sub-goals and check-ins

### Takeaway
Self-monitoring combined with another self-regulation technique (goal setting, review of goals, feedback) gives larger effects than other approaches; in inactive adults, action planning, instruction, prompts, practice, graded tasks and self-reward were linked with maintained change; apps and trackers add about 1,850 steps/day short term. Goal setting has a reliable small-to-medium effect, proximal sub-goals beat distal ones, and periodic review of goals is itself a named, effective BCT. Autonomy-supportive designs (SDT) predict longer-term adherence.

### Cited Findings
- Self-monitoring + at least one other control-theory technique (intention formation, specific goal setting, review of behavioural goals, feedback on performance): effect 0.42 vs 0.26 for other interventions; overall 0.31 across 122 evaluations (N = 44,747); self-monitoring explained 13% of heterogeneity [V] - [Michie 2009, Health Psychol, PubMed 19916637](https://pubmed.ncbi.nlm.nih.gov/19916637/)
- In healthy inactive adults: d = 0.32 post, d = 0.21 at ≥6 months; action planning, instruction, prompts/cues, practice, graded tasks, self-reward linked with maintenance [V] - [Howlett 2019, TBM](https://uhra.herts.ac.uk/handle/2299/20185)
- Apps/trackers: +1,850 steps/day; personalisation and text messaging moderate effects [V] - [Laranjo 2021, BJSM](https://bjsm.bmj.com/content/55/8/422.full)
- BCT Taxonomy v1: 93 hierarchically clustered techniques in 16 groups, with labels such as 1.1 goal setting (behaviour), 1.2 problem solving, 1.4 action planning, 1.5 review behaviour goal(s), 2.2 feedback on behaviour, 2.3 self-monitoring of behaviour, 8.7 graded tasks [NR; numbering from prior knowledge, check] - [Michie 2013, Ann Behav Med](https://doi.org/10.1007/s12160-013-9486-6)
- BCT Ontology (Marques et al.): a successor to BCTTv1 within the Human Behaviour-Change Project, released as an open ontology [NR; licence (believed CC BY 4.0) not verified] - [Scholar search](https://scholar.google.com/scholar?q=%22Behaviour+Change+Technique+Ontology%22+Marques+Wellcome+Open+Research)
- Multi-component goal-setting interventions for PA had a medium-to-large effect (d ≈ 0.55 from prior knowledge) [NR] - [McEwan 2016, Health Psychol Rev](https://doi.org/10.1080/17437199.2015.1104258)
- Goal setting had a small-to-medium unique effect on behaviour (d ≈ 0.34 from prior knowledge). **Note:** Epton et al. 2017 appeared in the *Journal of Consulting and Clinical Psychology* 85(12):1182-1198, not *Health Psychology* as in the brief [NR] - [Epton, Currie & Armitage 2017](https://doi.org/10.1037/ccp0000223)
- Proximal (near-term) sub-goals raised self-efficacy, intrinsic interest and performance more than distal goals (children learning arithmetic) [NR, foundational] - [Bandura & Schunk 1981, JPSP](https://doi.org/10.1037/0022-3514.41.3.586)
- Goal-gradient: effort accelerates as people approach a reward/goal (coffee-card field data) [NR, foundational] - [Kivetz, Urminsky & Zheng 2006, JMR](https://doi.org/10.1509/jmkr.43.1.39)
- Counterpoint: discrete progress markers (sub-goal completion points) can reduce persistence in some tasks ("resting on laurels") [NR] - [Amir & Ariely 2008, J Exp Psychol LMC](https://doi.org/10.1037/0278-7393.34.5.1158); motivation can dip in the middle of a goal ("stuck in the middle") [NR] - [Bonezzi, Brendl & De Angelis 2011, Psychol Sci, Scholar search](https://scholar.google.com/scholar?q=Bonezzi+Brendl+De+Angelis+%22Stuck+in+the+middle%22+psychophysics+goal+pursuit)
- Supportive accountability: human support improves adherence to eHealth when the supporter is seen as trustworthy, benevolent and expert, and accountability is clear [NR, model paper] - [Mohr, Cuijpers & Lehman 2011, JMIR](https://doi.org/10.2196/jmir.1602)
- Long-term goals review in overweight/obese adults: goal setting of behaviour, self-monitoring, feedback and review linked with effects [NR] - [Samdal et al. 2017, IJBNPA](https://doi.org/10.1186/s12966-017-0494-y)
- mHealth PA meta-analyses: small positive effects of mHealth on PA [NR] - [Direito 2017, Ann Behav Med](https://doi.org/10.1007/s12160-016-9846-0); [Romeo 2019, JMIR](https://doi.org/10.2196/12053); BCTs for self-efficacy and PA in obese adults [NR] - [Olander 2013, IJBNPA](https://doi.org/10.1186/1479-5868-10-29)
- Self-determination theory: autonomous (intrinsic/identified) motivation predicts long-term exercise adherence [NR] - [Teixeira 2012, IJBNPA](https://doi.org/10.1186/1479-5868-9-78); SDT-informed interventions improve autonomous motivation and health behaviour (small to medium effects) [NR] - [Ntoumanis 2021, Health Psychol Rev](https://doi.org/10.1080/17437199.2020.1718529)

### Inferences
- Delva already covers several high-value BCTs: instruction and demonstration (exercise media), biofeedback and feedback on behaviour (camera form tracking, real-time audio), self-monitoring (auto rep count and hold timing), graded tasks (levels, chapters). The highest-value additions are **action planning** (when/where), **review behaviour goals** (the chapter check-in) and **self-reward/positive reinforcement**.
- Chapters are sub-goals: evidence favours them (Bandura & Schunk; McEwan) but also predicts a dip after each chapter is finished (Amir & Ariely) and in the middle of each chapter (Bonezzi). Have the next chapter's first workout ready immediately and show within-chapter progress.
- The accept/decline design of the check-in is autonomy-supportive (SDT), which is consistent with longer-term adherence.

### Gaps
- BCTTv1 terms of use for commercial products not verified. The taxonomy is a published academic paper; using the technique concepts in design is not a copyright issue, but reproducing the taxonomy text or using the "BCT Taxonomy" trademark/training materials in a product should be checked with the BCT Taxonomy owners (UCL) or counsel.
- McEwan, Epton, Samdal, Direito, Romeo, Olander, Teixeira, Ntoumanis effect sizes not re-verified this session.

---

## Streaks and gamification: benefits and harms

### Takeaway
Gamification gives a small extra boost to PA, mostly short-lived; competition was the most durable social game in one large RCT. Streaks raise engagement while intact, but highlighting a broken streak reduces later engagement, especially when people blame themselves; repair options soften this. Harms (anxiety, guilt, dependency, crowding out intrinsic motivation) are well theorised but rest on weaker, mostly qualitative or lab evidence.

### Cited Findings
- Gamification vs active non-gamified programme g = 0.23; vs inactive control g = 0.58; follow-up g = 0.15 [V] - [Mazeas 2022, JMIR](https://jmir.org/2022/1/e26779)
- STEP UP: competition +920 steps/day during, +569 at follow-up; support and collaboration effects not durable; funded jointly by Deloitte and Penn's Nudge Unit [V] - [Patel 2019, PubMed 31498375](https://pubmed.ncbi.nlm.nih.gov/31498375/); [ClinicalTrials.gov NCT03311230](https://clinicaltrials.gov/study/NCT03311230)
- Intact streaks increase, highlighted broken streaks decrease, later engagement; self-blame amplifies, repair attenuates [V] - [Silverman & Barasch 2023, JCR](https://www.colorado.edu/business/faculty-research/2023/04/19/or-track-how-broken-streaks-affect-consumer-decisions)
- Tangible, expected rewards tend to undermine intrinsic motivation for interesting tasks [NR, foundational meta-analysis] - [Deci, Koestner & Ryan 1999, Psychol Bull](https://doi.org/10.1037/0033-2909.125.6.627)
- Measuring an enjoyable activity (e.g., counting steps) can increase how much people do but reduce enjoyment and later continuation ("hidden cost of personal quantification") [NR; direction from prior knowledge, not verified] - [Etkin 2016, JCR, Scholar search](https://scholar.google.com/scholar?q=Etkin+%22The+Hidden+Cost+of+Personal+Quantification%22)
- Habit-tracking apps with reminders/streaks can foster dependency rather than automaticity [NR] - [Renfree et al. 2016, Scholar search](https://scholar.google.com/scholar?q=%22Don%27t+Kick+the+Habit%22+dependency+habit+formation+apps)
- Autonomous motivation predicts long-term exercise; controlling pressure undermines it [NR] - [Teixeira 2012, IJBNPA](https://doi.org/10.1186/1479-5868-9-78)

### Inferences
- If Delva uses streaks at all, a **weekly** streak ("weeks with your planned workouts done, shorter versions count") fits the sequence model better than a daily streak, which conflicts with 3-5 days/week plans and the no-debt rule.
- Never make a broken streak prominent; offer repair (e.g., an approved shorter workout keeps the week); frame pauses as external events.
- Rep counting and form scores are measurements; Etkin-type effects (less enjoyment) are a plausible risk for the camera features. Consider letting users hide scores, and lead with encouragement over grading.
- Competition was the most durable social game in STEP UP, but Delva has no social features in the spec; this is a research question, not a recommendation.

### Gaps
- CHI/CSCW/IMWUT papers on streak anxiety and gamification harms could not be retrieved this session; specific titles and findings above marked [NR] need checking.
- No RCT found on streak freezes/repairs in fitness apps; industry streak data (e.g., language-learning apps' published streak experiments) not collected from primary sources, so not cited.

---

## JITAIs

### Takeaway
JITAIs deliver the right support at the right moment using decision points, tailoring variables, decision rules and intervention options. In PA, the best trial (HeartSteps MRT) found small, short-lived step increases after contextual suggestions that faded over weeks. Reviews find JITAIs acceptable and promising but short, small and with feasibility problems (sensor reliability, timing). A 2023 meta-analysis across healthy behaviours reported a medium effect from a small pooled sample.

### Cited Findings
- HeartSteps: +14% (~35 steps, p = .06) average 30-minute effect of any suggestion; walking suggestions +24% (~59 steps, p = .02); initial +66% (~167 steps) declining over time; 44 sedentary adults, 42 days, 5 decision points/day [V] - [Klasnja 2019, Ann Behav Med](https://pubmed.ncbi.nlm.nih.gov/30192907/); [PMC6401341](https://pmc.ncbi.nlm.nih.gov/articles/PMC6401341)
- Systematic review of PA JITAIs: narrative synthesis; generally acceptable; feasibility issues with sensors and message timing; interventions typically lasted only 3-4 weeks [V] - [Hardeman 2019, IJBNPA, PMC6448257](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6448257/); [PDF](https://ijbnpa.biomedcentral.com/counter/pdf/10.1186/s12966-019-0792-7.pdf)
- Meta-analysis of JITAIs for healthy behaviours (not PA only): g = 0.77 (95% CI 0.32-1.22), 21 effect sizes, 592 participants; design features (e.g., theory use) did not moderate effects [V] - [Xu & Smit 2023, Digital Health, UvA record](https://dare.uva.nl/id/4c8814cc-b448-46e0-87b1-30ef52385731)
- JITAI framework: distal outcome, proximal outcomes, decision points, tailoring variables, intervention options, decision rules; target "states of vulnerability/opportunity" and "receptivity" [NR, foundational design paper] - [Nahum-Shani 2018, Ann Behav Med](https://doi.org/10.1007/s12160-016-9830-8)

### Inferences
- Delva's real-time audio form feedback is "in-the-moment" but is not a JITAI in the literature's sense (which targets the decision to start or keep moving). The JITAI lessons apply to reminders: when to nudge, which message, and when to stay silent.
- A pragmatic Delva JITAI: a decision point at the user's usual workout time (learned from history, not a calendar), tailored by days since last workout and whether the next workout is shorter-version eligible; option to send a nudge, a "short version" offer, or nothing. Test with an MRT before scaling.
- Expect habituation: rotate content and cap frequency.

### Gaps
- No 2024-2026 PA-specific JITAI meta-analysis found this session (search budget exhausted before a second search).
- No JITAI evidence specific to structured home strength workouts.

---

## Session length and frequency vs adherence

### Takeaway
"Lack of time" is the most reported barrier to PA, which supports short sessions, but the trial evidence that shorter sessions or lower prescribed frequency improve long-term adherence is thin and mixed. Kaushal & Rhodes suggest 4+ sessions a week builds exercise habit; older trials suggest prescribing more frequent exercise does not reduce adherence. These older trials were not re-verified this session.

### Cited Findings
- Low behavioural complexity predicted habit growth (β = .19) [V] - [Kaushal & Rhodes 2015](https://pubmed.ncbi.nlm.nih.gov/25851609/)
- ≥4 bouts/week for 6 weeks for habit [V] - [Kaushal & Rhodes 2015](https://pubmed.ncbi.nlm.nih.gov/25851609/)
- Lack of time is among the most consistently reported barriers to adult PA [NR, foundational review] - [Trost 2002, MSSE](https://doi.org/10.1097/00005768-200212000-00020)
- Prescribing higher frequency (more days per week) led to more total exercise without lowering the proportion of prescribed sessions completed, compared with lower frequency [NR; direction only] - [Perri 2002, Health Psychol](https://doi.org/10.1037/0278-6133.21.5.452)
- Splitting exercise into multiple short bouts improved adherence early but did not improve long-term (18-month) adherence or weight loss vs one long bout; access to home exercise equipment helped [NR; direction only] - [Jakicic 1999, JAMA](https://doi.org/10.1001/jama.282.16.1554)

### Inferences
- 15-20 minute sessions remove the main stated barrier and lower complexity; there is no good evidence they cause better long-term adherence than 30-45 minute sessions, and no evidence they hurt it.
- Prescribed frequency per se does not appear to drive dropout, so letting users pick 3/4/5 based on available days is reasonable; the bigger risk is the gap between chosen days and real life, which the no-debt sequence and the check-in handle.

### Gaps
- Perri 2002, Jakicic 1999, Trost 2002 not re-verified this session; HIIT vs moderate-training dropout meta-analyses not retrieved.
- No evidence found on whether users who self-select 5 days over-commit and drop out more than 3-day users.

---

## Evidence on Delva spec decisions

Strength labels: strong / weak / opinion. "Supports" and "Challenges" list the evidence; "Suggested tweak" is my inference.

### 1. 8-week minimum + four chapters (~2 weeks each)
- **Supports:** median habit formation 59-66 days (Singh 2024 [V]; Lally 2010 [V]) so 8 weeks gives a fair chance to build a habit; 6 weeks at ≥4/week for gym habit (Kaushal & Rhodes 2015 [V]); proximal sub-goals beat distal goals (Bandura & Schunk 1981 [NR]); goal setting works (McEwan 2016 [NR]; Epton 2017 [NR]); chapter boundaries act as temporal landmarks / fresh starts (Dai 2014 [V]).
- **Challenges:** most app users stop within days (Pratap 2020 median 5.5 days [V]), so Chapter 1 is longer than the typical stay; the habit range is huge (4-335 days) and exercise may be slower (~91 days, secondary), so 8 weeks is not a habit guarantee; discrete sub-goals can cause post-milestone let-down and mid-goal dips (Amir & Ariely 2008 [NR]; Bonezzi 2011 [NR]).
- **Strength:** weak-to-moderate (indirect; no trial of chaptered fitness programmes).
- **Suggested tweak:** add micro-milestones inside Chapter 1 (first workout, first week); open the next chapter/program immediately at each boundary; do not claim "habit in 8 weeks".

### 2. Chapter ends only when work done AND ≥14 active days (paused days don't count)
- **Supports:** graded tasks are linked with effects (Howlett 2019 [V]); pauses that do not count avoid self-blame framing, which reduces broken-streak damage (Silverman & Barasch 2023 [V]); a floor prevents rushing through progressive overload (training logic, not behavioural evidence).
- **Challenges:** a user who finishes the work in 10 days must wait; that can feel like being held back (no direct evidence either way); a user with many misses has a long chapter and may get "stuck in the middle" (Bonezzi 2011 [NR]); goal-gradient (Kivetz 2006 [NR]) predicts acceleration near the end, which the floor may blunt.
- **Strength:** weak (no direct evidence; mostly inference).
- **Suggested tweak:** show both counters ("work 9/12, days 10/14"); give early finishers optional extras or a short-version recovery day that counts as activity; define "active day" clearly in user research.

### 3. 3/4/5-day starting frequencies
- **Supports:** ≥4/week for 6 weeks for habit (Kaushal & Rhodes 2015 [V]); higher prescribed frequency did not lower adherence (Perri 2002 [NR]); choosing days fits autonomy (Teixeira 2012 [NR]; Ntoumanis 2021 [NR]); flexible scheduling beats fixed slots (Beshears 2021 [V]).
- **Challenges:** 3 days is below the 4/week habit threshold (weak, one study); lack of time is the main barrier (Trost 2002 [NR]); over-commitment at onboarding is plausible but unstudied.
- **Strength:** weak-to-moderate.
- **Suggested tweak:** consider framing 4-5 day plans as "4 + 1 reserve" (emergency reserve with a small cost: Sharif & Shu 2017 [V]); for beginners on 3 days, add an optional short "bonus" movement to build the daily cue.

### 4. 15-20 minute sessions
- **Supports:** time is the most-cited barrier (Trost 2002 [NR]); low complexity predicts habit (Kaushal & Rhodes 2015 [V]).
- **Challenges:** short bouts did not improve long-term adherence vs long bouts (Jakicic 1999 [NR]); no strong trial shows shorter sessions retain users better.
- **Strength:** weak (sensible, but supported mainly by barrier surveys).
- **Suggested tweak:** keep 15-20 min; measure completion rate by session length; an approved 8-10 minute shorter version covers bad days.

### 5. Sequence-based missed workouts (no debt; next unfinished workout stays next)
- **Supports:** flexible incentives > routine-slot incentives, during and after (Beshears 2021 [V], strong); best of 54 interventions rewarded returning after a miss (Milkman 2021 [V], strong); highlighting broken streaks lowers later engagement (Silverman & Barasch 2023 [V]); missing one opportunity reportedly does not derail habit (Lally 2010, secondary); fresh starts after landmarks (Dai 2014 [V]). Same choice as openGym's sequence scheduling (comparison only).
- **Challenges:** no calendar means no built-in time cue; habits need consistent context (Kaushal & Rhodes 2015 consistency β = .21 [V]; Gardner 2012 [NR]); a sequence without dates can drift without urgency; slack without any cost may be used up (Sharif & Shu 2017 [V]).
- **Strength:** moderate-to-strong for the principle (flexibility, no punishment, warm return); weak for the exact mechanism.
- **Suggested tweak:** pair the sequence with an optional user-chosen time/place plan (action planning, Howlett 2019 [V]) and a "welcome back" acknowledgement after a miss; use the weekly frequency as a soft target shown at check-ins, not as debt.

### 6. Credit for approved shorter versions; no credit for unapproved removal; partial workout saved as activity
- **Supports:** emergency reserves improve goal preference and persistence (Sharif & Shu 2017, 2021 [V]); ability to repair a streak softens the broken-streak drop (Silverman & Barasch 2023 [V]); low complexity and consistency drive habit (Kaushal & Rhodes 2015 [V]); returning after a miss is the highest-value moment (Milkman 2021 [V]); range goals ("do 10-20 minutes") may support re-engagement after failure (Scott & Nowlis 2013 [NR], https://scholar.google.com/scholar?q=%22The+Effect+of+Goal+Specificity+on+Consumer+Goal+Reengagement%22).
- **Challenges:** slack worked when it had a **cost**; unlimited free shorter versions might become the norm and lower training dose (inference from Sharif & Shu); "no credit" for partial work could feel punitive and trigger what-the-hell responses (theory only [NR]). Saving partial workouts as activity mitigates this.
- **Strength:** moderate for the principle; weak for the specific credit rules.
- **Suggested tweak:** cap approved shorter versions per chapter (e.g., a visible small reserve); show partial workouts positively in history ("12 minutes saved").

### 7. End-of-chapter review/check-in suggesting frequency changes (user accepts or declines)
- **Supports:** review of behaviour goals combined with self-monitoring is among the most effective BCT combinations (Michie 2009 [V]); feedback and review appear in effective long-term interventions (Samdal 2017 [NR]); accept/decline respects autonomy (SDT: Teixeira 2012 [NR], Ntoumanis 2021 [NR]); supportive accountability model (Mohr 2011 [NR]); chapter starts are fresh-start moments (Dai 2014 [V]).
- **Challenges:** a two-week cadence misses the first-week dropout window (Pratap 2020 [V]); a suggestion to lower frequency may read as failure; fixed-schedule reviews are less responsive than JITAI-style triggers (Nahum-Shani 2018 [NR]; Klasnja 2019 [V]).
- **Strength:** moderate for "review goals" as a technique; weak for the cadence and wording.
- **Suggested tweak:** add a light first check-in after the first 3 workouts or 7 days; frame frequency-down as "fit the plan to your weeks", and frequency-up as an option, not a reward.

---

## Gaps / open questions for Delva user research

- Where exactly do Delva users drop out: before the first workout (camera set-up, permissions, space), after workout 1-2, or at chapter boundaries? Instrument and plot attrition curves (Eysenbach-style) from day 0.
- Does camera set-up friction and the need for floor space cause early dropout? No evidence found on vision-based home fitness onboarding.
- How do users understand "14 active days" vs "work done"? Do early finishers feel held back?
- How often do users take approved shorter versions, and does use creep up over time? Does a visible cap feel fair?
- How do users react to a check-in suggesting fewer days: relief or failure? Test wording.
- Do users want streaks at all? Test weekly consistency vs no streak vs daily streak (expect daily to conflict with 3-5 day plans).
- Do real-time form scores and rep counts reduce enjoyment for some segments (Etkin-type risk), especially beginners and older users? Offer a "less feedback" mode and measure.
- Notification timing: run a micro-randomised trial on reminder timing/content once the user base allows.
- Do users anchor workouts to a time/place if asked (action planning), and does it raise completion?
- Does self-selected 5 days/week predict more or less dropout than 3 days? Collect at onboarding and follow.
- Segment differences by age (18-64), gender and level; none of the evidence above was stratified for a home bodyweight program.
- Verify before publishing: Dishman 50%/6 months; Lally's "missed one opportunity" wording; Mazeas published main effect; Perri 2002, Jakicic 1999, Trost 2002 details; McEwan/Epton effect sizes; BCTTv1 and BCT Ontology terms of use; all citation counts.

---

## Source list

Verified this session [V] (checked 2026-11-07; citation counts not verified):
1. Pratap A et al. 2020. npj Digit Med 3:21. https://doi.org/10.1038/s41746-020-0224-8 ; https://doaj.org/article/86d1232336c940b38797a6044e476fd1 ; https://arxiv.org/pdf/1910.01165
2. Meyerowitz-Katz G et al. 2020. JMIR 22(9):e20283. https://www.jmir.org/2020/9/e20283 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC7556375 ; https://doaj.org/article/b1cdec8a68334f54bdd86b3086efa634
3. Milkman KL et al. 2021. Nature 600:478-483 (pages NR). https://doi.org/10.1038/s41586-021-04128-4 ; https://authors.library.caltech.edu/records/mys88-cc756 ; https://www.cmu.edu/dietrich/news/news-stories/2021/megastudy-exercise.html ; https://weforum.org/stories/2022/01/science-fitness-goal-motivation (secondary)
4. Beshears J, Lee HN, Milkman KL, Mislavsky R, Wisdom J. 2021. Management Science 67(7):4139-4171. https://doi.org/10.1287/mnsc.2020.3706 ; https://www.socialscienceregistry.org/trials/3471 ; https://static1.squarespace.com/static/5353b838e4b0e68461b517cf/t/5faabd2e420aac6e8253ef5e/1605025072088/creating-exercise-habits.pdf
5. Silverman J, Barasch A. 2023. J Consumer Research 49(6):1095-1117. https://doi.org/10.1093/jcr/ucac029 ; https://www.colorado.edu/business/faculty-research/2023/04/19/or-track-how-broken-streaks-affect-consumer-decisions ; https://udspace.udel.edu/items/42ce576b-8e1f-429a-8541-e29e48dbcfbb ; https://www.psychologytoday.com/us/blog/ulterior-motives/202306/how-broken-streaks-sap-motivation (secondary)
6. Sharif MA, Shu SB. 2017. J Marketing Research 54(3), doi 10.1509/jmr.15.0231. https://www.econbiz.de/Record/the-benefits-of-emergency-reserves-greater-preference-and-persistence-for-goals-that-have-slack-with-a-cost-sharif-marissa/10011697492 ; https://anderson-review.ucla.edu/emergency-reserves/ ; working paper https://marketing.wharton.upenn.edu/wp-content/uploads/2016/10/Designing-More-Effective-Goals-by-Using-Emergency-Reserves-A-Field-Experiment.pdf
7. Sharif MA, Shu SB. 2021. OBHDP 163:17-29. https://ideas.repec.org/a/eee/jobhdp/v163y2021icp17-29.html
8. Dai H, Milkman KL, Riis J. 2014. Management Science 60(10):2563-2582. https://faculty.wharton.upenn.edu/wp-content/uploads/2014/06/Dai_Fresh_Start_2014_Mgmt_Sci.pdf ; https://econpapers.repec.org/RePEc:inm:ormnsc:v:60:y:2014:i:10:p:2563-2582
9. Lally P et al. 2010. Eur J Soc Psychol 40(6):998-1009. https://doi.org/10.1002/ejsp.674 ; https://bps.org.uk/research-digest/how-form-habit ; https://www.thebehavioralscientist.com/articles/how-long-to-form-a-habit (secondary); https://jamesclear.com/new-habit (secondary)
10. Singh B et al. 2024. Healthcare. https://pubmed.ncbi.nlm.nih.gov/39685110/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC11641623/
11. Kaushal N, Rhodes RE. 2015. J Behav Med 38(4):652-663. https://pubmed.ncbi.nlm.nih.gov/25851609/ ; https://www.uvic.ca/research/labs/bmed/assets/docs/Kaushal,%20Rhodes,%202015.pdf
12. Howlett N et al. 2019. Transl Behav Med 9(1):147-157. https://uhra.herts.ac.uk/handle/2299/20185
13. Michie S et al. 2009. Health Psychol 28(6):690-701. https://pubmed.ncbi.nlm.nih.gov/19916637/
14. Laranjo L et al. 2021. Br J Sports Med 55(8):422-432. https://bjsm.bmj.com/content/55/8/422.full ; https://blogs.bmj.com/bjsm/2021/01/26/do-smartphone-applications-and-activity-trackers-increase-physical-activity-in-adults/
15. Mazeas A et al. 2022. JMIR 24(1):e26779. https://jmir.org/2022/1/e26779 ; https://doaj.org/article/9754f1fd9dd84266b5e5a30336858ad8
16. Patel MS et al. 2019. JAMA Intern Med (STEP UP). https://pubmed.ncbi.nlm.nih.gov/31498375/ ; https://clinicaltrials.gov/study/NCT03311230 ; https://www.pennmedicine.org/news/news-releases/2019/september/using-a-wearable-device-to-exercise-more-add-competition-to-improve-your-results
17. Klasnja P et al. 2019. Ann Behav Med 53(6):573-582. https://pubmed.ncbi.nlm.nih.gov/30192907/ ; https://pmc.ncbi.nlm.nih.gov/articles/PMC6401341
18. Hardeman W et al. 2019. IJBNPA 16:31. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6448257/ ; https://ijbnpa.biomedcentral.com/counter/pdf/10.1186/s12966-019-0792-7.pdf
19. Xu & Smit 2023. Digital Health (JITAI meta-analysis). https://dare.uva.nl/id/4c8814cc-b448-46e0-87b1-30ef52385731

Not re-verified this session [NR] (from prior knowledge; DOIs not resolved here; check before citing figures):
20. Eysenbach G. 2005. The Law of Attrition. JMIR 7(1):e11. https://doi.org/10.2196/jmir.7.1.e11 (foundational)
21. Nahum-Shani I et al. 2018. Ann Behav Med 52(6):446-462. https://doi.org/10.1007/s12160-016-9830-8
22. Michie S et al. 2013. BCT Taxonomy v1. Ann Behav Med 46(1):81-95. https://doi.org/10.1007/s12160-013-9486-6
23. Marques MM et al. BCT Ontology (Wellcome Open Research). https://scholar.google.com/scholar?q=%22Behaviour+Change+Technique+Ontology%22+Marques+Wellcome+Open+Research
24. McEwan D et al. 2016. Health Psychol Rev 10(1):67-88. https://doi.org/10.1080/17437199.2015.1104258
25. Epton T, Currie S, Armitage CJ. 2017. J Consult Clin Psychol 85(12):1182-1198. https://doi.org/10.1037/ccp0000223
26. Bandura A, Schunk DH. 1981. JPSP 41(3):586-598. https://doi.org/10.1037/0022-3514.41.3.586 (foundational)
27. Kivetz R, Urminsky O, Zheng Y. 2006. JMR 43(1):39-58. https://doi.org/10.1509/jmkr.43.1.39 (foundational)
28. Amir O, Ariely D. 2008. J Exp Psychol Learn Mem Cogn 34(5):1158-1171. https://doi.org/10.1037/0278-7393.34.5.1158
29. Bonezzi A, Brendl CM, De Angelis M. 2011. Psychol Sci. https://scholar.google.com/scholar?q=Bonezzi+Brendl+De+Angelis+%22Stuck+in+the+middle%22+psychophysics+goal+pursuit
30. Mohr DC, Cuijpers P, Lehman K. 2011. JMIR 13(1):e30. https://doi.org/10.2196/jmir.1602
31. Samdal GB et al. 2017. IJBNPA 14:42. https://doi.org/10.1186/s12966-017-0494-y
32. Direito A et al. 2017. Ann Behav Med 51(2):226-239. https://doi.org/10.1007/s12160-016-9846-0
33. Romeo A et al. 2019. JMIR 21(3):e12053. https://doi.org/10.2196/12053
34. Olander EK et al. 2013. IJBNPA 10:29. https://doi.org/10.1186/1479-5868-10-29
35. Teixeira PJ et al. 2012. IJBNPA 9:78. https://doi.org/10.1186/1479-5868-9-78
36. Ntoumanis N et al. 2021. Health Psychol Rev 15(2):214-244. https://doi.org/10.1080/17437199.2020.1718529
37. Deci EL, Koestner R, Ryan RM. 1999. Psychol Bull 125(6):627-668. https://doi.org/10.1037/0033-2909.125.6.627 (foundational)
38. Phillips LA, Gardner B. 2016. Health Psychol 35(1):69-77. https://doi.org/10.1037/hea0000249
39. Gardner B, Lally P, Wardle J. 2012. Br J Gen Pract 62(605):664-666. https://doi.org/10.3399/bjgp12X659466
40. Stawarz K, Cox AL, Blandford A. 2015. CHI. https://scholar.google.com/scholar?q=%22Beyond+Self-Tracking+and+Reminders%22+Stawarz+CHI+2015
41. Renfree I et al. 2016. CHI EA. https://scholar.google.com/scholar?q=%22Don%27t+Kick+the+Habit%22+dependency+habit+formation+apps
42. Etkin J. 2016. J Consumer Research. https://scholar.google.com/scholar?q=Etkin+%22The+Hidden+Cost+of+Personal+Quantification%22
43. Scott ML, Nowlis SM. 2013. J Consumer Research. https://scholar.google.com/scholar?q=%22The+Effect+of+Goal+Specificity+on+Consumer+Goal+Reengagement%22
44. Trost SG et al. 2002. Med Sci Sports Exerc 34(12):1996-2001. https://doi.org/10.1097/00005768-200212000-00020 (foundational)
45. Perri MG et al. 2002. Health Psychol 21(5):452-458. https://doi.org/10.1037/0278-6133.21.5.452
46. Jakicic JM et al. 1999. JAMA 282(16):1554-1560. https://doi.org/10.1001/jama.282.16.1554
47. Dishman RK (ed.). 1988. Exercise Adherence: Its Impact on Public Health. https://scholar.google.com/scholar?q=Dishman+1988+exercise+adherence+impact+on+public+health (foundational; the "50% in 6 months" figure NOT verified)
48. Cochran W, Tesser A. 1996. "What the hell" effect. https://scholar.google.com/scholar?q=Cochran+Tesser+1996+%22what+the+hell%22+effect+goal+proximity (foundational; not verified)
49. McNamara JM, Stearne DJ. 2010. J Strength Cond Res. https://pubmed.ncbi.nlm.nih.gov/?term=McNamara+Stearne+flexible+nonlinear+periodization
