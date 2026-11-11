# V1: verification of areas A, B, C (pose, form, counting)

| Field | Value |
|---|---|
| Phase | 2, verification pass (5 tracks in parallel, after the network was widened) |
| Launched | 2026-11-07, about 08:29 UTC |
| Finished | 2026-11-07, about 08:51 UTC (last verification track to finish) |
| Output | [02-notes/verification/V1_verify_ABC.md](../../02-notes/verification/V1_verify_ABC.md) |
| Checks | A_pose_estimation.md, B_form_assessment.md, C_rep_counting.md |

## Prompt sent by the coordinator (verbatim)

````text
Verify the papers, model/dataset licences and key unverified claims in the computer-vision notes (Areas A, B, C) of a research brief.

Objective: A research brief for Delva (a commercial vision-guided home fitness app: phone-camera form tracking, real-time audio feedback, rep counting and hold timing, no equipment, adults 18-64) produced notes in /home/user/openGym/research_notes/Vision guided home fitness evidence/. The first pass had blocked hosts and an exhausted search budget, so many items are tagged unverified ([PK], [NR], "V-excerpt", "not verified", "citation count not verified"). Your job is a focused verification pass on A_pose_estimation.md, B_form_assessment.md and C_rep_counting.md — not new broad research. Read those three files first. GitHub repo metadata (stars, push dates, contributor counts) is handled by a different agent: skip it.

Key questions:
- Citation counts and bibliographic verification for EVERY paper cited in A, B and C (title, venue, year, DOI/arXiv id, peer-reviewed or preprint).
- Priority claim checks (confirm, correct or mark not found):
  - A: Google ML Kit Pose Detection docs (developers.google.com/ml-kit/vision/pose-detection): landmark count, base vs accurate models, speed figures, beta/maintenance status, applicable terms; MediaPipe Pose Landmarker docs (ai.google.dev/edge/mediapipe/solutions/vision/pose_landmarker): models, landmarks, licence; BlazePose arXiv 2006.10204 venue (CVPR 2020 workshop?); RTMPose (arXiv 2303.07399) and RTMO (CVPR 2024) numbers (9-45 ms on Snapdragon 865) and which datasets the released weights were trained on and those datasets' licences; OpenPose licence terms and commercial licence fee; Washabaugh et al. 2022 (open-source pose models vs motion capture in gait) results; the JMIR mHealth camera-positioning / rep-counting field study (Oliosi et al., 2026?) full text: participants, detection rate, MAE, which placements worked; the validation numbers in A (MediaPipe ~19 degree knee-valgus error in a landing task; up to 67 degree error in lifting with trunk movement; 2-8 degree sagittal gait errors; the meta-analysis reporting roughly doubled error on the occluded side — find its authors and link); the Sony AI fairness paper (AAAI-23 workshop) on pose-estimation bias.
  - B: Fitness-AQA (ECCV 2022) dataset licence and the 95.92% vs 89.80% knees-inward figure; EC3D (ACCV 2022) 90.9% mistake identification and subjects; Fit3D/AIFit (CVPR 2021) licence (try fit3d.imar.ro, else the paper); QEVD / "Live Fitness Coaching as a Testbed for Situated Interaction" (NeurIPS 2024 D&B) data licence; EgoExo-Fitness (ECCV 2024) data terms; FitAQA (2026 preprint, 2,219 videos, 30 bodyweight exercises) — find it on arXiv and record results; Kaia Motion Coach JMIR 2021 agreement figures (0.828 vs 0.833) and authors' affiliations; Dixon, Wickens & McCarley 2007 Human Factors (false alarms vs misses); the FMS inter-rater reliability meta-analysis behind "pooled ICC 0.81-0.84"; the CVPR 2026 workshop evaluation of VLMs for exercise error detection.
  - C: RepNet / Countix (CVPR 2020) code and dataset licences; TransRAC (CVPR 2022) code licence (Apache-2.0 plus "Anti 996"?) and RepCount data licence; PoseRAC peer-review status and MAE 0.236 / OBO 0.560; ESCounts (ACCV 2024) numbers; CountLLM (CVPR 2025) numbers; OVR venue/status; RecoFit (CHI 2014) "within +/-1 rep 93%"; MM-Fit (IMWUT 2020) rep-counting numbers and data licence; the Google ML Kit pose-classification sample thresholds (enter 6/10, exit 4/10, k-NN top-K 30 and 10, smoothing window 10, alpha 0.2) from developers.google.com/ml-kit/vision/pose-detection/classifying-poses or the official sample code on github.com.

Suggested sources:
- api.crossref.org, api.semanticscholar.org, export.arxiv.org, eutils.ncbi.nlm.nih.gov, arxiv.org, openaccess.thecvf.com, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, www.jmir.org, mhealth.jmir.org, www.mdpi.com, www.frontiersin.org, journals.plos.org, link.springer.com, ai.google.dev, developers.google.com, github.com, developer.apple.com

