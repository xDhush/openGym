# R-C: first pass, area C (repetition counting and hold timing)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:10 UTC |
| Output | [02-notes/first-pass/C_rep_counting.md](../../02-notes/first-pass/C_rep_counting.md) |
| Checked later by | V1 (papers, licences, claims) and V5 (repository metadata) |

## Prompt sent by the coordinator (verbatim)

````text
Research automatic repetition counting and timed-hold detection for exercise (Area C of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera; (2) real-time audio feedback during exercise; (3) automatic rep counting and hold timing (e.g., planks); (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available, and each group gets a curated program. Spec (29 Oct 2026): five programs by purpose (First Steps, All Round, Build Strength, Go Further, Move Freely); each content cell = program x level (beginner/intermediate/advanced) x 3/4/5 days a week; no equipment; adults 18-64; 15-20 min sessions with warm-up, main work, cool-down; programs last >=8 weeks in 4 chapters of ~2 weeks of work; a chapter ends only when its work is done AND >=14 active days have passed (paused days don't count); missed workouts never become debt (sequence, not calendar); approved shorter versions earn credit, unapproved removal of required work doesn't, partial workouts are saved as activity; end-of-chapter check-in suggests frequency changes the user accepts/declines; no promises of weight loss, rehab, perfect technique or results by a deadline. Delva will reuse ideas, not copy code; licences matter for (a) whether a library/model/dataset could be used directly in a commercial app and (b) red flags. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0, 20,026 stars, last push 2026-11-06, checked 2026-11-07) was already analysed: do not re-analyse it; mention only as a comparison point. Note: rep counts feed Delva's credit rules (a workout's required work is "done" or "partial"), so counting errors directly affect chapter progress.

Objective: Compare class-agnostic video repetition counting, pose-signal methods, and wearable/IMU methods; explain how to handle partial reps, alternating unilateral moves, tempo variation and start/stop of timed holds; and list standard accuracy metrics and benchmark datasets with licences.

Key questions:
- Class-agnostic video counting: verify RepNet ("Counting Out Time: Class Agnostic Video Repetition Counting in the Wild", Dwibedi et al., CVPR 2020) and the Countix dataset (source videos, licence), and the code location/licence (google-research repo); TransRAC and the RepCount dataset (Hu et al., CVPR 2022; licence); "Repetitive Activity Counting by Sight and Sound" (Zhang et al., CVPR 2021, Countix-AV); UCFRep; "Full Resolution Repetition Counting" (2023); "Every Shot Counts" / ESCounts (ACCV 2024); PoseRAC (pose saliency; check if peer-reviewed); OVR / open-vocabulary repetition counting (Dwibedi et al., 2024 — check venue); any 2025-2026 state of the art. Can any run in real time on a phone?
- Pose-signal methods: keypoint/joint-angle time series with peak detection, finite-state machines with hysteresis thresholds, k-NN pose classification (e.g., MediaPipe's / ML Kit's documented pose-classification-and-rep-counting approach); reported accuracy.
- Wearables/IMU: MM-Fit (Stromback et al., IMWUT 2020), RecoFit (Morris et al., CHI 2014 — foundational), later IMWUT/sensor papers; how accuracy compares with vision; what this implies if Delva later adds watch support.
- Handling partial reps (range-of-motion thresholds, what counts as a rep), alternating unilateral moves (lunges, dead bugs, bird dogs, mountain climbers — count per side or per pair?), tempo/slow reps, pauses, and start/stop detection for timed holds (plank, side plank, wall sit) including grace periods for brief form breaks.
- Standard metrics (MAE / normalised MAE, off-by-one accuracy OBO, RMSE, exact-match accuracy) and benchmark datasets: sizes, exercise coverage, licences, and whether fitness-specific.
- What do commercial apps publicly document about rep counting accuracy (label as industry practice)?

Suggested sources:
- CVPR/ICCV/ECCV/NeurIPS/ACCV/WACV papers, project pages and GitHub repos; IMWUT/CHI/Sensors papers on IMU rep counting; official MediaPipe / ML Kit docs and samples
- Dataset licence pages

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every number. Repos: generally >=1,000 GitHub stars OR maintained by a major company/academic lab with a peer-reviewed paper; state the reason for any exception (e.g., official code of a key paper). Active in the last 18 months (pushed since May 2025) or explicitly label "archived but influential". Must have a licence file; no licence = all rights reserved, flag it. For every repo report: stars, last commit/push date, number of contributors, organisation, licence, date checked. Check licences SEPARATELY for code, model weights and datasets (they often differ); flag non-commercial, research-only, copyleft (GPL/AGPL), and custom licences. Papers: peer-reviewed in reputable venues (CV: CVPR, ICCV, ECCV, NeurIPS, WACV; HCI/ubicomp: CHI, IMWUT/UbiComp, CSCW; health/sport: JMIR, BJSM, Sports Medicine, MSSE, IJBNPA and similar reputable journals; official guidelines). For health claims prefer systematic reviews, meta-analyses, RCTs. Preprints only if highly cited, and label them "preprint". Report citation counts (Google Scholar or Semantic Scholar) with date checked and which source; if you cannot retrieve a count, write "citation count not verified". Prefer 2019-2026; older foundational work is OK if labelled "foundational". Never invent a repo, paper, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as strong evidence / weak evidence / opinion-or-industry practice (public docs of commercial apps = industry practice). Exclude SEO blogs, vendor marketing, abandoned forks, tutorial repos without substance, and anything not traceable to a primary source. Quality over quantity: the 5-10 best items (you may briefly list "also considered" items with the reason for exclusion).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages. For GitHub repo metadata this works: gh api -X GET search/repositories -f q='repo:OWNER/NAME' --jq '.items[0] | {full_name, stargazers_count, pushed_at, archived, license: .license.spdx_id, owner: .owner.login}' (use gh only for search endpoints like this). For contributor counts, WebFetch https://github.com/OWNER/NAME and read the Contributors count; if unavailable write "not verified". For citation counts, try WebFetch on https://api.semanticscholar.org/graph/v1/paper/search?query=...&fields=title,year,venue,citationCount or the Semantic Scholar/Google Scholar web pages; if blocked, write "citation count not verified".
- Notes format: for each item give: name and link | type (repo, paper, dataset) | what it is | why it matters for Delva (name the feature or spec rule) | credibility evidence (with date checked) | licence and commercial-use implications (code vs weights vs data) | key ideas to borrow | limitations. Then sections: "Methods compared (video vs pose-signal vs wearable)", "Partial reps, unilateral moves, tempo, holds", "Metrics and benchmarks", "Licence red flags", "Gaps / open questions for Delva user research", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/C_rep_counting.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
The Area C notes are written, but several checks are incomplete. Citation counts and contributor counts are "not verified" for every item, and the Countix, OVR, MediaPipe pose weights and ML Kit SDK licences could not be confirmed. Three hosts are blocked by the network policy (sites.google.com, developers.google.com, api.semanticscholar.org), and the shared web-search budget (200 calls) ran out partway through. All numbers are recorded as checked 2026-11-07.

**Main findings**
- **What to build:** the only method documented as real-time on a phone is pose-based. That means on-device pose (MediaPipe / ML Kit, Apache-2.0 code), then 2 key poses per exercise (PoseRAC, preprint: MAE 0.236 / OBO 0.560 on RepCount, about 10x faster than TransRAC), then a counter with separate enter and exit thresholds. The exact Google sample values are: enter 6/10, exit 4/10, k-NN top-K of 30 and 10, smoothing window 10 with alpha 0.2, and no published accuracy.
- **Class-agnostic video models** (RepNet CVPR 2020, TransRAC CVPR 2022, ESCounts ACCV 2024, CountLLM CVPR 2025, OVR preprint): none of their sources documents phone real-time use. Their weights and data licences are unclear. Comparing them across papers is unreliable: the RepNet authors' 2024 note says other papers reported a modified model as "RepNet".
- **Independent accuracy:** the only peer-reviewed test of phone-camera counting found is Oliosi et al., JMIR mHealth 2026 (44 participants). It reports about a 61% detection rate and an MAE of 1.08 to 1.11 reps on trials of about 5 reps, with large differences depending on where the phone is placed (180-200 cm, diagonal or front, worked best). Because counts feed Delva's credit rules, this is a direct risk to chapter progress: counting needs to be forgiving and users need a quick way to correct a count.
- **Watches:** RecoFit (CHI 2014, foundational) counts within ±1 rep 93% of the time. Garmin's manuals say leg exercises may not be counted, so a watch is a weak fit for a no-equipment program heavy on lower-body and floor moves. The RecoFit dataset from Microsoft (archived) is under CDLA-Permissive-2.0, the only clearly commercial-friendly fitness rep dataset found. MM-Fit (IMWUT 2020: 10 exercises, 5 devices, 800+ minutes) has no dataset licence, so all rights are reserved.
- **Licence red flags:**
  - TransRAC's code licence is Apache-2.0 plus a custom "Anti 996" licence with extra obligations.
  - Sight and Sound and the unofficial RepNet ports have no licence at all.
  - RepCount, MM-Fit, Countix and OVR have no data licence that I could confirm.
  - Most model weights are on Google Drive or OneDrive with no licence statement.
- **Commercial apps:** Garmin and Peloton document how counting works (a count appears after 4-6 reps, reps can be edited after each set, Peloton times plank holds) but publish no accuracy figures.
- **Partial reps, alternating moves, tempo and holds:** no validated standard exists. The notes propose design rules, labelled as opinion: "full / partial / none" reps judged on range of motion, one counter per side for alternating moves, minimum and maximum timing for slow reps, and a hold timer that pauses after a 2-3 s grace period. These still need user testing.

**Not done**
- Commercial documentation from Apple, Samsung, Tempo, Tonal, Kemtai and Sency was not checked.
- CountLLM's numbers, the sizes of UCFRep and Countix-AV, MM-Fit's rep-counting numbers and research on timing holds such as planks were not retrieved.
- A follow-up pass needs those three hosts allowed in the session's network settings, plus a fresh search budget.

Files are in /home/user/openGym/research_notes/Vision guided home fitness evidence:
- C_rep_counting.md
````

## What changed afterwards

V1 found that PoseRAC (ICONIP 2024), Full Resolution Repetition Counting (ICIRA 2023) and others are now peer-reviewed; confirmed CountLLM (MAE 0.162, OBO 0.639), UCFRep (526 videos) and the Countix test set (2,719); confirmed the ML Kit sample thresholds in code; and found that the Oliosi 2026 study used MoveNet with phones flat on the floor in a lab. RecoFit's "within ±1 rep 93%" stayed unverified. See [V1_verify_ABC.md](../../02-notes/verification/V1_verify_ABC.md).
