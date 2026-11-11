# W: report writer

| Field | Value |
|---|---|
| Phase | 3, synthesis (one writer) |
| Launched | 2026-11-07, about 08:51 UTC |
| Finished | 2026-11-07, about 09:14 UTC |
| Output | [01-report/report.md](../../01-report/report.md), drafted in six parts kept in [01-report/drafts/](../../01-report/drafts/) |
| Inputs | All 15 notes files in 02-notes |

## Prompt sent by the coordinator (verbatim)

````text
Read the notes in /home/user/openGym/research_notes/Vision guided home fitness evidence/ and synthesize into a research report that answers: For Delva, a commercial mobile fitness app in development (vision-based form tracking through the phone camera; real-time audio feedback; automatic rep counting and hold timing; semi-personalised programs where users are grouped by age, gender, fitness level, goal and days available; spec of 29 Oct 2026: five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely), each content cell = program x starting level (beginner/intermediate/advanced) x 3, 4 or 5 days a week; no equipment; adults 18-64; sessions of about 15-20 minutes with warm-up, main work and cool-down; programs of at least 8 weeks in 4 chapters of about two weeks of work; a chapter ends only when its work is done AND at least 14 active days have passed (paused days don't count); missed workouts never become debt, the plan is a sequence not a calendar; an approved shorter version earns credit, removing required work without approval does not, a partial workout is saved as activity; an end-of-chapter check-in suggests frequency changes the user accepts or declines; no promises of weight loss, rehabilitation, perfect technique or results by a deadline), what are the most credible and popular open-source repositories and the most relevant research papers in each of these areas, and what concretely can Delva learn from each: A. real-time pose estimation on phones; B. exercise form assessment and error detection; C. repetition counting and hold timing; D. real-time (audio) feedback design and motor learning; E. personalisation and user grouping (including whether age/gender should change prescription, recommendation approaches, fairness); F. program design for novices and bodyweight progression; G. adherence, missed sessions and program structure; H. exercise libraries, taxonomies and content curation; I. safety and screening; J. privacy of camera and health data; K. comparable open-source fitness projects (other than openGym). Delva reuses ideas, not code, so licences matter for (a) whether a library, model or dataset could ever be used directly in a commercial app and (b) red flags. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0, 20,026 stars, last push 2026-11-06, checked 2026-11-07) was already analysed by the user: do not re-analyse it; mention it only as a comparison point for credibility and popularity.

Required output structure (follow it exactly):
1. Executive summary (about one page): key findings per area A-K, and a "top 10 must-reads" list across all areas.
2. One section per area (A to K; H and K may be separate sections even though the notes combine them), each with a table whose columns are: name and link | type (repo, paper, dataset, guideline, SDK, law/policy) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence | licence and commercial-use implications | key ideas to borrow | limitations. At most 5-10 items per area. For repositories the credibility evidence must give stars, last commit date, contributors, organisation, licence and date checked. For papers give venue, design (SR/MA/RCT etc.), peer-reviewed vs preprint, and citation counts with source and date. Below each table, short prose: evidence-strength labels (strong evidence / weak evidence / opinion or industry practice) and the area's key takeaways for Delva.
3. Licence red flags: everything Delva must not use directly in a commercial app, and why (separate code, model weights, datasets, media, questionnaires).
4. Evidence that challenges or supports Delva's current decisions, each with a verdict and evidence strength: the 8-week minimum and four chapters; 14 active days per chapter; the 3/4/5-day starting frequencies; 15-20 minute sessions; grouping by age and gender; sequence-based handling of missed workouts. (You may add credit for approved shorter versions and chapter check-ins.)
5. Gaps: where no credible source exists, and open questions Delva must answer with its own user research.
6. Full bibliography with links and access dates.
Also include near the top a short "Scope, assumptions and method" note: no clarifying questions were asked; assumed launch markets EU/EEA, UK and US; date checked 2026-11-07; citation counts are Crossref cited-by and Semantic Scholar counts (Google Scholar was not reachable), labelled by source; GitHub contributor counts are distinct commit-author emails from git history (GitHub's contributor pages were not reachable), labelled as approximations; some primary sources (several legal texts and publisher pages) could not be reached and are marked as unverified rather than asserted; this is research, not legal or medical advice.

How to use the notes: the files A_*, B_*, C_*, D_*, E_*, F_*, G_*, HK_*, I_*, J_* are first-pass research notes. The files V1_verify_ABC.md, V2_verify_DE.md, V3_verify_FG.md, V4_verify_IJ.md and V5_verify_repos_HK.md are a later verification pass against primary sources. Read the V files first. Where a V file conflicts with a first-pass note, the V file wins: use CORRECTED values, drop claims marked NOT FOUND, and present STILL UNVERIFIED claims only with an explicit "unverified" label (or leave them out). Take citation counts from the V files and repository metadata (stars, last commit, contributors, licences) from V5. Never add a source, number or quote that is not in the notes. Separate strong evidence, weak evidence and opinion/industry practice throughout. Write in plain, direct English and do not use em dashes. The notes are long (about 110,000 words in total), so read them in parts.

Earlier research in this conversation to build on: none

Save your final report to this exact path: /home/user/openGym/reports/Vision guided home fitness evidence.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/report-writer.md for instructions on how to write your research report.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. The report it describes is now [01-report/report.md](../../01-report/report.md).

````text
I've written the report and saved it to `/home/user/openGym/reports/Vision guided home fitness evidence.md` (about 23,600 words). It follows your structure in order. A title and a one-paragraph summary come first, then the scope, assumptions and method note, then sections 1 to 6 as specified. Areas H and K have separate sections, and every area runs in A-to-K order. I checked that every table has the same number of columns in each row, and the file has no em dashes.

What's in the report:
- **Area tables:** each area has the 8 columns you asked for and 10 items (Areas I and J have 9). Repositories list stars, last commit date, approximate contributor count, owner and licence, all checked on 2026-11-07. Papers list venue, design, whether peer-reviewed or preprint, and citation counts from Crossref and Semantic Scholar. Each table is followed by an evidence-strength paragraph and the takeaways for Delva.
- **Verification-pass corrections:** where the later verification notes disagreed with the first-pass notes, I used the verified values. Claims the verification could not find were dropped. Claims it could not confirm are kept only with an explicit "unverified" label. Examples:
  - The phone counting study used MoveNet.
  - Six papers listed as preprints are now peer-reviewed.
  - The headline figure for one form-error dataset comes from a single-subject side experiment.
  - Dataset terms for EgoExo-Fitness and Fitness-AQA explicitly forbid commercial use.
  - The ACSM 2026 statement says bodyweight training was never studied on its own.
- **Unverified items:** the EDPB, ICO, BIPA, Washington health-data law, FTC rule and Texas biometric law texts could not be reached. The same goes for the PAR-Q+ and CSEP questionnaire licences and the "93% within one rep" accuracy figure for a wrist-sensor rep counter (RecoFit). All are marked unverified.
- **Bibliography:** 161 numbered entries grouped by area, each with links and an access date of 2026-11-07. I removed author initials and paper titles that weren't in the notes, so nothing was added from outside them.

Verdicts on Delva's spec decisions:
- **8-week minimum in four chapters:** supported as a reasonable first block (weak to moderate evidence). It sits inside the ACSM 2026 evidence base, which only included programs of at least 6 weeks and 12 sessions. The catch is that median retention in app studies is 5.5 days, so chapter 1 needs day-scale milestones.
- **14 active days per chapter:** untested and neutral. It is a pacing rule rather than something physiology requires (weak evidence, mostly opinion).
- **3, 4 or 5 starting days a week:** supported. The evidence is strong that at least two days a week and total weekly volume are what matter. It is weak for this exact menu.
- **15-20 minute sessions:** supported for strength and health benefits. They do not meet the 150-minute aerobic guideline on their own: five 20-minute sessions make 100 minutes. Both points rest on strong evidence.
- **Grouping by age and gender:** challenged, on strong evidence. Women and men make similar relative gains, and WHO gives one recommendation for all adults 18-64. Using demographics as stand-ins for ability also creates bias, inclusion and legal risk. The spec's content cells don't use age or gender anyway.
- **Missed workouts never become debt:** supported. Evidence for the principle is moderate to strong: flexible scheduling beat fixed time slots, and rewarding a return after a missed workout was the best of 54 tested interventions.
- **Credit for approved shorter versions:** supported in principle. The report suggests a small visible allowance per chapter and never letting the camera be the only judge of "done".
- **End-of-chapter check-ins:** supported. The report suggests adding an earlier light check-in after the first week.

Main findings by area:
- **A (pose estimation):** MediaPipe Pose Landmarker is the only option that works on both iOS and Android, is Apache-2.0 for code and weights, and has heel and toe points. Accuracy is fine for side-view angles but poor for knee valgus, which correlates at only r = 0.20 with 3D capture. Silence on low-confidence frames decides whether angles are usable at all.
- **B (form assessment):** no dataset with form-error labels can be used commercially. General vision-language models judge form barely above chance. False alarms erode trust more than misses do.
- **C (rep counting):** the only peer-reviewed phone study found an error of about one rep on five-rep sets.
- **D (feedback and motor learning):** feedback after every rep helps effort within a session. The textbook rules for rationing feedback shrink to small or no effect once publication bias is corrected for.
- **J (privacy):** pose data used only for form feedback is not GDPR "special category" biometric data unless it is used to identify someone. Check-ins, screening answers and the workout log are likely health data.

The report's top 10 must-reads:
1. The BlazePose GHUM 3D model card.
2. Oliosi et al. 2026.
3. Google's pose-classification guide with its sample repetition-counter code.
4. Biebl et al. 2021.
5. Weakley et al. 2023.
6. Roberts et al. 2020 with Refalo et al. 2025.
7. The ACSM 2026 Position Stand.
8. Milkman et al. 2021.
9. Riebe et al. 2015 with Whitfield et al. 2017.
10. GDPR read with the C-21/23 court judgment.
````
