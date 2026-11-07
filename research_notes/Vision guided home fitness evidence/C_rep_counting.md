# Area C: Automatic repetition counting and timed-hold detection

Date checked for every number, star count, push date and licence below: **2026-11-07**, unless a line says otherwise.

How this was researched, and what limited it (read this first):
- GitHub repo metadata (stars, last push, archived flag, licence SPDX id) came from the GitHub search API on 2026-11-07. README and LICENSE texts were read on github.com the same day.
- **Contributor counts: not verified for any repo.** github.com pages did not show the count to the fetch tool, and the commit-search fallback needs free text.
- **Citation counts: not verified for any paper.** `api.semanticscholar.org` is outside this session's allowed network, and the session's shared web-search budget (200 calls) ran out partway through. Every paper below therefore reads "citation count not verified".
- Three hosts were blocked by the session's network policy: `sites.google.com` (RepNet / Countix and OVR project pages), `developers.google.com` (ML Kit pose-classification guide) and `api.semanticscholar.org`. They must be allowed in the session's network settings before Countix and OVR licences, the ML Kit guide text and citation counts can be checked.
- Some facts come from web-search result summaries rather than from opening the page. Those are marked "(search summary; page not opened)" and should be treated as weaker.
- openGym (AGPL-3.0) is out of scope. It is mentioned only as a comparison point and was not re-analysed.

Evidence labels used: **[strong]** = peer-reviewed paper or primary code/licence text read directly; **[weak]** = preprint, aggregator, search summary, small/uncontrolled study, or anecdote; **[industry]** = public documentation of a commercial product or vendor sample code; **[opinion]** = my inference for Delva.

---

## Q1. The best items: class-agnostic video counting, pose-signal methods, wearables (per-item notes)

### Takeaway
Class-agnostic video counters (RepNet, TransRAC, ESCounts, CountLLM, OVRCounter) set the academic state of the art, but they are heavy video-transformer or LLM models. None of their sources documents phone real-time use, and their code, weights and data licences are mixed or unclear. The pieces that actually fit a real-time phone app are pose-signal pipelines: per-frame pose estimation (MediaPipe / ML Kit, Apache-2.0 sample code, documented as real-time on phones) plus a per-exercise classifier and a hysteresis state machine. The only peer-reviewed independent test of smartphone pose counting found here (JMIR mHealth 2026) reports an MAE of about 1 rep on roughly 5-rep sets, with results depending heavily on where the camera is placed.

### Cited Findings

