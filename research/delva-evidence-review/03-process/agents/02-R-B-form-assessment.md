# R-B: first pass, area B (form assessment and error detection)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:08 UTC |
| Output | [02-notes/first-pass/B_form_assessment.md](../../02-notes/first-pass/B_form_assessment.md) |
| Checked later by | V1 (papers, datasets, licences, claims) and V5 (repository metadata) |

## Prompt sent by the coordinator (verbatim)

````text
Research exercise form assessment and technique-error detection from video/pose (Area B of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters of ~2 weeks of work; a chapter ends only when its work is done AND >=14 active days have passed (paused days don't count); missed workouts never become debt (sequence, not calendar); approved shorter versions earn credit, unapproved removal of required work doesn't, partial workouts are saved as activity; end-of-chapter check-in suggests frequency changes the user accepts/declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code; licences matter for (a) whether a library/model/dataset could be used directly in a commercial app and (b) red flags. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0, 20,026 stars, last push 2026-11-06, checked 2026-11-07) was already analysed: do not re-analyse it; mention only as a comparison point. Exercises of interest: bodyweight squats, lunges, push-ups (and knee/incline regressions), planks, side planks, glute bridges, dead bugs, bird dogs, mountain climbers, jumping jacks, floor mobility moves.

Objective: Determine what works for automated form assessment (rule-based joint-angle thresholds vs learned classifiers vs newer video-language models), which public datasets of correct vs incorrect form exist (with their error labels and licences), what per-exercise error taxonomies exist, and how form feedback is validated, including the cost of false positives on user trust.

Key questions:
- Rule-based joint-angle thresholds vs learned classifiers (and 2024-2026 VLM/LLM-based coaching): what does the evidence say works, for which exercises and camera views? What accuracy/F1/agreement with experts is reported?
- Public datasets of correct vs incorrect form: verify at least Fitness-AQA (Parmar et al., ECCV 2022, "Domain Knowledge-Informed Self-Supervised Representations for Workout Form Assessment"); Fit3D and AIFit (Fieraru et al., CVPR 2021) and its licence (likely research-only); EC3D ("3D Pose Based Feedback for Physical Exercises", Zhao et al., ACCV 2022); QEVD / "Live Fitness Coaching as a Testbed for Situated Interaction" (Qualcomm, NeurIPS 2024 Datasets & Benchmarks) and its licence; MM-Fit (Stromback et al., IMWUT 2020); rehabilitation datasets UI-PRMD and KIMORE; Pose Trainer (Chen & Yang) — check whether peer-reviewed; and any credible 2024-2026 datasets (e.g., FLEX or other fitness action-quality datasets). For each: size, exercises, error labels, camera views, subjects, licence (code vs data, and whether underlying videos are YouTube/copyrighted).
- Error taxonomies per exercise (knee valgus, hip sag/pike in plank, partial range of motion/insufficient depth, lumbar flexion, heel lift, elbow flare, head/neck position, asymmetry): which are defined in datasets and which in sport-science sources (e.g., NSCA/ACSM technique guidance, reliability studies of movement screens such as FMS or the Landing Error Scoring System, or expert-consensus technique criteria)? Which errors are detectable from a single phone camera and which are not (e.g., frontal-plane errors from a side view)?
- How is form feedback validated (agreement with expert raters: kappa, ICC, precision/recall; user studies of perceived usefulness and learning)? What does HCI/human-factors research say about false positives/false alarms, automation bias and user trust in automated coaching (CHI, IMWUT, CSCW, Human Factors)? Is there evidence on precision-vs-recall trade-offs for feedback (prefer silence over wrong cue)?
- What commercial apps publicly document about their form feedback (label as industry practice only)?

Suggested sources:
- CVPR/ICCV/ECCV/NeurIPS/WACV/ACCV papers and their project pages and GitHub repos (check licences); IMWUT/CHI papers on exercise coaching systems; sport-science reliability studies (J Strength Cond Res, BJSM, Sports Medicine, IJSPT); human-factors literature on alarm/false alarm trust (e.g., cry-wolf effect)
- Dataset licence pages and terms of use

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Repos: generally >=1,000 GitHub stars OR maintained by a major company/academic lab with a peer-reviewed paper; state the reason for any exception (e.g., official code of a key paper). Active in the last 18 months (pushed since May 2025) or explicitly label "archived but influential". Must have a licence file; no licence = all rights reserved, flag it. For every repo report: stars, last commit/push date, number of contributors, organisation, licence, date checked. Check licences SEPARATELY for code, model weights and datasets (they often differ); flag non-commercial, research-only, copyleft (GPL/AGPL), and custom licences. Papers: peer-reviewed in reputable venues (CV: CVPR, ICCV, ECCV, NeurIPS, WACV; HCI/ubicomp: CHI, IMWUT/UbiComp, CSCW; health/sport: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA and similar reputable journals; official guidelines). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a repo, paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice (public docs of commercial apps = industry practice). Exclude SEO blogs, vendor marketing, abandoned forks, tutorial repos without substance, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items (you may briefly list "also considered" items with the reason for exclusion).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For GitHub repo metadata this works: gh api -X GET search/repositories -f q='repo:OWNER/NAME' --jq '.items[0] | {full_name, stargazers_count, pushed_at, archived, license: .license.spdx_id, owner: .owner.login}' (use gh only for search endpoints like this). For contributor counts, WebFetch https://github.com/OWNER/NAME and read the Contributors count; if unavailable write "not verified". For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (repo, paper, dataset, guideline) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (with date checked) | licence and commercial-use implications (code vs weights vs data) | key ideas to borrow | limitations. Then sections: "Error taxonomy per exercise (with sources)", "Rule-based vs learned: verdict", "Validation and false-positive cost", "Licence red flags", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/B_form_assessment.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
## Area B: form assessment and technique-error detection

I wrote the Area B notes, but much of what the brief asks for could not be fully verified. Many hosts were blocked in this session and the shared web-search budget ran out partway through. Facts I verified are tagged [V]. Facts from my prior knowledge that I could not re-check are tagged [PK] and should be checked or dropped. All dates checked are 2026-11-07.

**Not done:**
- **Citation counts:** none could be retrieved. Every item says "citation count not verified".
- **Contributor counts:** the GitHub pages showed none, so every repo says "not verified".
- **Licence texts:** I could not read the Fit3D, QEVD or EgoExo-Fitness licence documents.
- **Not searched at all:** commercial app documentation, NSCA/ACSM technique guidance, exercise-specific CHI/IMWUT trust studies, and studies on how often feedback should be given.

**Hosts to allow before a follow-up pass:** arxiv.org, openaccess.thecvf.com, fit3d.imar.ro, www.qualcomm.com, docs.voxel51.com, pmc.ncbi.nlm.nih.gov, api.semanticscholar.org, and the github.io project pages. The search-budget limit can be raised with CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION.

### Findings
1. **No dataset with error labels can be used commercially as it is.**
   - **Fitness-AQA (ECCV 2022):** "only be used for non-commercial purposes". The videos come from Instagram and YouTube. Back-squat errors are knees inward, knees forward, rounded back, arched back and shallow squat.
   - **EC3D (ACCV 2022):** squats, lunges and planks with 4 subjects; reports 90.9% mistake identification. The repo has no licence file, so all rights are reserved.
   - **Fit3D/AIFit (CVPR 2021):** 611 sequences; licence not read.
   - **QEVD (NeurIPS 2024 D&B):** a dataset card names a "Qualcomm Data Research License". The FitCoach repo is inconsistent: GitHub reports BSD-3-Clause-Clear, but the repo also lists a "Software Evaluation License".
   - **EgoExo-Fitness (ECCV 2024):** code is Apache-2.0; the data needs a signed agreement I could not read.
   - **FLEX (preprint):** weighted exercises, men only, academic use only. Its README has since changed to describe a different dataset ("MyoMechanix").
   - **MM-Fit (IMWUT 2020):** code is MIT, but no data licence is stated and it has no form labels.
   - **UI-PRMD and KIMORE:** rehab datasets with a correct/incorrect label or clinical scores.
   - **Pose Trainer:** GPL-3.0, unmaintained, and not peer-reviewed as far as I could verify.
2. **Rule-based vs learned.** No peer-reviewed head-to-head comparison on bodyweight exercises turned up. The best-supported route for a single phone camera is pose estimation plus a few interpretable checks per exercise, each limited to the camera views that can actually see that error.
   - Learned image features beat a 3D-pose model on Fitness-AQA knees-inward, 95.92% against 89.80%. That figure comes second-hand.
   - Kaia's phone-camera Motion Coach agreed with physiotherapists 0.828 of the time, against 0.833 between physiotherapists (JMIR 2021). It was a small study with Kaia staff as co-authors.
3. **Vision-language models are not ready for live cues.** The QEVD authors call live coaching "largely unsolved". A CVPR 2026 workshop evaluation reports general VLMs unreliable for error detection, though I saw its findings only through a summary.
   - The most relevant new benchmark for Delva is FitAQA (2026 preprint): 2,219 videos across 30 bodyweight exercises with an expert-built error taxonomy. I could not read its results.
4. **Error taxonomy.**
   - Covered by datasets: squat, lunge and plank (EC3D, Fitness-AQA).
   - Covered by screening tools, as rater checklists ([PK] for the test names): the FMS deep squat, in-line lunge, trunk-stability push-up and rotary stability (close to a bird dog), and LESS for jump landings.
   - **No published criteria found** for glute bridges, dead bugs, bird dogs, side planks, mountain climbers or jumping jacks. Delva will need its own expert-consensus criteria.
   - Knee valgus needs a front view. Depth, plank hip sag or pike, and heel lift are the errors a side view handles best. Lumbar rounding and elbow flare are low-confidence from body keypoints alone.
5. **Validation and false positives.**
   - Validate against expert agreement, with expert-to-expert agreement as the ceiling. FMS meta-analyses put pooled inter-rater ICC at 0.81 to 0.84.
   - For live coaching, also score when feedback is given, as QEVD does.
   - Dixon, Wickens and McCarley (Human Factors 2007) found automation false alarms more damaging than misses; a 2014 follow-up qualifies this. Together with the "cry wolf" effect and [PK] motor-learning work showing that less frequent feedback can improve learning, this supports a precision-first rule: stay silent rather than give a wrong cue, and give few cues.
   - I recommend form feedback stay advisory and never affect chapter credit, so detector mistakes cannot cost users progress.

The notes also cover licence red flags and open questions for Delva's user research.

Notes file: /home/user/openGym/research_notes/Vision guided home fitness evidence/B_form_assessment.md
````

## What changed afterwards

V1 corrected the Fitness-AQA figure (95.92% vs 89.80% comes from the single-subject Waseda squat set; averaged over all errors the two methods are about equal), Fit3D's size (37 exercises, 13 subjects), the EC3D author list, and found FitAQA's results (best model 51.2% vs a 41.1% "always correct" baseline). V5 read the licence files: Fitness-AQA data is CC BY-NC 4.0 and the code has no licence; EgoExo-Fitness bans testing commercial systems; FLEX was renamed MyoMechanix and is research-only. See [V1_verify_ABC.md](../../02-notes/verification/V1_verify_ABC.md) and [V5_verify_repos_HK.md](../../02-notes/verification/V5_verify_repos_HK.md).