Constraints:
- Network: these hosts are now allowed for both curl (Bash) and WebFetch: api.crossref.org, api.semanticscholar.org (rate-limited), export.arxiv.org, eutils.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, arxiv.org, openaccess.thecvf.com, www.jmir.org, mhealth.jmir.org, link.springer.com, bjsm.bmj.com, www.mdpi.com, www.frontiersin.org, journals.plos.org, ai.google.dev, developers.google.com, support.google.com, eur-lex.europa.eu, edpb.europa.eu, ico.org.uk, www.ftc.gov, www.fda.gov, www.ilga.gov, plus github.com, raw.githubusercontent.com, developer.apple.com, developer.android.com. api.openalex.org is allowed but its daily budget is exhausted — don't rely on it. Other hosts are probably blocked. WebSearch may have a small budget: prefer direct fetches of known URLs and API calls.
- Citation counts method: (1) Crossref: curl -s "https://api.crossref.org/works/<DOI>" | jq '.message | {title, "container-title", issued, "is-referenced-by-count"}', or search with https://api.crossref.org/works?query.bibliographic=<url-encoded title>&rows=3&select=DOI,title,container-title,issued,is-referenced-by-count (this also verifies title, venue, year, DOI). (2) Semantic Scholar via ONE batch request: curl -s -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,year,venue,citationCount" -H 'Content-Type: application/json' -d '{"ids":["DOI:10.xxxx/yyy","ARXIV:2006.10204"]}' — on HTTP 429, wait 15-30 s and retry, up to 6 attempts; if it never succeeds, say so. Label each count by source and date ("Crossref cited-by, 2026-11-07" / "Semantic Scholar, 2026-11-07"). Never estimate a count. Do not put any email address in API requests.
- Today is 2026-11-07. Never invent a paper, number, licence or quote; every verdict needs a primary-source URL. If you cannot verify something, say "STILL UNVERIFIED" and why. Do not edit the original notes files.
- Output format (this overrides the researcher.md notes template where they differ). Keep it concise, mostly tables, under about 6,000 words: (1) Citation table: short ref | DOI or arXiv id | verified title/venue/year (yes / corrected: ...) | peer-reviewed or preprint | Crossref cited-by | Semantic Scholar count | notes file. (2) Claim checks: claim (brief quote of the notes' wording) | notes file | verdict: CONFIRMED / CORRECTED (give the correct value) / NOT FOUND (recommend dropping) / STILL UNVERIFIED | primary-source URL. (3) Licence findings for models, weights and datasets (code vs weights vs data; commercial use yes/no/unclear). (4) New facts that close gaps listed in the notes, each with a link and an evidence label (strong / weak / industry practice).

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/V1_verify_ABC.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I verified the papers, licences and priority claims in Areas A, B and C and saved the results to `/home/user/openGym/research_notes/Vision guided home fitness evidence/V1_verify_ABC.md` (about 5,900 words, mostly tables). The original notes files were not edited.

The file has four parts:
1. **Citation table:** about 85 papers, each with verified bibliographic details and peer-reviewed or preprint status.
   - Crossref cited-by counts are given for every paper that has a DOI.
   - Semantic Scholar counts are given for all but six papers: Washabaugh, Haberkamp, EgoExo-Fitness, UCFRep, MyoMechanix and the Sony paper. For those, Semantic Scholar returned nothing or kept rate-limiting (HTTP 429 six times).
2. **Claim checks:** each priority claim marked CONFIRMED, CORRECTED, NOT FOUND or STILL UNVERIFIED, with a primary-source link.
3. **Licence table:** code, weights and data listed separately.
4. **New facts:** 12, each with an evidence label.

**Corrections the report writer most needs**
- **Washabaugh 2022** did not test MediaPipe. It compared OpenPose, MoveNet Lightning, MoveNet Thunder and DeepLabCut in 32 adults. Hip error was 3.7° (OpenPose) and 4.6° (MoveNet Thunder); knee error was 5.1° (OpenPose).
- **"Occluded side roughly double":** the meta-analysis matching the notes' title is Scataglini et al. 2024, Sensors 24:3686. The doubling claim is not in its full text, so I recommend dropping it.
- **Frontiers 2023** compared OpenPose and MediaPipe with Kinovea (a manual video-annotation tool), not Kinect.
- **Camera-angle OpenPose paper** (Baldinger et al., Sensors 2025): back-facing cameras performed best. It does not show that side and front views are more consistent.
- **Fit3D** has 37 exercises and 13 subjects, not about 47 exercises.
- **Fitness-AQA 95.92% vs 89.80%:** the figures are real, but they come from the single-subject Waseda Squat set. Averaged over all five errors the two methods are about equal (89.92 vs 89.08), and the pose model wins on two errors. It is not evidence that image features beat pose.
- **Oliosi 2026** (JMIR mHealth):
  - The model was MoveNet, run through the Dotmoovs app's pipeline.
  - The phones were an iPhone 11, iPhone 13 and Galaxy A52, lying flat on the floor in a lab.
  - The 90 cm distance hurt squats (side view: 0% detection), but push-ups were best from a diagonal at 90-180 cm.
- **Kaia study:** it also reported Cohen's kappa, not only percent agreement. Three authors are Kaia employees with stock options, and a Bavarian ministry grant funded it. The 0.828 vs 0.833 agreement and n=24 are confirmed.
- **Meyer et al. 2014:** the notes' paraphrase about "extreme predictive values" is not in the abstract. The abstract says the false-alarm rate drives both compliance and reliance.
- **Preprints now peer-reviewed:**
  - PoseRAC (ICONIP 2024, as Yao and Zou)
  - Full Resolution Repetition Counting (ICIRA 2023)
  - MultiCounter (ECAI 2024)
  - DeTRC (IJCV 2026)
  - Viewpoint-invariant counting (Health Information Science and Systems 2023)
  - the BlazePose knee-angle study (JMIR Rehabilitation and Assistive Technologies, 2026-11-03)
  - the AQA survey (IJCV)
- **EC3D author list:** it includes Vinzant and Katircioglu, which the notes got wrong. The JSR single-leg squat paper is 2025, not 2024.
- **BlazePose** was presented at a CVPR 2020 workshop but is not in the archival proceedings and has no DOI, so cite it by arXiv number.

**Confirmed and gaps closed**
- **ML Kit Pose Detection:**
  - 33 landmarks.
  - Still beta: "not subject to any SLA or deprecation policy".
  - Speed: base SDK about 30 fps on a Pixel 4 and 45 fps on an iPhone X. On a Pixel 3XL, base about 30 FPS; accurate about 23 FPS on CPU and 30 FPS on GPU.
  - Its model card is the BlazePose card, under Apache-2.0.
  - Its terms send usage metrics to Google, and the app must tell users.
- **Conflicting Google model cards:** the ML Kit card (June 2021) reports higher fairness numbers than the MediaPipe GHUM 3D card (April 2021) that Area A quotes. I read both.
- **MediaPipe Pose Landmarker page:** confirms the 33 landmarks and the 224 px detector / 256 px landmarker in float16, but has no per-phone speed table.
- **Speed figures:** RTMPose's 9.02 to 45.37 ms on a Snapdragon 865 is confirmed in the paper. RTMO (confirmed CVPR 2024) reports only V100 GPU speeds.
- **Validation numbers:**
  - Heliyon: 18.83 to 19.68° knee-valgus error (15 men).
  - Gait: Stenum 4.0/5.6/7.4°; Yang and Park 2.35/2.82/3.06°.
  - FMS rater reliability ICCs of 0.81 and 0.843.
  - Dixon 2007 (32 participants).
- **Counting results:**
  - EC3D: 90.9% and its full error label set.
  - QEVD: temporal F-score 0.59 vs 0.50.
  - CountLLM: MAE 0.162 / OBO 0.639 on RepCount.
  - ESCounts and PoseRAC: figures confirmed.
  - UCFRep has 526 videos; Countix's test set has 2,719.
- **FitAQA:** the best model reaches 51.2% perception accuracy, against a 41.1% "always correct" baseline.
- **CVPRW 2026 VLM paper:** confirmed in CVF open access. Its authors are from Sword Health, and it finds VLMs only marginally above chance, with a bias towards saying form is correct.
- **ML Kit sample thresholds:** all confirmed in the code (enter 6, exit 4, top-K 30 and 10, window 10, alpha 0.2, 100 ms reset). The guide page itself gives no numbers.

**Licences**
- **No commercial use:**
  - EgoExo-Fitness: its signed agreement bans commercial use, including testing commercial systems.
  - Fitness-AQA: CC BY-NC 4.0, plus "not part of any commercial software".
  - COCO-WholeBody and Human-Art: non-commercial.
- **Commercial use with conditions:**
  - TransRAC: Apache-2.0 plus "Anti 996" labour-law conditions.
  - FitCoach code: BSD-3-Clause-Clear, which grants no patent rights.
- **Unclear or none stated:**
  - OpenPose: non-commercial only, with no fee for that use. The commercial fee is not stated in the repository.
  - RTMPose weights: no licence statement.
  - CrowdPose, Halpe and UBody: no data licence stated.
  - QEVD: the paper says crowd workers consented to commercial use, but the FitAQA authors say Qualcomm releases it under a research-use agreement.

**Still unverified** (the sites were unreachable): the Sony AI fairness paper; the OpenPose commercial fee; the Fit3D, Countix, RepCount and QEVD licence texts; RecoFit's "within ±1 rep 93%"; MM-Fit's rep-counting numbers (no data licence exists, confirmed); the lifting study's 67.1° figure (its abstract gives sagittal errors of 9.9 to 31.2°); and the EgoExo-Fitness exercise list.
````