**1. RepNet + Countix: "Counting Out Time: Class Agnostic Video Repetition Counting in the Wild" (Dwibedi, Aytar, Tompson, Sermanet, Zisserman; CVPR 2020)**
- Type: paper + code + dataset. [strong for venue; weak for numbers]
- What it is: a class-agnostic model that predicts per-frame period length and "within-period" score from a temporal self-similarity matrix. It was trained on synthetic repetitions plus Countix, a set of real Kinetics videos annotated with counts. — [CVPR 2020 paper](https://openaccess.thecvf.com/content_CVPR_2020/papers/Dwibedi_Counting_Out_Time_Class_Agnostic_Video_Repetition_Counting_in_the_CVPR_2020_paper.pdf); [arXiv 2006.15418](https://arxiv.org/abs/2006.15418)
- Countix size: about 8.7K Kinetics videos per the OVR paper's comparison table. The RepNet paper's table lists 4,588 train and 1,450 validation videos (search summary; page not opened). — [OVR arXiv](https://arxiv.org/abs/2407.17085); [RepNet arXiv](https://arxiv.org/abs/2006.15418); [Google Research blog](https://www.research.google/blog/repnet-counting-repetitions-in-videos/)
- Reported accuracy: an aggregator lists RepNet on Countix at MAE 0.3641 for the original paper and MAE 0.3002 / OBO 0.7047 for a 2024 re-evaluation. The aggregator's OBO for the original paper (0.3034) contradicts the 0.70 range, so **treat all of these as unverified**. — [hyper.ai Countix leaderboard](https://hyper.ai/en/sota/tasks/repetitive-action-counting/benchmark/repetitive-action-counting-on-countix) [weak]
- Important caveat: "A Short Note on Evaluating RepNet for Temporal Repetition Counting in Videos" (2024, arXiv; by the RepNet authors per the search summary) says later papers reported weak "RepNet" numbers by reusing figures TransRAC produced with a *modified* model. Cross-paper leaderboards are therefore not reliable. — [arXiv 2411.08878](https://arxiv.org/abs/2411.08878) (preprint) [weak]
- Code: the `repnet/` folder of `google-research/google-research` holds only a Colab notebook and a README. The README says "RepNet checkpoint updated" and that eval scripts are still to come. — [repnet folder](https://github.com/google-research/google-research/tree/master/repnet)
- Repo credibility: google-research/google-research has 39,122 stars, last push 2026-11-06, not archived, owned by the Google Research organisation. Contributors: not verified. The last commit date of the `repnet/` folder itself was not verified. Exception reason: this is the official code of a key paper inside a major-lab monorepo. — GitHub API, checked 2026-11-07; [repo](https://github.com/google-research/google-research)
- Licence: the monorepo README says "All source files in this repository are released under the Apache 2.0 license" and "All datasets in this repository are released under the CC BY 4.0 International license", and adds "This is not an official Google product." **The checkpoint (weights) licence is not stated in the RepNet folder. The Countix annotation licence could not be verified** because the project page on sites.google.com is blocked. The underlying videos are YouTube/Kinetics clips. — [google-research README](https://github.com/google-research/google-research)
- Citation count not verified.
- Why it matters for Delva: it is the reference design for counting *any* repeated motion without per-exercise training (feature 3, rep counting), which helps with a long tail of bodyweight moves.
- Ideas to borrow: temporal self-similarity as a class-agnostic periodicity signal; predicting a "within-period" flag so non-repeating segments (rest, setup) are not counted. [opinion]
- Limitations: assumes a roughly steady period over a window, so slow tempo, pauses and alternating sides are hard (see Q3) [opinion]; phone real-time use not documented in any source I could open; unclear weights and data licences.

**2. TransRAC + RepCount: "TransRAC: Encoding Multi-scale Temporal Correlation with Transformers for Repetitive Action Counting" (Hu et al., CVPR 2022, Oral)**
- Type: paper + code + dataset. [strong]
- What it is: multi-scale temporal correlation encoding with transformers on a Video Swin backbone. It introduced RepCount: 1,451 videos with about 20,000 annotations giving the start and end of each repetition. Part-A comes from YouTube; Part-B (recordings of simulated school physical exams) has **not been released**. — [TransRAC repo README](https://github.com/SvipRepetitionCounting/TransRAC); [CVPR 2022 paper](https://openaccess.thecvf.com/content/CVPR2022/papers/Hu_TransRAC_Encoding_Multi-Scale_Temporal_Correlation_With_Transformers_for_Repetitive_Action_CVPR_2022_paper.pdf); [RepCount page](https://svip-lab.github.io/dataset/RepCount_dataset.html)
- Reported accuracy (RepCount-A, Video Swin, 64 frames): MAE 0.44, OBO 0.29. — [TransRAC README](https://github.com/SvipRepetitionCounting/TransRAC)
- RepCount videos include "action interruptions and inconsistencies", which makes it closer to real workouts than synthetic data. — [TransRAC README](https://github.com/SvipRepetitionCounting/TransRAC)
- Repo credibility: 120 stars, last push 2025-02-07 (more than 18 months before the check date, so **stale; label "archived but influential"** even though GitHub does not mark it archived), owner SvipRepetitionCounting (ShanghaiTech SVIP lab per the dataset page). Contributors: not verified. Exception reason: official code of a CVPR oral that defined the main benchmark. — GitHub API, checked 2026-11-07
- Licence: **the LICENSE file is dual. It contains Apache-2.0 followed by the "Anti 996" License v1.0 (Draft)**, which adds obligations: display the notice unmodified, comply with labour law (the stricter of several jurisdictions, or the ILO core standards), and do not make employees waive labour rights. This is a custom licence and a legal-review flag for a commercial app. Weights: one checkpoint on OneDrive/Baidu with no separate licence. RepCount: **no dataset licence found** on the README or dataset page (search summary). Third-party Hugging Face repackagings describe it as released for academic use (search summary; not official). — [LICENSE](https://github.com/SvipRepetitionCounting/TransRAC/blob/main/LICENSE); [RepCount page](https://svip-lab.github.io/dataset/RepCount_dataset.html); [HF lmms-lab-eval/repcount](https://huggingface.co/datasets/lmms-lab-eval/repcount/blob/main/README.md) [weak]
- Citation count not verified.
- Why it matters for Delva: RepCount is the most fitness-like public video benchmark, and its per-repetition start/end labels are the right annotation format for Delva's own test set.
- Ideas to borrow: annotate the start and end of every repetition (not only totals) so the counter can be scored on *when* a rep happened, which matters for timing audio feedback (feature 2). [opinion]
- Limitations: heavy backbone; the PoseRAC authors report about 200 ms per frame for TransRAC (hardware not stated) [weak]; custom licence; unclear data terms.

**3. ESCounts: "Every Shot Counts: Using Exemplars for Repetition Counting in Videos" (Sinha, Stergiou, Damen; ACCV 2024)**
- Type: paper + code. [strong for venue]
- What it is: an attention-based encoder-decoder that matches the video against *exemplars* (example repetitions from the same or other videos). It also learns a general representation of repetition, so it can count zero-shot. It uses VideoMAE-v2 features. — [repo](https://github.com/sinhasaptarshi/EveryShotCounts); [arXiv 2403.18074](https://arxiv.org/abs/2403.18074); [Univ. of Bristol record](https://research-information.bris.ac.uk/en/publications/every-shot-counts-using-exemplars-for-repetition-counting-in-vide/)
- Reported accuracy on RepCount: OBO from 0.39 to 0.56 and MAE from 0.38 to 0.21 against the previous best. It reports state of the art on RepCount, Countix and UCFRep. — [repo / abstract](https://github.com/sinhasaptarshi/EveryShotCounts)
- Repo credibility: 32 stars, last push 2024-12-18 (**stale, "archived but influential"**), personal account of the first author (University of Bristol group). Contributors: not verified. Exception reason: official code of a peer-reviewed 2024 paper. — GitHub API, checked 2026-11-07
- Licence: code MIT. Weights: a Google Drive checkpoint with no separate licence. It depends on VideoMAE-v2 encoder weights hosted by Meta (**licence not verified**). It was trained on RepCount, Countix and UCFRep, so it inherits their unclear data terms. — [repo](https://github.com/sinhasaptarshi/EveryShotCounts)
- Citation count not verified.
- Why it matters for Delva: Delva already has curated exercise content. A coach's demo repetition could serve as the exemplar ("count things that look like this"). [opinion]
- Limitations: heavy video backbone; phone real-time not claimed.

**4. CountLLM: "Towards Generalizable Repetitive Action Counting via Large Language Model" (Yao et al., CVPR 2025)**
- Type: paper. [strong for venue]
- What it is: treats counting as video question answering, combining video features with periodic text prompts in an LLM. The authors report it beating previous methods on RepCount, UCFRep and Countix. CVPR 2025, pp. 19143-19153. — [CVF open access](https://openaccess.thecvf.com/content/CVPR2025/html/Yao_CountLLM_Towards_Generalizable_Repetitive_Action_Counting_via_Large_Language_Model_CVPR_2025_paper.html); [arXiv 2503.17690](https://arxiv.org/abs/2503.17690)
- Code: **no public repo found** by a GitHub search for "CountLLM" (2026-11-07). The exact MAE/OBO values were not retrieved because the search budget ran out.
- Citation count not verified.
- Why it matters for Delva: it shows where the field is heading (LLM-based, open-vocabulary), not something to ship on a phone.
- Limitations: LLM-sized inference, so not a real-time on-device option. [opinion]

**5. OVR dataset + OVRCounter: "OVR: A Dataset for Open Vocabulary Temporal Repetition Counting in Videos" (Dwibedi, Aytar, Tompson, Zisserman; Google DeepMind; arXiv July 2024)**
- Type: dataset + model, **preprint** (no peer-reviewed venue could be confirmed). [weak]
- What it is: annotations for about 72.5K videos from Kinetics and Ego4D, roughly ten times Countix. Each annotation has a count, start/end times and a free-text description of the action. OVRCounter is a transformer baseline for videos up to 320 frames. — [arXiv 2407.17085](https://arxiv.org/abs/2407.17085)
- An aggregator lists OVR-Kinetics MAE 0.39 and OVR-Ego4D RMSE 1.6 (unverified against the paper). — [wizwand](https://www.wizwand.com/paper/68fa744a1e209131cea60d0a) [weak]
- Licence: **not verified** (project page on sites.google.com blocked). The source videos are Kinetics (YouTube) and Ego4D; Ego4D's own access terms would also need checking. No OVRCounter code or weights were found.
- Citation count not verified.
- Why it matters for Delva: the largest counting dataset, and the text descriptions match how Delva names its exercises. It is useful for research, but its fitness coverage and licence are unknown.

**6. PoseRAC: "Pose Saliency Transformer for Repetitive Action Counting" (Yao, Cheng, Zou; arXiv 2303.08450, 2023)**
- Type: paper (**preprint**; the repo names no peer-reviewed venue) + code + re-annotated dataset. [weak]
- What it is: the first *pose-level* counting network. For each action two "salient poses" are defined, and the training frames where they occur are labelled (RepCount-pose). Counting means alternating between the two poses. — [repo](https://github.com/MiracleDance/PoseRAC)
- Reported accuracy on RepCount: MAE 0.236, OBO 0.560, against TransRAC's MAE 0.443 / OBO 0.291 (the repo's eval output reproduces MAE 0.2356 / OBO 0.5592). Speed: 20 ms against 200 ms for TransRAC (hardware not stated). Training takes about 20 minutes on one GPU. — [repo](https://github.com/MiracleDance/PoseRAC)
- Repo credibility: 22 stars, last push 2023-04-20 (**stale, "archived but influential"**). Contributors: not verified. Exception reason: the closest academic match to an on-device pose pipeline. — GitHub API, checked 2026-11-07
- Licence: code MIT, and a weights file (`best_weights_PoseRAC.pth`) ships in the repo. No licence is stated for RepCount-pose or the underlying videos. — [repo](https://github.com/MiracleDance/PoseRAC)
- A follow-up preprint exists ("Joint-Based PoseRAC", arXiv 2308.08632; not read). — [arXiv](https://arxiv.org/abs/2308.08632)
- Citation count not verified.
- Why it matters for Delva: it confirms in a benchmark setting that "two key poses per exercise + transitions" beats heavy video models on fitness-style data while being about 10x faster. That fits the Delva content model, where every exercise is curated anyway.

**7. MediaPipe Pose + MediaPipe / ML Kit pose classification and repetition counting (Google)**
- Type: documentation + sample code. [industry]
- Pose model: MediaPipe Pose (BlazePose GHUM 3D) predicts 33 landmarks and "achieves real-time performance on most modern mobile phones", with Pixel 3 latencies of 20 to 53 ms across the Lite/Full/Heavy variants. It says it "can form the basis for yoga, dance, and fitness applications." The page is a legacy page; the solution moved to the new MediaPipe Solutions on 2023-05-10. — [pose.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)
- Documented counting approach: collect "about a few hundred samples for each terminal state of each exercise" (for push-ups, "up" and "down") across camera angles, environments, body shapes and variations. The embedding normalises to torso size and orientation and uses pairwise joint distances. A two-pass k-NN filters by max distance, then by mean distance. EMA smoothing is applied over time. A counter enters a state when the class probability passes a threshold and counts a rep when it falls back below a *lower* exit threshold. **No accuracy figures are given.** — [pose_classification.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose_classification.md)
- Exact sample parameters (ML Kit Android quickstart):
  - Enter threshold `6f`, exit threshold `4f`, out of a top-K of 10. A rep is counted on exit. — [RepetitionCounter.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/RepetitionCounter.java)
  - `MAX_DISTANCE_TOP_K = 30`, `MEAN_DISTANCE_TOP_K = 10`, and Z-axis weight 0.2 ("Z ... is generally less accurate than X & Y"). — [PoseClassifier.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/PoseClassifier.java)
  - EMA window 10, alpha 0.2, memory reset after a 100 ms gap. — [EMASmoothing.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/EMASmoothing.java)
  - Reps are counted only in stream mode, for the classes `pushups_down` and `squats_down`. — [PoseClassifierProcessor.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/PoseClassifierProcessor.java)
- Repo credibility (all Google-maintained, active): google-ai-edge/mediapipe has 37,589 stars and a last push of 2026-11-07; googlesamples/mlkit has 4,309 stars and a last push of 2026-10-26; google-ai-edge/mediapipe-samples has 2,884 stars and a last push of 2026-10-30. Contributors: not verified. — GitHub API, checked 2026-11-07
- Licence: all three repos are Apache-2.0 (code). **Not verified:** the licence of the MediaPipe pose model weights (model card) and the ML Kit SDK terms (closed-source Google SDK; developers.google.com blocked).
- Why it matters for Delva: it is the cheapest proven on-device recipe for features 1-3. The same landmarks drive form tracking, audio cues and counting.
- Limitations: no published accuracy; a per-exercise sample set is needed; only terminal states are modelled, so partial range of motion is not separated from full reps unless extra rules are added (see Q3). [opinion]

**8. Oliosi et al., "Evaluation of Smartphone Camera Positioning on Artificial Intelligence Pose Estimation Accuracy for Exercise Detection: Observational Study", JMIR mHealth and uHealth 2026;14:e82412**
- Type: peer-reviewed observational study. [strong for design and venue; small sample]
- Findings: 44 healthy university students did push-ups and squats at 3 angles (front, side, diagonal) and 4 distances (90, 180, 200, 360 cm), about 1,320 reps per exercise. Mean detection rate was 61.1% (SD 48.8%) for push-ups and 61.5% (SD 48.7%) for squats. Counting MAE was 1.08 and 1.11 reps, with trials averaging about 5 reps. Push-ups were detected best from diagonal views at 90-180 cm and worst from the front at 360 cm. The authors conclude that diagonal and frontal views at 180-200 cm work best (search summary of the paper; page not opened in full). — [JMIR mHealth](https://mhealth.jmir.org/2026/1/e82412/)
- **Which pose model was used is not confirmed.**
- Citation count not verified.
- Why it matters for Delva: the only independent peer-reviewed number found for phone-camera counting. An MAE of about 1 rep on about 5-rep trials is roughly a 20% normalised error [opinion: arithmetic estimate]. That directly threatens the "done vs partial" credit rule unless counting is made forgiving.

**9. RecoFit: "Using a Wearable Sensor to Find, Recognize, and Count Repetitive Exercises" (Morris, Saponas, Guillory, Kelner; CHI 2014), foundational, + Microsoft dataset**
- Type: paper + dataset. [strong, foundational]
- Findings: an arm-worn inertial sensor that segments exercise from non-exercise, recognises the exercise and counts reps. Exercise-period precision and recall were above 95%. Recognition was 99%, 98% and 96% on circuits of 4, 7 and 13 exercises. Counting was within ±1 rep 93% of the time. It adds orientation invariance and rejection of false peaks. — [Microsoft Research page](https://www.microsoft.com/en-us/research/publication/recofit-using-wearable-sensor-find-recognize-count-repetitive-exercises/); [PDF](https://microsoft.com/en-us/research/wp-content/uploads/2016/12/p3225-morris.pdf); [dblp](https://dblp.uni-trier.de/rec/conf/chi/MorrisSGK14.html)
- Evaluation scale: 114 participants and 146 sessions, per a conference slide deck (secondary). — [slides](https://www.slideshare.net/slideshow/recofit-using-a-wearable-sensor-to-find-recognize-and-count-repetitive-exercises/59871510) [weak]
- Dataset: `microsoft/Exercise-Recognition-from-Wearable-Sensors` holds accelerometer and gyroscope data from "over 200 participants performing various gym exercises" (MATLAB files). The repo is **archived** (read-only), has 39 stars and a last push of 2023-06-16; GitHub reports its licence as NOASSERTION. Contributors: not verified. — [repo](https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors); GitHub API, checked 2026-11-07
- Licence: the LICENSE file is **Community Data License Agreement – Permissive – Version 2.0**. Users "may use, modify, and share the Data". It has no field-of-use limit, its only sharing condition is to include the agreement text, and it "does not impose any restriction or obligations" on Results such as trained models. **This is the one fitness rep dataset found whose licence clearly allows commercial model training.** — [LICENSE](https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors/blob/main/LICENSE)
- Citation count not verified.
- Why it matters for Delva: the benchmark to beat if Delva adds watch support, and a dataset Delva could legally train on.
- Limitations: gym (often loaded) exercises rather than Delva's bodyweight list; 2014 hardware.

**10. MM-Fit: "Multimodal Deep Learning for Automatic Exercise Logging across Sensing Devices" (Strömbäck, Huang, Radu; Proc. ACM IMWUT 4(4), Dec 2020)**
- Type: paper + dataset + code. [strong for venue]
- Dataset: "over 800 minutes" of time-synchronised data from 5 devices: an Orbbec Astra Pro RGB-D camera, an eSense earbud, 2 Mobvoi TicWatch Pro smartwatches, a Samsung S7 and a Huawei P20. It includes 2D/3D pose estimates. 10 exercises: squats, push-ups, dumbbell shoulder press, lunges, standing dumbbell rows, sit-ups, dumbbell triceps extensions, biceps curls, seated lateral raises, jumping jacks. Push-up definition: "Repetitions are counted when the body returns to the starting position." — [MM-Fit site source](https://github.com/mmfit/mmfit.github.io/blob/master/index.html); [mmfit.github.io](https://mmfit.github.io/)
- Results: activity recognition was 96% with all sensors, 94% with the smartwatch alone, 85% with the smartphone alone and 82% with the earbud alone. A rep-counting baseline was evaluated, **but its numbers were not retrieved** (search summary). — [DOI 10.1145/3432701](https://doi.org/10.1145/3432701)
- Repo credibility: KDMStromback/mm-fit has 40 stars and a last push of 2021-08-01 (**stale, "archived but influential"**). Contributors: not verified. Exception reason: official code of a peer-reviewed IMWUT paper. — GitHub API, checked 2026-11-07
- Licence: code MIT. **Dataset: no licence text on the website or README, so it is all rights reserved by default**; ask the authors before any commercial training. — [repo](https://github.com/KDMStromback/mm-fit); [site source](https://github.com/mmfit/mmfit.github.io/blob/master/index.html)
- Citation count not verified.
- Why it matters for Delva: the only dataset found that pairs phone video/pose with watch IMU for the same reps. That makes it the natural reference for a future "camera + watch" fusion.

**Also verified briefly (lower priority for Delva)**
- *Repetitive Activity Counting by Sight and Sound* (Zhang, Shao, Snoek; CVPR 2021): audio-visual counting with Countix-AV and Extreme Countix-AV splits (sizes not verified). Repo xiaobai1217/RepetitionCounting: 24 stars, last push 2021-10-29, **no licence file, so all rights reserved**; weights on Google Drive. — [repo](https://github.com/xiaobai1217/RepetitionCounting); [arXiv 2103.13096](https://arxiv.org/abs/2103.13096) [strong venue; licence red flag]
- *IVAC-P2L: Leveraging Irregular Repetition Priors for Improving Video Action Counting*: IEEE Transactions on Multimedia 2025 (DOI 10.1109/TMM.2025.3604935). Trained on RepCount-A and tested on RepCount-A, UCFRep and Countix; MAE/OBO not shown on the repo page. Repo: 27 stars, last push 2025-09-05 (active), MIT; weights on Google Drive. — [repo](https://github.com/hwang-cs-ime/IVAC-P2L); [arXiv 2403.11959](https://arxiv.org/abs/2403.11959)
- *Full Resolution Repetition Counting* (Li, Chen, Wang, Liu; arXiv 2305.13778, May 2023, **preprint**, no venue found): it argues that frame downsampling in earlier methods drops repetitions. It extracts features offline and runs temporal convolutions over every frame, and was evaluated on RepCount (TransRAC), UCFRep and QUVA. — [arXiv](https://arxiv.org/abs/2305.13778) [weak]
- *UCFRep*: based on UCF101 per the ESCounts README; its size was not verified in this session. A GitHub repo that appears linked to it (Xiaodomgdomg/Deep-Temporal-Repetition-Counting) has 54 stars, a last push of 2020-09-04 and **no licence**; its link to the UCFRep paper was not verified. — [ESCounts README](https://github.com/sinhasaptarshi/EveryShotCounts); GitHub API, checked 2026-11-07
- *Pūioio: On-device Real-Time Smartphone-Based Automated Exercise Repetition Counting System* (arXiv 2308.02420, **preprint**): developer-reported accuracy of 98.89% in real-world tests and 98.85% on a pre-recorded set, for squats, push-ups and pull-ups. — [arXiv](https://arxiv.org/abs/2308.02420) [weak: self-reported, not peer-reviewed]
- *Soro et al., "Recognition and Repetition Counting for Complex Physical Exercises with Deep Learning"* (Sensors 2019): per the search summary, a single wrist-worn smartwatch was enough for high accuracy on most exercises; exact numbers not retrieved. — [PMC6387025](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6387025/) [weak until numbers are checked]

**Also considered and excluded**
- materight/RepNet-pytorch (42 stars) and confifu/RepNet-Pytorch (40 stars): unofficial ports with **no licence**.
- giaongo/RepDetect, NetoPedro push-up counter and many 2026 "AI gym trainer" repos: tutorial-grade, few stars, no paper.
- MultiCounter (arXiv 2409.04035), RepProbe, "Rethinking temporal self-similarity" (arXiv 2407.09431), dynamic-query counting (arXiv 2403.01543): preprints with no venue confirmed. — [MultiCounter](https://arxiv.org/abs/2409.04035); [arXiv 2407.09431](https://arxiv.org/abs/2407.09431)
- PushupBench (arXiv 2604.23407, 2026): 446 long-form, human-annotated fitness clips, on which video-language models count poorly. Only an emergentmind summary was seen. — [emergentmind](https://www.emergentmind.com/papers/2604.23407) [weak]
- "Viewpoint-Invariant Exercise Repetition Counting" (arXiv 2107.13760): preprint that evaluates on MM-Fit. — [arXiv](https://arxiv.org/abs/2107.13760)

### Inferences
- [opinion] For a 2026 phone app, the practical stack is: on-device pose (MediaPipe / ML Kit class), then per-exercise "key pose" classification (k-NN or a small classifier trained on Delva's own clips), then a hysteresis state machine. PoseRAC is the academic evidence that this is competitive on RepCount. The class-agnostic video models are better treated as offline tools, for example to auto-label Delva's own training clips, than as the shipped counter.
- [opinion] A class-agnostic counter such as RepNet or ESCounts could be a fallback for exercises without a trained key-pose model, but only server-side or offline, given model size and the unclear weights licences.
- [opinion] Because counts feed chapter credit, the counter should never be the only arbiter of "done" (see Q3 and Q5).

### Gaps
- Whether RepNet, TransRAC or ESCounts can run in real time on a phone: no primary source found. The only speed figure (TransRAC 200 ms vs PoseRAC 20 ms) comes from the PoseRAC README with hardware unstated.
- Countix and OVR annotation licences (blocked host), MediaPipe pose weights licence, and ML Kit SDK terms: not verified.
- CountLLM's numeric results, Countix-AV and UCFRep sizes, the MM-Fit rep-counting numbers, the Soro et al. numbers: not retrieved (search budget exhausted).
- Citation counts and contributor counts: not verified for any item.

---

## Q2. Methods compared: video vs pose-signal vs wearable

### Takeaway
Video (class-agnostic) methods generalise to unseen moves but are heavy and fragile to tempo changes, with unclear licences. Pose-signal methods are cheap, run on the phone, and fit a curated exercise library, but need per-exercise rules or samples and depend on camera placement. Wrist IMUs are accurate for arm-driven moves (RecoFit about 93% within ±1 rep) but, per Garmin, may not count leg exercises, which make up much of a no-equipment program.

### Cited Findings
- Video, class-agnostic: RepNet learns periodicity from a self-similarity matrix without per-class training. — [RepNet paper](https://openaccess.thecvf.com/content_CVPR_2020/papers/Dwibedi_Counting_Out_Time_Class_Agnostic_Video_Repetition_Counting_in_the_CVPR_2020_paper.pdf) [strong]
- Video, current benchmark numbers (each paper's own claims; not comparable across papers because of retraining differences):
  - TransRAC: MAE 0.44 / OBO 0.29 on RepCount. — [TransRAC](https://github.com/SvipRepetitionCounting/TransRAC)
  - ESCounts: MAE 0.21 / OBO 0.56. — [ESCounts](https://github.com/sinhasaptarshi/EveryShotCounts)
  - PoseRAC (pose-level): MAE 0.236 / OBO 0.560. — [PoseRAC](https://github.com/MiracleDance/PoseRAC)
  - CountLLM claims to beat all of them on 3 benchmarks. — [CountLLM](https://openaccess.thecvf.com/content/CVPR2025/html/Yao_CountLLM_Towards_Generalizable_Repetitive_Action_Counting_via_Large_Language_Model_CVPR_2025_paper.html)
  - [strong venues; weak comparability]
- Reported numbers differ between the standard and open-set RepCount-A settings, and TransRAC's maintainers retrain other frameworks on RepCount-A, so numbers across papers may not be directly comparable (search summary). — [TransRAC repo](https://github.com/SvipRepetitionCounting/TransRAC) [weak]
- The RepNet authors' 2024 note says weak "RepNet" baselines in later papers came from a modified model. — [arXiv 2411.08878](https://arxiv.org/abs/2411.08878) [weak, preprint]
- Pose-signal: pose runs at 20-53 ms on a Pixel 3, and the k-NN + EMA + enter/exit-threshold counter adds little. — [MediaPipe pose.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md); [ML Kit sample](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/RepetitionCounter.java) [industry]
- Pose-signal, independent accuracy: about 61% detection rate and an MAE of about 1.1 reps across varied phone positions; diagonal and front views at 180-200 cm work best. — [JMIR mHealth 2026](https://mhealth.jmir.org/2026/1/e82412/) [strong venue, small lab sample]
- Pose-signal, developer-reported: about 98.9% (squats, push-ups, pull-ups). — [Pūioio preprint](https://arxiv.org/abs/2308.02420) [weak]
- Wearable: RecoFit counts within ±1 rep 93% of the time from an arm-worn IMU. — [RecoFit](https://www.microsoft.com/en-us/research/publication/recofit-using-wearable-sensor-find-recognize-count-repetitive-exercises/) [strong, foundational]
- Wearable: MM-Fit activity recognition is 94% with the smartwatch alone and 96% with all sensors (recognition, not counting). — [MM-Fit DOI](https://doi.org/10.1145/3432701) [strong venue]
- Wearable, exercise classification: a 2025 Sports Medicine systematic review found wrist-worn IMUs the most accurate technology, and how similar the exercises are strongly affects accuracy (search summary; this concerns *recognition*, not counting). — [Sports Medicine 2025](https://link.springer.com/article/10.1007/s40279-025-02281-8) [strong design; not counting-specific]
- Wearable, industry: Garmin watches count "when the arm wearing the watch returns to the starting position", state that leg exercises may not be counted, and show a rep count only after at least 4 reps (6 on older models). — [Garmin manual (vívomove 3)](https://www8.garmin.com/manuals/webhelp/vivomove3_3S/EN-US/GUID-FD0DDF57-E3E0-4AD3-871C-88D0160A4B84.html); [Garmin manual (vívosmart 3)](https://www8.garmin.com/manuals/webhelp/vivosmart3/EN-US/GUID-96F2028E-739A-4FFA-A904-E884A7CD0242.html) (search summary of these pages) [industry]

### Inferences
- [opinion] **Which method suits which part of Delva's catalogue:**

  | Movement type | Phone pose | Wrist IMU (watch) | Class-agnostic video |
  |---|---|---|---|
  | Squats, lunges, glute bridges, wall sits | good if body fully in frame (side or diagonal view) | weak (Garmin: legs may not count) | possible offline |
  | Push-ups, planks, side planks (wrists planted) | good from side or diagonal; floor occlusion is a risk | weak signal likely (wrist static) [opinion] | possible offline |
  | Jumping jacks, arm circles, mountain climbers | good, but fast moves need a high frame rate | good for arm-driven moves | good at steady tempo |
  | Bird dogs, dead bugs (alternating) | needs side-aware logic | partial (one wrist) | weak (pairs vs singles ambiguity) |

- [opinion] If Delva adds a watch, it should be a *second* signal for arm-driven moves and heart rate, not a replacement for the camera on a bodyweight program. The RecoFit dataset (CDLA-Permissive-2.0) is a legal starting point for training; MM-Fit is the best paired camera + watch reference but is unlicensed.
- [opinion] Phone real-time: only the pose-signal stack is documented as real-time on phones. Video transformers (Video Swin, VideoMAE-v2) and LLM counters are not.

### Gaps
- No head-to-head study was found comparing phone camera, watch and video counting on the same bodyweight sessions.
- No peer-reviewed validation of any commercial camera rep counter was found.
- Accuracy for adults aged 50-64, larger bodies, loose clothing, low light and small rooms was not found.

---

## Q3. Partial reps, alternating unilateral moves, tempo, pauses and timed holds

### Takeaway
The literature gives building blocks (two salient poses per rep, hysteresis thresholds, EMA smoothing, a "return to start" rep definition, per-rep start/end labels) but **no validated standard** for partial-rep scoring, per-side vs per-pair counting, or hold grace periods. These are product decisions Delva must make explicitly and test with users, and because counts feed chapter credit they must be forgiving.

### Cited Findings
- Rep definition in datasets: MM-Fit counts a push-up rep "when the body returns to the starting position." — [MM-Fit site](https://github.com/mmfit/mmfit.github.io/blob/master/index.html) [strong, dataset convention]
- Garmin counts when "the arm wearing the watch returns to the starting position." — [Garmin manual](https://www8.garmin.com/manuals/webhelp/vivomove3_3S/EN-US/GUID-FD0DDF57-E3E0-4AD3-871C-88D0160A4B84.html) [industry]
- Two-state definition: PoseRAC defines two salient poses per action and counts transitions between them. ML Kit counts a rep when the "down" class confidence rises above 6/10 and then falls below 4/10. The gap between the thresholds (hysteresis) stops flicker from creating extra counts. — [PoseRAC](https://github.com/MiracleDance/PoseRAC); [RepetitionCounter.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/RepetitionCounter.java); [pose_classification.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose_classification.md) [industry / weak]
- Smoothing and dropouts: the ML Kit sample smooths over 10 frames (alpha 0.2), resets after a 100 ms gap, and does not update the counter when no pose is found. — [EMASmoothing.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/EMASmoothing.java); [PoseClassifierProcessor.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/PoseClassifierProcessor.java) [industry]
- Interruptions are real: RepCount videos deliberately include "action interruptions and inconsistencies". — [TransRAC](https://github.com/SvipRepetitionCounting/TransRAC) [strong]
- Tempo and frame rate: the Full Resolution paper argues that downsampling frames (common in video counters) drops repetitions, which affects fast moves. — [arXiv 2305.13778](https://arxiv.org/abs/2305.13778) [weak, preprint]
- Timed holds, industry: Peloton says its Guide rep tracking "also keeps track of time-based movements, such as planks", with targets in seconds or minutes, counting "how long you hold it" (search summary of Peloton's blog). — [Peloton blog](https://blog.onepeloton.com/peloton-guide-rep-tracking-feature/) [industry]
- Timed holds, earlier Peloton approach: the original Movement Tracker reportedly did not count reps and instead gave credit for doing the cued movement for the full cued duration (fan site, secondary). — [Pelobuddy](https://www.pelobuddy.com/hint-rep-counting-guide/) [weak]
- Credit leniency, industry: a reviewer reported the Peloton tracker credited reps even when they used modifications. Peloton shipped a mid-2023 software update aimed at over-counting (fan site, secondary). — [Pelobuddy](https://www.pelobuddy.com/?p=21310) [weak]
- Camera placement drives detection, and floor moves vs standing moves behave differently (push-ups best diagonal at 90-180 cm). — [JMIR mHealth 2026](https://mhealth.jmir.org/2026/1/e82412/) [strong venue]

### Inferences
All [opinion]: design suggestions derived from the findings above, to be validated with users.

- **Partial reps.** Define each exercise by two key poses plus a range-of-motion (ROM) check on one or two joint angles (for example knee angle at the bottom of a squat). Classify each detected cycle as *full* (ROM threshold met), *partial* (entered the "down" state but missed the ROM threshold) or *none*. Count only full reps towards "required work". Still save partial reps as activity, which matches the spec rule "partial workouts are saved as activity". Use separate, softer ROM thresholds for an approved easier variant (approved shorter or easier versions earn credit). Never tell the user a rep was "wrong technique", only "not counted, try going a bit lower", to stay inside the "no promises of perfect technique" rule.
- **Alternating unilateral moves** (lunges, dead bugs, bird dogs, mountain climbers). Run one state machine per side (left and right knee or hand landmarks). Decide per exercise whether the prescription is "per side" (10 per side = 20 movements) or "per pair", and make the on-screen number and the audio cue use the same convention. Show the left/right split so imbalanced work is visible. For fast alternating moves such as mountain climbers, prefer a time-based prescription over a rep count: fast leg swaps on the floor are the hardest case for pose models and periodicity models alike.
- **Tempo and slow reps.** A pose state machine is tempo-independent by design. Add a minimum dwell time in each key pose (a few frames) to reject jitter, and a maximum cycle time (for example 10-15 s) after which a half-finished cycle is dropped rather than counted. Do not rely on periodicity-based models (RepNet-style) for prescribed slow eccentrics or pauses, because they assume a fairly steady period.
- **Pauses mid-set.** Treat "no pose / out of frame" as *pause*, not *reset* (the ML Kit sample already skips counter updates when no pose is found). Resume counting from the same state.
- **Timed holds** (plank, side plank, wall sit):
  - Start when the hold pose is classified above an enter threshold for about 1 s.
  - Pause (do not stop) when it falls below a lower exit threshold.
  - Allow a grace period of about 2-3 s for brief form breaks before pausing, and do not subtract that time.
  - Credit the hold as done when accumulated in-pose time reaches the target.
  - Save shorter holds as partial activity.
  - Speak the remaining time, not the error, to stay positive.
  - Peloton's "count how long you hold it" is the closest public precedent.
- **Credit safety.**
  - Count a set as "done" when the detected full reps reach, for example, at least 80% of the target, or when the user confirms.
  - Always allow a one-tap correction after the set (Garmin's "edit reps after the set" pattern), so a miscount never turns into lost chapter progress. Missed or miscounted work must never become "debt".

### Gaps
- No peer-reviewed study was found on how users want alternating moves counted, or on acceptable grace periods for holds.
- No validated ROM thresholds were found for "full" vs "partial" bodyweight reps for the general adult population (18-64).
- No public accuracy data was found for hold timing (plank start/stop latency or false pauses).

---

## Q4. Metrics and benchmark datasets

### Takeaway
Video counting papers report **normalised MAE** (|predicted − true| / true, averaged over videos) and **OBO** (share of videos within ±1 of the true count). Some also report OBO error (1 − OBO) or RMSE. Validation studies of apps and wearables tend to report raw MAE in reps, detection rate, or "% within ±1". Only RepCount, MM-Fit, RecoFit and PushupBench are fitness-focused, and only the RecoFit data has a licence clearly usable commercially.

### Cited Findings
- Metric definitions:
  - Normalised MAE and OBO are the RepCount/TransRAC metrics. TransRAC reports MAE 0.44 / OBO 0.29. — [TransRAC paper](https://openaccess.thecvf.com/content/CVPR2022/papers/Hu_TransRAC_Encoding_Multi-Scale_Temporal_Correlation_With_Transformers_for_Repetitive_Action_CVPR_2022_paper.pdf); [repo](https://github.com/SvipRepetitionCounting/TransRAC). (The definitional equations were not re-read this session; the report writer should quote them from the TransRAC paper.)
  - The RepNet note uses OBOA and OBOE, where OBOE = 1 − OBOA. — [arXiv 2411.08878](https://arxiv.org/abs/2411.08878) (search summary) [weak]
  - RMSE is reported on OVR-Ego4D (1.6, aggregator, unverified). — [wizwand](https://www.wizwand.com/paper/68fa744a1e209131cea60d0a) [weak]
  - MultiCounter proposes Period-AP for multi-instance counting. — [arXiv 2409.04035](https://arxiv.org/abs/2409.04035) [weak]
  - Applied studies: the JMIR study reports binary classification accuracy, detection rate and raw MAE in reps. — [JMIR mHealth 2026](https://mhealth.jmir.org/2026/1/e82412/)
  - RecoFit reports "% within ±1 rep". — [RecoFit](https://www.microsoft.com/en-us/research/publication/recofit-using-wearable-sensor-find-recognize-count-repetitive-exercises/)
  - Pūioio reports overall "accuracy". — [arXiv 2308.02420](https://arxiv.org/abs/2308.02420)

- Benchmark datasets (all checked 2026-11-07):

| Dataset | Size | Fitness-specific? | Source videos / sensors | Licence (data) |
|---|---|---|---|---|
| Countix ([RepNet](https://arxiv.org/abs/2006.15418)) | ~8.7K videos (4,588 train / 1,450 val per paper table) | No (general Kinetics actions) | YouTube via Kinetics | **Not verified** (project page blocked) |
| Countix-AV / Extreme Countix-AV ([repo](https://github.com/xiaobai1217/RepetitionCounting)) | not verified | No | Countix subset with audio | **No licence file in repo** |
| RepCount ([page](https://svip-lab.github.io/dataset/RepCount_dataset.html)) | 1,451 videos, ~20K rep start/end labels; Part-B unreleased | Largely workout/sport-like (class list not re-verified) | YouTube (Part-A) | **No licence found**; third parties say academic use |
| RepCount-pose ([PoseRAC](https://github.com/MiracleDance/PoseRAC)) | RepCount re-annotated with 2 salient poses per action | as RepCount | as RepCount | Not stated (code MIT) |
| UCFRep ([ESCounts README](https://github.com/sinhasaptarshi/EveryShotCounts)) | not verified | No (UCF101 subset) | UCF101 | Not verified |
| QUVA ([Full Res. paper](https://arxiv.org/abs/2305.13778)) | not verified | No | — | Not verified |
| OVR ([arXiv](https://arxiv.org/abs/2407.17085)) | ~72.5K videos, with text descriptions | No (general, exo + ego) | Kinetics + Ego4D | **Not verified**; Ego4D terms also apply |
| MM-Fit ([site](https://github.com/mmfit/mmfit.github.io/blob/master/index.html)) | 800+ min, 10 exercises, 5 devices, RGB-D + pose + IMU | **Yes** | own recordings | **None stated, so all rights reserved** |
| RecoFit / Microsoft ([repo](https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors)) | 200+ participants, arm IMU (accel + gyro) | **Yes** (gym exercises) | own recordings | **CDLA-Permissive-2.0 (commercial-friendly)** |
| PushupBench ([summary](https://www.emergentmind.com/papers/2604.23407)) | 446 long-form clips | **Yes** | not verified | Not verified (preprint) |

### Inferences
- [opinion] Delva should report, on its own held-out bodyweight test set:
  - normalised MAE and OBO, for comparability with the literature;
  - exact-match rate per set;
  - **"credit agreement"**: the share of sets where auto-count and ground truth agree on done vs partial under Delva's credit rule. This is the metric that matters for chapter progress;
  - for holds: start and stop latency, false-pause rate, and absolute error in held seconds.
- [opinion] Normalised MAE flatters long sets and punishes short ones. Delva's short 15-20 min sessions with small rep targets (5-15) make the ±1 rule (OBO) and the credit agreement more meaningful than MAE.
- [opinion] No public dataset matches Delva's catalogue (no-equipment, home, phone camera on the floor, adults 18-64). Delva will need its own consented, licensed recordings with per-rep start/end labels, following the RepCount annotation style.

### Gaps
- The sizes of UCFRep, QUVA and Countix-AV, and RepCount's exact class list, were not re-verified (search budget).
- No fitness dataset with timed-hold annotations (plank start/stop) was found.

---

## Q5. What commercial products publicly document about rep counting (industry practice)

### Takeaway
Public documentation describes *mechanics* (when a rep is counted, when counts appear, how to edit) but gives **no accuracy figures**. Both documented products let the user correct counts or give credit by duration, which is a pattern Delva should copy because its credit rules depend on counts.

### Cited Findings
- Garmin:
  - Strength-training rep counting is on by default.
  - The count appears after at least 4 reps (6 on older models).
  - It counts when the watch arm returns to the start position.
  - Leg exercises may not be counted.
  - The user can edit the reps after each set and edit again later in Garmin Connect.
  - No accuracy figure is published.
  - (Search summary of Garmin manuals.) — [Garmin manual (vívomove 3)](https://www8.garmin.com/manuals/webhelp/vivomove3_3S/EN-US/GUID-FD0DDF57-E3E0-4AD3-871C-88D0160A4B84.html); [Garmin manual (vívosmart 3)](https://www8.garmin.com/manuals/webhelp/vivosmart3/EN-US/GUID-96F2028E-739A-4FFA-A904-E884A7CD0242.html) [industry]
- Garmin user forum: one user reports 8 to 13 counted reps for a set of 10. — [Garmin forum thread](https://forums.garmin.com/sports-fitness/sports-fitness/f/vivoactive-3-3-music/354934/editing-reps-during-a-workout-that-includes-rounds) [weak: anecdote]
- Peloton Guide (camera device): rep tracking with targets, and timed-hold tracking for planks. — [Peloton blog](https://blog.onepeloton.com/peloton-guide-rep-tracking-feature/) [industry]
- Peloton Guide, earlier "Movement Tracker": credit for doing the cued movement for its duration, without counting reps (secondary). — [Pelobuddy](https://www.pelobuddy.com/hint-rep-counting-guide/) [weak]
- Google's own sample counter ships with no accuracy claim. — [MediaPipe pose_classification.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose_classification.md) [industry]

### Inferences
- [opinion] Industry practice converges on: (1) show counts only once confident (Garmin's 4-6 rep delay); (2) let users correct after the set; (3) for camera products, fall back to "credit for doing the movement for the cued time". Delva's "approved shorter version" and "partial saved as activity" rules map naturally onto (2) and (3).
- [opinion] openGym (comparison only; AGPL-3.0, so no code reuse) ships watch apps, per its own project docs. Nothing from it was used here.

### Gaps
- Documentation from Apple (watchOS), Samsung Galaxy Watch, Tempo, Tonal, Kemtai, Sency and others was **not checked**: the search budget ran out. These should be reviewed in a follow-up, and only their primary help pages should be accepted.
- No commercial product with a published, independently validated rep-count accuracy was found.

---

## Q6. Licence red flags

### Takeaway
Code is mostly permissive (Apache-2.0 / MIT), but **weights and datasets are almost never clearly licensed**. TransRAC adds a custom "Anti 996" licence, two key repos have no licence at all, and most video datasets point to YouTube content the annotators do not own. The only clearly commercial-friendly fitness data found is the RecoFit/Microsoft IMU set (CDLA-Permissive-2.0).

### Cited Findings
- **Custom licence:** TransRAC's LICENSE is Apache-2.0 plus the "Anti 996" License v1.0 (Draft), with labour-law compliance and notice-display obligations. — [LICENSE](https://github.com/SvipRepetitionCounting/TransRAC/blob/main/LICENSE)
- **No licence (all rights reserved):** xiaobai1217/RepetitionCounting (Sight and Sound) — [repo](https://github.com/xiaobai1217/RepetitionCounting); Xiaodomgdomg/Deep-Temporal-Repetition-Counting; materight/RepNet-pytorch; confifu/RepNet-Pytorch. — GitHub API, checked 2026-11-07
- **Dataset licence missing:** MM-Fit (none on site or README) — [site source](https://github.com/mmfit/mmfit.github.io/blob/master/index.html); RepCount (none found; third parties say academic use) — [page](https://svip-lab.github.io/dataset/RepCount_dataset.html).
- **Dataset licence not verifiable this session:** Countix and OVR (sites.google.com blocked). The google-research monorepo's CC BY 4.0 applies to datasets *in that repo*; whether Countix is covered was not verified. — [google-research README](https://github.com/google-research/google-research)
- **Weights without a licence statement:** RepNet checkpoint (folder README silent) — [repnet](https://github.com/google-research/google-research/tree/master/repnet); TransRAC (OneDrive/Baidu) — [repo](https://github.com/SvipRepetitionCounting/TransRAC); ESCounts and IVAC-P2L (Google Drive) — [ESCounts](https://github.com/sinhasaptarshi/EveryShotCounts), [IVAC-P2L](https://github.com/hwang-cs-ime/IVAC-P2L). ESCounts also depends on VideoMAE-v2 weights (licence not verified).
- **Permissive and clear:**
  - MediaPipe, ML Kit samples and mediapipe-samples code: Apache-2.0. — GitHub API, checked 2026-11-07
  - PoseRAC, ESCounts and IVAC-P2L code: MIT.
  - mm-fit code: MIT.
  - RecoFit data: CDLA-Permissive-2.0, which places no obligations on trained models. — [LICENSE](https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors/blob/main/LICENSE)
- **Copyleft:** openGym is AGPL-3.0. It is a comparison point only, and its code must not be copied into a closed commercial app (per the brief).

### Inferences
- [opinion] Weights trained on YouTube-derived datasets with no clear data licence (RepCount, Countix, UCFRep, OVR) carry provenance risk for a commercial app, even when the code is MIT. The safest path is: permissive code and pose models, plus Delva's own consented training clips, plus optionally the RecoFit IMU data for watch work.
- [opinion] Still to check before shipping: the MediaPipe pose model card licence and the ML Kit SDK terms (closed-source SDK, Google terms).

### Gaps
- The MediaPipe pose weights licence, the ML Kit terms, the Countix and OVR licences, and the Ego4D and VideoMAE-v2 terms were not verified.

---

## Q7. Gaps and open questions for Delva user research

### Takeaway
The biggest unknowns are human, not algorithmic: how users want alternating moves counted, how much miscounting they tolerate before losing trust, where they can realistically place a phone at home, and what feels fair for hold timing. Since counts gate chapter progress, these need testing before thresholds are fixed.

### Cited Findings
- Camera placement strongly changes accuracy, and the best results came at 180-200 cm diagonal or front. That may be hard in small homes. — [JMIR mHealth 2026](https://mhealth.jmir.org/2026/1/e82412/)
- Users of a commercial watch report counts of 8-13 for a set of 10 and rely on editing. — [Garmin forum](https://forums.garmin.com/sports-fitness/sports-fitness/f/vivoactive-3-3-music/354934/editing-reps-during-a-workout-that-includes-rounds) [weak]

### Inferences (questions to test) [opinion]
1. Alternating moves: do users expect "10 lunges" to mean 10 per leg or 5 per leg? Does the answer differ between beginners and advanced users, and between programs (First Steps vs Build Strength)?
2. Trust threshold: after how many visible miscounts per session do users stop trusting the counter or turn it off? Do they prefer a counter that under-counts (strict) or over-counts (generous)?
3. Correction flow: is a one-tap "that was 10" after each set acceptable within a 15-20 min session, or too much friction?
4. Phone placement: can users in typical homes get the full body in frame for floor moves (planks, dead bugs, bird dogs)? Which placement guidance works?
5. Holds: what grace period feels fair when the hips sag briefly? Should the timer pause or keep running with a gentle cue?
6. Partial reps: should partial reps be shown at all, or only logged? Does showing them motivate or discourage, especially in First Steps and Move Freely?
7. Credit transparency: should users see why a set counted as "partial", given the spec's "no promises of perfect technique" rule?
8. Demographics: is accuracy equal across ages 18-64, body sizes, clothing and lighting? No data found; Delva needs a stratified test set.
9. Audio interference: if Delva plays audio feedback, audio-visual counters (Sight and Sound) are a poor fit, since the app's own audio would contaminate the signal.

### Gaps
- Not checked because the search budget ran out: hold-timing literature (plank or wall-sit detection), per-side counting conventions in exercise science, commercial documentation beyond Garmin and Peloton, CountLLM numbers, and citation counts for all papers.
- Hosts to allow for a follow-up pass: `sites.google.com`, `developers.google.com`, `api.semanticscholar.org`.

### Source list
- RepNet paper (CVPR 2020): https://openaccess.thecvf.com/content_CVPR_2020/papers/Dwibedi_Counting_Out_Time_Class_Agnostic_Video_Repetition_Counting_in_the_CVPR_2020_paper.pdf ; https://arxiv.org/abs/2006.15418
- RepNet blog: https://www.research.google/blog/repnet-counting-repetitions-in-videos/
- RepNet code folder: https://github.com/google-research/google-research/tree/master/repnet ; monorepo licence statement: https://github.com/google-research/google-research
- RepNet re-evaluation note (preprint): https://arxiv.org/abs/2411.08878
- Countix leaderboard (aggregator): https://hyper.ai/en/sota/tasks/repetitive-action-counting/benchmark/repetitive-action-counting-on-countix
- TransRAC: https://github.com/SvipRepetitionCounting/TransRAC ; https://github.com/SvipRepetitionCounting/TransRAC/blob/main/LICENSE ; https://openaccess.thecvf.com/content/CVPR2022/papers/Hu_TransRAC_Encoding_Multi-Scale_Temporal_Correlation_With_Transformers_for_Repetitive_Action_CVPR_2022_paper.pdf ; https://arxiv.org/abs/2204.01018
- RepCount: https://svip-lab.github.io/dataset/RepCount_dataset.html ; https://huggingface.co/datasets/lmms-lab-eval/repcount/blob/main/README.md
- Sight and Sound: https://github.com/xiaobai1217/RepetitionCounting ; https://arxiv.org/abs/2103.13096
- ESCounts: https://github.com/sinhasaptarshi/EveryShotCounts ; https://arxiv.org/abs/2403.18074 ; https://research-information.bris.ac.uk/en/publications/every-shot-counts-using-exemplars-for-repetition-counting-in-vide/
- CountLLM: https://openaccess.thecvf.com/content/CVPR2025/html/Yao_CountLLM_Towards_Generalizable_Repetitive_Action_Counting_via_Large_Language_Model_CVPR_2025_paper.html ; https://arxiv.org/abs/2503.17690
- OVR (preprint): https://arxiv.org/abs/2407.17085 ; https://www.wizwand.com/paper/68fa744a1e209131cea60d0a
- Full Resolution Repetition Counting (preprint): https://arxiv.org/abs/2305.13778
- PoseRAC (preprint): https://github.com/MiracleDance/PoseRAC ; https://arxiv.org/abs/2303.08450 ; Joint-based PoseRAC: https://arxiv.org/abs/2308.08632
- IVAC-P2L (IEEE TMM 2025): https://github.com/hwang-cs-ime/IVAC-P2L ; https://arxiv.org/abs/2403.11959
- MultiCounter (preprint): https://arxiv.org/abs/2409.04035 ; temporal self-similarity (preprint): https://arxiv.org/abs/2407.09431 ; PushupBench summary: https://www.emergentmind.com/papers/2604.23407
- MediaPipe pose: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md ; pose classification: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose_classification.md
- ML Kit sample code: https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/RepetitionCounter.java ; .../PoseClassifier.java ; .../EMASmoothing.java ; .../PoseClassifierProcessor.java (same directory)
- ML Kit guide (not fetched, host blocked): https://developers.google.com/ml-kit/vision/pose-detection/classifying-poses
- JMIR mHealth 2026 (Oliosi et al.): https://mhealth.jmir.org/2026/1/e82412/
- Pūioio (preprint): https://arxiv.org/abs/2308.02420
- RecoFit: https://www.microsoft.com/en-us/research/publication/recofit-using-wearable-sensor-find-recognize-count-repetitive-exercises/ ; https://microsoft.com/en-us/research/wp-content/uploads/2016/12/p3225-morris.pdf ; https://dblp.uni-trier.de/rec/conf/chi/MorrisSGK14.html ; slides: https://www.slideshare.net/slideshow/recofit-using-a-wearable-sensor-to-find-recognize-and-count-repetitive-exercises/59871510
- RecoFit dataset + CDLA-Permissive-2.0: https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors ; https://github.com/microsoft/Exercise-Recognition-from-Wearable-Sensors/blob/main/LICENSE
- MM-Fit: https://doi.org/10.1145/3432701 ; https://github.com/KDMStromback/mm-fit ; https://mmfit.github.io/ ; https://github.com/mmfit/mmfit.github.io/blob/master/index.html
- Soro et al. 2019 (Sensors): https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6387025/
- Viewpoint-invariant counting (preprint): https://arxiv.org/abs/2107.13760
- Sports Medicine 2025 systematic review (exercise classification): https://link.springer.com/article/10.1007/s40279-025-02281-8
- Garmin manuals: https://www8.garmin.com/manuals/webhelp/vivomove3_3S/EN-US/GUID-FD0DDF57-E3E0-4AD3-871C-88D0160A4B84.html ; https://www8.garmin.com/manuals/webhelp/vivosmart3/EN-US/GUID-96F2028E-739A-4FFA-A904-E884A7CD0242.html ; forum: https://forums.garmin.com/sports-fitness/sports-fitness/f/vivoactive-3-3-music/354934/editing-reps-during-a-workout-that-includes-rounds
- Peloton: https://blog.onepeloton.com/peloton-guide-rep-tracking-feature/ ; secondary: https://www.pelobuddy.com/hint-rep-counting-guide/ ; https://www.pelobuddy.com/?p=21310
