# B. Exercise form assessment and technique-error detection from video and pose

Date checked for every number, star count, licence and date below: **2026-11-07**.

**How this was researched, and its limits (read first).**
- GitHub metadata came from `gh api search/repositories`, and repo pages were read with WebFetch on github.com. Both worked.
- Papers and dataset pages were reached only through WebSearch result summaries. WebFetch could not resolve these hosts in this session: arxiv.org, openaccess.thecvf.com, fit3d.imar.ro, www.qualcomm.com, docs.voxel51.com, senakicir.github.io, pmc.ncbi.nlm.nih.gov and api.semanticscholar.org. To read the primary PDFs and licence pages, those hosts need to be allowed in the session's network settings.
- The shared WebSearch budget ran out partway through. Commercial-app documentation, motor-learning feedback-frequency evidence and HCI trust studies specific to exercise could not be searched at all.
- **No citation counts could be retrieved.** Every item is marked "citation count not verified".
- **Contributor counts:** the GitHub pages showed a Contributors heading with no number, so every repo is marked "not verified".
- Tags used: **[V]** means verified this session from the linked page or search result. **[PK]** means prior knowledge from my training data, not re-verified this session; the writer should verify a [PK] claim before relying on it or drop it. Evidence labels follow the brief: strong evidence / weak evidence / opinion-or-industry practice.
- openGym (AGPL-3.0) is only a comparison point. It is a logging tracker with no camera-based form assessment, so it offers no prior art for this area.

---

## 1. The best items (datasets, papers, repos)

### Takeaway
No public dataset combines Delva's exercises (bodyweight, home, single phone camera) with error labels and a licence that permits commercial use. Every form-error dataset verified here is either research-only or non-commercial, or has no stated licence. The closest in content are EC3D (squats, lunges and planks with error labels, but only 4 subjects and no licence), EgoExo-Fitness (push-ups and other bodyweight moves with technical-keypoint verification, data under a signed agreement) and the 2026 FitAQA benchmark (30 bodyweight exercises, preprint, licence unknown). Delva should treat all of them as sources of taxonomy and evaluation ideas, not as training data, and plan to collect and label its own data.

### Cited Findings (item cards)

#### 1.1 Fitness-AQA: "Domain Knowledge-Informed Self-Supervised Representations for Workout Form Assessment" (Parmar, Gharat, Rhodin, ECCV 2022)
- **Link:** [Springer chapter](https://link.springer.com/chapter/10.1007/978-3-031-19839-7_7), [arXiv 2202.14019](https://arxiv.org/pdf/2202.14019), [GitHub ParitoshParmar/Fitness-AQA](https://github.com/ParitoshParmar/Fitness-AQA)
- **Type:** paper + dataset + repo.
- **What it is:** an in-the-wild workout form dataset for BackSquat, OverheadPress and BarbellRow [V] ([GitHub](https://github.com/ParitoshParmar/Fitness-AQA)), with videos compiled from video-sharing sites such as Instagram and YouTube [V, search summary] ([search result citing the arXiv paper](https://arxiv.org/pdf/2202.14019)). The labelled back-squat errors are Knees Inward (KIE), Knees Forward (KFE), Convex Rounded Back (CVRB), Concave Rounded Back (CCRB) and Shallow Squat (SS), with up to two errors annotated per video [V, search summary] ([arXiv](https://arxiv.org/pdf/2202.14019)). According to secondary summaries, expert trainers annotated it (one source says two certified trainers), with a 70/15/15 split and roughly 10,000 unlabelled in-the-wild clips per exercise used for self-supervision [V, search summary, secondary sources] ([ResearchGate: Fine-Tuning LMMs for Fitness AQA](https://www.researchgate.net/publication/392650191_Fine-Tuning_Large_Multimodal_Models_for_Fitness_Action_Quality_Assessment)).
- **Reported result:** on knees-inward detection, the image-based self-supervised model (CVCSPC) reached 95.92% accuracy against 89.80% for a 3D-pose model (HMR-TDM), in a controlled-environment setting [V, search summary of a third paper citing Parmar 2022] ([arXiv](https://arxiv.org/pdf/2202.14019)). The figure comes second-hand and should be checked against Table X of the paper.
- **Why it matters for Delva:** feature (1), vision form tracking. It is the most-cited form-error taxonomy for squats (knee valgus, forward knee travel, back rounding and arching, depth) and the main evidence that learned image features can beat a pose-only pipeline when pose estimation is unreliable.
- **Credibility:** ECCV 2022 (peer-reviewed, top venue) [V]. Repo: 118 stars, last push 2026-02-10, not archived, owner ParitoshParmar (individual, first author), contributors not verified, licence reported by GitHub as NOASSERTION (checked 2026-11-07) [V]. The repo is under 1,000 stars; it is included as the official code and data of a key ECCV paper. Citation count not verified.
- **Licence:** the dataset licence is `fitness_aqa_dataset_license.pdf`: "This dataset shall only be used for non-commercial purposes." Access is by request form [V] ([GitHub](https://github.com/ParitoshParmar/Fitness-AQA)). No code licence is shown. The underlying videos come from Instagram and YouTube, so they are third-party copyrighted content. **Not usable in a commercial product, neither the data nor any model trained on it.**
- **Ideas to borrow:** a per-exercise list of binary error flags, with up to two errors per repetition rather than one quality score; single-repetition clips; self-supervision on unlabelled clips to cut labelling cost.
- **Limitations:** barbell exercises in gyms, not bodyweight at home; in-the-wild camera angles; non-commercial licence; copyrighted source videos.

#### 1.2 EC3D: "3D Pose Based Feedback for Physical Exercises" (Zhao, Kiciroglu, Vinzelberg, Cheng, Fua, Salzmann; ACCV 2022)
- **Link:** [CVF open access](https://openaccess.thecvf.com/content/ACCV2022/html/Zhao_3D_Pose_Based_Feedback_For_Physical_Exercises_ACCV_2022_paper.html), [arXiv 2208.03257](https://arxiv.org/pdf/2208.03257), [EPFL Infoscience](https://infoscience.epfl.ch/record/298412?ln=en), [GitHub](https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises)
- **Type:** paper + dataset + repo.
- **What it is:** a dataset covering squats, lunges and planks, each "done correctly and with mistakes, following specific instructions", by 4 subjects. It was recorded with 4 GoPro cameras in a ring at 30 fps and 1920x1080, with subjects 1 to 3 used for training and subject 4 for testing [V, search summary of paper] ([arXiv](https://arxiv.org/pdf/2208.03257)). The data file holds 29,789 frames of 25-joint 3D skeletons with labels [V] ([GitHub](https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises)). One result row in the supplement is labelled "Hunch back" [V] ([supplement](https://openaccess.thecvf.com/content/ACCV2022/supplemental/Zhao_3D_Pose_Based_ACCV_2022_supplemental.pdf)). [PK] The full label set as I recall it: squat (correct, feet too wide, knees inward, not low enough, front bent), lunge (correct, not low enough, knee passes toe), plank (correct, arched back, hunch back). Verify against the paper's dataset table.
- **Reported result:** mistake identification accuracy 90.9%; mistakes successfully corrected 94.2% [V] ([GitHub README](https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises)). The test set is a single subject, so the accuracy says little about generalisation.
- **Why it matters for Delva:** features (1) form tracking and (2) audio feedback. It is the only verified dataset with error labels on three of Delva's own exercises (squat, lunge, plank), and its "classify, then correct" two-branch design maps directly onto choosing which audio cue to play.
- **Credibility:** ACCV 2022 (peer-reviewed; mid-tier CV venue) [V]. EPFL CVLab (academic lab) [V via Infoscience record]. Repo: 40 stars, last push 2022-10-05, not archived, contributors not verified (checked 2026-11-07) [V]. Inactive for more than 18 months. Label: **archived in practice; included as the official code of a key paper.** Citation count not verified.
- **Licence:** **the repo has no LICENSE file, so all rights are reserved by default** [V]. The data is on Google Drive with no data licence stated [V]. **Neither code nor data can be used commercially without written permission.**
- **Ideas to borrow:** a small set of mutually exclusive error classes per exercise; a 3D-pose input representation; a correction branch that outputs the corrected pose, which can justify the cue ("lower your hips").
- **Limitations:** 4 subjects; mistakes were acted on instruction, not natural; multi-camera lab setup, not a single phone; no licence.

#### 1.3 Fit3D and AIFit: "AIFit: Automatic 3D Human-Interpretable Feedback Models for Fitness Training" (Fieraru et al., CVPR 2021)
- **Link:** [mlanthology record](https://mlanthology.org/cvpr/2021/fieraru2021cvpr-aifit), DOI 10.1109/CVPR46437.2021.00979 [V], [Fit3D site](https://fit3d.imar.ro/) (blocked in this session), [Fit3D publications page](https://fit3d.imar.ro/publications)
- **Type:** paper + dataset.
- **What it is:** Fit3D, with 611 multi-view sequences, at least 5 annotated repetitions per sequence and 2,964,236 accurate ground-truth 3D skeletons [V, search summary of the project page] ([fit3d.imar.ro](https://fit3d.imar.ro/)). [PK] AIFit compares a trainee's repetitions with a trainer's reference performance and reports the most discriminative, human-interpretable differences, rather than learning from labelled error classes. [PK] The paper describes about 47 exercises with marker-based motion capture; the "47 exercises" figure was **not** confirmed in this session.
- **Why it matters for Delva:** feature (2), audio feedback. It is the reference-comparison approach (user against an instructor template) that needs no error labels, which suits a curated program in which every exercise has an instructor demo.
- **Credibility:** CVPR 2021 (top venue) [V]; IMAR (Institute of Mathematics of the Romanian Academy) with Lund University [PK]. No official GitHub repo was found by name search [V: `gh` search for "AIFit" returned only unrelated hobby repos]. Citation count not verified.
- **Licence:** **not verified**, because fit3d.imar.ro was unreachable. The publications page only asks users to cite the paper [V, search summary]. [PK] IMAR datasets (Human3.6M, Fit3D, CHI3D) are normally released under research-only, non-commercial agreements. Treat Fit3D as non-commercial until the licence page is read.
- **Ideas to borrow:** template comparison against the instructor's demo; per-repetition segmentation; choosing the single most important deviation to verbalise, which limits cue overload.
- **Limitations:** lab capture with markers and multiple views; reference comparison flags any deviation from one trainer's style, not necessarily an error.

#### 1.4 QEVD and FIT-COACH: "What to Say and When to Say It: Live Fitness Coaching as a Testbed for Situated Interaction" (Panchal et al., Qualcomm AI Research, NeurIPS 2024 Datasets and Benchmarks)
- **Link:** [NeurIPS proceedings](https://proceedings.neurips.cc/paper_files/paper/2024/hash/8aa695b5d6bf9e958d4e56b22c9b859d-Abstract.html), [arXiv 2407.08101](https://arxiv.org/abs/2407.08101), [Qualcomm dataset page](https://www.qualcomm.com/developer/software/qevd-dataset) (blocked), [GitHub Qualcomm-AI-research/FitCoach](https://github.com/Qualcomm-AI-research/FitCoach)
- **Type:** paper + dataset + repo.
- **What it is:** the Qualcomm Exercise Video Dataset. QEVD-FIT-300K holds short clips with question-answer annotations; QEVD-FIT-COACH holds long workout videos with time-stamped live feedback, including mistake feedback [V, search summary] ([arXiv](https://arxiv.org/pdf/2407.08101v2)). The Qualcomm page describes 149 training workout videos (structured workouts of 4 to 6 exercises) and a separate 74-video benchmark, with distinct participants [V, search summary of the Qualcomm page]. Another summary puts the total at "over 474 hours"; the FIT-COACH benchmark is about 4.5 hours in segments of roughly 3.5 minutes [V, secondary summary] ([chatpaper](https://chatpaper.com/paper/39270)).
- **Reported result:** the authors find live coaching "largely unsolved", with "significant room for improvement" for existing vision-language models [V, search summary] ([arXiv](https://arxiv.org/pdf/2407.08101v2)). Their streaming baseline, Stream-VLM, decides both when and what to say; a third-party summary reports a temporal F-score of 0.59 against 0.50 for the comparison model [V, secondary; check the paper's tables] ([chatpaper](https://chatpaper.com/paper/39270)).
- **Why it matters for Delva:** features (2) real-time audio feedback and (3) rep counting. It is the only peer-reviewed benchmark that scores the **timing** of spoken feedback, the "what to say and when" problem Delva's audio coach faces, and it is the strongest evidence that off-the-shelf VLMs are not ready for live coaching.
- **Credibility:** NeurIPS 2024 D&B (peer-reviewed) [V]. Qualcomm AI Research (major company). FitCoach repo: 13 stars, last push 2024-12-16, BSD-3-Clause-Clear per the GitHub API, contributors not verified (checked 2026-11-07) [V]. Inactive for more than 18 months; included as the official code of a key paper. Citation count not verified.
- **Licence:**
  - Code: BSD-3-Clause-Clear per the GitHub metadata, but the repo page also lists a "Software Evaluation License - Fitcoach.doc", which is **inconsistent**; read both before any use [V] ([GitHub](https://github.com/Qualcomm-AI-research/FitCoach)).
  - Weights: Stream-VLM weights come from a GitHub release with no licence stated, and the model also needs LLaMA-2-7B and LLaMA-3-70B-Instruct weights, which carry Meta's Llama licences [V].
  - Data: the Voxel51 dataset card names the "Qualcomm Data Research License" (a PDF dated February 2025) [V, search summary; PDF not read] ([Voxel51](https://docs.voxel51.com/dataset_zoo/datasets_hf/qualcomm_exercise_video_dataset_benchmark.html)). The name implies research-only use. **Treat as non-commercial until the PDF is read.** The CC BY-NC-ND 4.0 seen on an arXiv mirror most likely covers the paper text only [V, search summary].
- **Ideas to borrow:** separate metrics for **when** to speak (temporal precision and recall of feedback events) and **what** to say; feedback treated as a stream with the option to stay silent; structured workouts of 4 to 6 exercises, close to Delva's 15 to 20 minute sessions.
- **Limitations:** research licence; VLM baselines are heavy (a 7B to 70B LLM backbone), far from on-device real time on a phone; feedback quality is scored against one coach's style.

#### 1.5 EgoExo-Fitness: "Towards Egocentric and Exocentric Full-Body Action Understanding" (Li et al., ECCV 2024)
- **Link:** [ECVA paper page](https://ecva.net/papers/eccv_2024/papers_ECCV/html/3057_ECCV_2024_paper.php), [PDF](https://www.ecva.net/papers/eccv_2024/papers_ECCV/papers/03057.pdf), [GitHub iSEE-Laboratory/EgoExo-Fitness](https://github.com/iSEE-Laboratory/EgoExo-Fitness)
- **Type:** paper + dataset + repo.
- **What it is:** fitness videos from synchronised egocentric and fixed exocentric cameras. The annotations are two-level temporal boundaries (action and sub-step), **technical keypoint verification** (whether each technical point of the exercise was met), natural-language comments on execution, and quality scores. The authors say no earlier dataset had this kind of judgement annotation [V] ([ECVA](https://ecva.net/papers/eccv_2024/papers_ECCV/html/3057_ECCV_2024_paper.php); [GitHub](https://github.com/iSEE-Laboratory/EgoExo-Fitness)). Benchmarks include cross-view skill determination and guidance-based execution verification [V]. [PK] The action list includes bodyweight moves such as push-ups, kneeling push-ups, squats, sit-ups and jumping jacks; **not confirmed in this session**.
- **Why it matters for Delva:** features (1) and (2). "Technical keypoint verification" is the closest public analogue to Delva's likely design: a short checklist of technique criteria per exercise, each checked yes or no and turned into a cue. If the exercise list is confirmed, it covers Delva's push-up regressions.
- **Credibility:** ECCV 2024 (top venue) [V]. Sun Yat-sen University iSEE Lab (academic lab) [V via repo owner and email domain]. Repo: 40 stars, last push 2025-04-08, not archived, contributors not verified (checked 2026-11-07) [V]. Just outside the 18-month window; included as the official code of a key paper. Citation count not verified.
- **Licence:** code Apache-2.0 [V]. Data requires signing `License_Agreement.pdf` and emailing it to the authors; the agreement text was not read [V] ([GitHub](https://github.com/iSEE-Laboratory/EgoExo-Fitness)). The dataset is also on Hugging Face (`Lymann/EgoExo-Fitness`) [V]. **Data terms unknown; assume research-only until read.** The Apache-2.0 code is usable commercially.
- **Ideas to borrow:** a checklist of technical keypoints per exercise as the unit of labelling and feedback; natural-language comments as targets for cue wording.
- **Limitations:** an egocentric (head-worn) camera is not Delva's setup, although the exocentric view is relevant; data terms unknown.

#### 1.6 FLEX: "A Large-Scale Multi-Modal Multi-Action Dataset for Fitness Action Quality Assessment" (Yin et al., arXiv 2506.03198, **preprint**)
- **Link:** [arXiv 2506.03198](https://arxiv.org/pdf/2506.03198), [arXiv v4 HTML (CC BY-NC-SA 4.0)](https://arxiv.org/html/2506.03198v4), [GitHub haoyin116/flex](https://github.com/haoyin116/flex)
- **Type:** dataset + paper (preprint).
- **What it is:** 7,512 samples (40+ hours) from 38 subjects doing 20 **weight-loaded** exercises, 10 repetitions each. It has 5-view RGB video, motion-capture 3D pose, sEMG and heart and breathing rate. Professionals annotated keysteps, **error types**, AQA scores and corrective feedback, organised into a Fitness Knowledge Graph that links actions, steps, errors, muscles and corrections. The authors list male-only participants as a limitation [V, search summary] ([arXiv](https://arxiv.org/html/2506.03198v1)).
- **Why it matters for Delva:** feature (2). Its knowledge graph linking each error to its corrective feedback is a clean design pattern for an audio-cue library.
- **Credibility:** preprint, not peer-reviewed as far as verified; citation count not verified. GitHub: 48 stars on the page (checked 2026-11-07) [V]. `gh` search for `repo:HaoYin116/FLEX` failed and the README now describes a "MyoMechanix dataset" and arXiv:2608.26094 (2026), so the repo appears to have been repurposed or renamed; **flag as inconsistent**. No code licence file; README says code "Coming Soon" [V] ([GitHub](https://github.com/haoyin116/flex)).
- **Licence:** data by request only: "Academic and research use only", "No redistribution", no commercial exploitation [V]. Paper CC BY-NC-SA 4.0 [V, search summary].
- **Ideas to borrow:** the knowledge graph (exercise to step to error to muscle to cue) as Delva's content model.
- **Limitations:** weighted gym exercises, men only, preprint, non-commercial.

#### 1.7 Kaia Motion Coach validation: "App-Based Feedback for Rehabilitation Exercise Correction in Patients With Knee or Hip Osteoarthritis: Prospective Cohort Study" (Biebl et al., JMIR 2021; 23(7):e26658)
- **Link:** [JMIR](https://www.jmir.org/2021/7/e26658), [PMC8317029](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8317029/)
- **Type:** paper (validation study of a commercial product).
- **What it is:** people with knee or hip osteoarthritis each did 6 exercises (23 rated segments). Physiotherapists rated execution on a 6-point Likert scale (0 insufficient to 5 excellent). Agreement between app and physiotherapists was 0.828 (percent agreement), against 0.833 between two physiotherapists. The authors concluded non-inferiority (P<.001), with no detectable difference in any of the six exercises. The app uses only the smartphone's front camera and machine learning [V, search summary] ([JMIR](https://www.jmir.org/2021/7/e26658)). Kaia employees were co-authors; funding came from the state of Bavaria [V, search summary].
- **Why it matters for Delva:** feature (1), and a validation template. This is the only peer-reviewed, product-level validation of phone-camera form feedback found in this session. Its design is a model for Delva: app versus expert agreement, benchmarked against expert versus expert agreement as the ceiling.
- **Credibility:** JMIR (reputable, peer-reviewed). Small single-site cohort; industry co-authors (COI). Citation count not verified. **Weak to moderate evidence** for one product on rehab exercises.
- **Licence:** not applicable (a paper). Kaia's software is proprietary.
- **Ideas to borrow:** report app versus expert agreement next to inter-expert agreement; rate per exercise and per set, not only overall.
- **Limitations:** percent agreement, not kappa (agreement by chance not corrected, as far as the summary shows); rehab population; small sample; COI.

#### 1.8 Vision-language models for form judgement (2026 evidence, weak)
- **"Can Vision Language Models Judge Action Quality? An Empirical Evaluation"** ([arXiv 2604.08294](https://arxiv.org/pdf/2604.08294); a supplement is hosted at [CVF CVPR 2026 Workshops, SAUAFG](https://openaccess.thecvf.com/content/CVPR2026W/SAUAFG/supplemental/Monte_e_Freitas_Can_Vision_Language_CVPRW_2026_supplemental.pdf), so it is a peer-reviewed workshop paper). It tests VLMs on visual question answering, error detection, technical-guideline verification and score regression, with examples that include push-ups and deep squats [V, search summary]. A secondary summary reports that general-purpose vision LLMs were **unreliable** for action quality assessment across classification, error detection and regression [V, secondary summary only; models and numbers not seen] ([emergentmind summary](https://www.emergentmind.com/papers/2604.08294)). **Weak evidence** (workshop paper; findings seen only through a summary).
- **FitAQA: "A Benchmark of Fitness Action Quality Assessment for Multimodal Large Language Models"** ([arXiv 2608.08736](https://arxiv.org/html/2608.08736), **preprint**, 2026). 2,219 videos and 5,512 question-answer pairs across **30 bodyweight exercises**, with a shared form-error taxonomy built with sports-science experts and tasks split into perception, judgement and temporal grounding [V, search summary]. Model results and licence **not verified**. It is the most Delva-relevant benchmark found (bodyweight exercises, a cross-exercise error taxonomy) and should be read in full once arxiv.org is reachable.
- **Why it matters for Delva:** feature (2). Do not route live form cues through a general VLM; at most use one for an offline, post-session summary, and verify that first.

#### 1.9 False alarms and automation trust: Dixon, Wickens and McCarley (2007), "On the Independence of Compliance and Reliance: Are Automation False Alarms Worse Than Misses?" Human Factors 49(4):564-572
- **Link:** [dblp record](https://dblp1.uni-trier.de/rec/journals/hf/DixonWM07.html); [related DTIC report](https://apps.dtic.mil/sti/pdfs/ADA496817.pdf)
- **Type:** paper (human factors, foundational for this question).
- **What it is:** in this experiment, automation false alarms were more damaging to overall performance than misses, and the authors concluded that compliance and reliance are not entirely independent, a revision of Dixon and Wickens (2006) [V, search summary] ([dblp](https://dblp1.uni-trier.de/rec/journals/hf/DixonWM07.html)). The "cry wolf" mechanism: more false alarms reduce compliance, slowing responses to alerts or in extreme cases leading people to ignore them entirely [V, search summary]. A later Human Factors study (2014) found that both kinds of automation error hurt reliance and compliance, and that earlier asymmetric findings had used extreme values of positive or negative predictive value [V, search summary; [PK] likely Meyer, Wiczorek and Günzler 2014, Human Factors 56(5); citation not pinned].
- **Why it matters for Delva:** feature (2), audio feedback. It is the main evidence base for a "prefer silence over a wrong cue" policy: a cue that is wrong teaches users to ignore cues, including the correct ones.
- **Credibility:** Human Factors (reputable journal); a lab dual-task setting, not fitness. **Strong evidence for the general mechanism, weak for transfer to exercise coaching.** Citation count not verified.

#### 1.10 Rater reliability ceiling: Functional Movement Screen meta-analyses
- **Bonazza et al. 2017, American Journal of Sports Medicine**, "Reliability, Validity, and Injury Predictive Value of the Functional Movement Screen: A Systematic Review and Meta-analysis": pooled inter-rater and intra-rater ICC 0.81 each, called excellent; the abstract also flags "significant concerns" about FMS validity [V, search summary] ([Penn State record](https://pure.psu.edu/en/publications/reliability-validity-and-injury-predictive-value-of-the-functiona/); [QxMD/PubMed 27159297](https://read.qxmd.com/read/27159297/reliability-validity-and-injury-predictive-value-of-the-functional-movement-screen-a-systematic-review-and-meta-analysis)).
- **Cuchna et al. 2016, Physical Therapy in Sport**, ICC-only meta-analysis: summary inter-rater ICC 0.843, intra-rater ICC 0.869 [V, search summary] ([University of Kentucky record](https://scholars.uky.edu/en/publications/the-interrater-and-intrarater-reliability-of-the-functional-movem/)).
- **Why it matters for Delva:** validation design. Experts agree well but not perfectly on composite movement scores, and those are aggregate scores, not per-error flags. Expert agreement is the realistic ceiling for an automated system's agreement with experts, and reliability is not the same as validity (FMS reliability is good but its injury prediction is questioned).
- **Credibility:** systematic reviews and meta-analyses in reputable sports-medicine journals (**strong evidence** for FMS rater reliability). Citation counts not verified.

### Also verified, lower priority (datasets the brief asked about)

| Item | Type | What it is | Error labels? | Licence (code / data) | Credibility (checked 2026-11-07) | Why lower priority |
|---|---|---|---|---|---|---|
| **MM-Fit** (Strömbäck, Huang, Radu, IMWUT 2020, 4(4):168, DOI 10.1145/3432701) [GitHub](https://github.com/KDMStromback/mm-fit), [site](https://mmfit.github.io/) | dataset + paper | Inertial data (phone, watch, earbuds) plus time-synchronised multi-viewpoint RGB-D video with 2D and 3D pose estimates [V]. [PK] About 10 exercises including squats, push-ups, lunges, sit-ups and jumping jacks. | **None mentioned** [V]; built for exercise recognition and rep counting | Code MIT [V]; **data licence not stated** on GitHub [V]; site unreachable | IMWUT (peer-reviewed) [V]; repo 40 stars, last push 2021-08-01, inactive, contributors not verified | Useful for rep counting (feature 3), not form. No data licence means all rights reserved by default. |
| **UI-PRMD** (Vakanski et al., Data 2018) [PMC5773117](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5773117/) | dataset | 10 rehab movements, 10 healthy subjects, 10 repetitions each, Vicon and Kinect [V, search summary] | Binary correct or incorrect (incorrect versions performed deliberately) [V, survey summary] ([AQA survey, arXiv 2502.02817](https://arxiv.org/pdf/2502.02817)) | Not verified. [PK] The MDPI Data article is CC BY; the dataset's own terms are on a University of Idaho page, not read | Peer-reviewed data paper; citation count not verified | Rehab movements, not Delva's list; staged errors; depth sensors. One source calls the subjects patients, the original says healthy [V, conflict noted in search]. |
| **KIMORE** (Capecci et al., IEEE TNSRE 2019) | dataset | Kinect v2, 78 subjects (44 healthy, 34 patients), 5 low-back-pain exercises [V, search summary] ([AQA survey](https://arxiv.org/pdf/2502.02817)) | Clinical quality scores 0 to 50 per action (not error types) [V] | Not verified | IEEE TNSRE (peer-reviewed); citation count not verified | Scores, not errors; depth sensor. Some trunk-stability moves overlap with mobility work. |
| **Pose Trainer** (Chen and Yang) [GitHub](https://github.com/stevenzchen/pose-trainer); [PK] [arXiv 2006.11718](https://arxiv.org/abs/2006.11718) | repo + report | OpenPose plus DTW classifiers; files point to bicep curl, front raise, shoulder press and shoulder shrug [V]. [PK] The report compares geometric heuristics with learned DTW classifiers. | Per-exercise correct or incorrect | **GPL-3.0** (copyleft) [V]. [PK] OpenPose itself is under a CMU academic, non-commercial licence | **Not peer-reviewed as far as verified**: the README links only a ResearchGate entry with no venue [V]. 93 stars, last push 2021-09-05; README: "experimental, and is no longer maintained or supported" [V] | Not peer-reviewed, unmaintained, copyleft, dumbbell exercises. Mention only as an early heuristics-versus-learned comparison. |
| **ExpertAF** (Ashutosh et al.) [GitHub](https://github.com/thechargedneutron/ExpertAF) | repo | Code for "Expert Actionable Feedback from Video" [V]; [PK] CVPR 2025, built on Ego-Exo4D expert commentary (sports and dance, not fitness) | Expert commentary, not fitness error labels | Code Apache-2.0 [V]; [PK] Ego-Exo4D data under Meta's custom research licence | 21 stars, last push 2025-09-30 [V]; venue not verified this session | Not fitness exercises; data licence. |
| **MediaPipe** [GitHub](https://github.com/google-ai-edge/mediapipe) | repo | On-device pose landmarks, the usual input to rule-based angle checks | n/a | Code Apache-2.0 [V]; model-weight terms not checked here (covered by the pose-estimation research area) | 37,589 stars, pushed 2026-11-07, Google [V] | A backbone, not form assessment. |
| **"Fine-Tuning Large Multimodal Models for Fitness Action Quality Assessment"** [ACM DL](https://dl.acm.org/doi/10.1145/3708319.3733684) | paper | Fine-tunes LMMs on fitness AQA (uses Fitness-AQA) [V, title and DOI only] | n/a | n/a | ACM venue not identified; citation count not verified | Not read; venue unclear. |

### Inferences
- Every verified error-labelled fitness dataset (Fitness-AQA, EC3D, Fit3D, QEVD, EgoExo-Fitness, FLEX) is non-commercial, research-only, has an unread agreement, or has no licence. **Delva cannot legally train a shipped model on any of them** without separate written licences. Their value is taxonomy, task design and evaluation protocol.
- None of them covers the floor exercises Delva relies on most (glute bridges, dead bugs, bird dogs, side planks, mountain climbers, floor mobility). EC3D's plank and FitAQA's 30 bodyweight exercises (taxonomy unread) come closest.

### Gaps
- Fit3D and QEVD licence texts were not read (hosts blocked). The EgoExo-Fitness License_Agreement.pdf was not read.
- The FitAQA error taxonomy and model results, the CVPRW 2026 VLM numbers, and the exact Fitness-AQA error lists for overhead press and barbell row were not read (arxiv.org blocked).
- No citation counts (Semantic Scholar blocked, search budget used up). No contributor counts (not shown on the fetched pages).

---

## 2. Rule-based vs learned vs VLM: verdict

### Takeaway
For Delva's exercises and a single phone camera, the best-supported approach today is **pose estimation plus per-exercise, interpretable checks** (joint-angle thresholds and timing rules, or small learned classifiers on pose sequences), tuned per camera view and gated by confidence. Learned image-based models beat pose-only pipelines when pose is unreliable (Fitness-AQA), but they need large labelled sets Delva does not have. General VLMs are not reliable enough for live cues as of 2024 to 2026.

### Cited Findings
- **Learned 3D-pose classifier, lab:** 90.9% mistake identification on squats, lunges and planks, tested on a single held-out subject [V] ([EC3D GitHub](https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises)). Weak evidence for generalisation (n = 4 subjects).
- **Learned image features against pose-based models, squat knees-inward:** 95.92% (image-based self-supervised) against 89.80% (3D-pose model) in a controlled setting [V, secondary summary of Parmar et al.] ([arXiv 2202.14019](https://arxiv.org/pdf/2202.14019)). Moderate evidence that pose-only pipelines lose accuracy when pose estimation is noisy.
- **Commercial ML on a phone front camera, rehab exercises:** app versus physiotherapist agreement of 0.828 against 0.833 between physiotherapists [V, search summary] ([JMIR 2021](https://www.jmir.org/2021/7/e26658)). Weak to moderate evidence (small study, COI).
- **Reference comparison (AIFit):** feedback from differences against a trainer's 3D template, without error labels [PK for the method; paper verified as CVPR 2021] ([mlanthology](https://mlanthology.org/cvpr/2021/fieraru2021cvpr-aifit)).
- **VLMs, live coaching:** QEVD authors call live coaching "largely unsolved" for current VLMs [V, search summary] ([arXiv 2407.08101](https://arxiv.org/pdf/2407.08101v2)). A 2026 CVPR workshop evaluation reports general-purpose VLMs unreliable for AQA error detection and scoring [V, secondary summary] ([arXiv 2604.08294](https://arxiv.org/pdf/2604.08294); [emergentmind](https://www.emergentmind.com/papers/2604.08294)).
- **Camera view and 2D projection:** a 2026 preprint on resistance training notes that apparent changes in knee angle may reflect projection distortion rather than real biomechanical differences [V, search summary] ([arXiv 2608.24384](https://arxiv.org/pdf/2608.24384), preprint). A 2024 Journal of Sport Rehabilitation study used markerless frontal-plane kinematics and a decision tree to grade single-leg squat quality [V, title and venue] ([JSR](https://journals.humankinetics.com/view/journals/jsr/34/2/article-p126.xml)). A smartphone-based, interpretable ML study also classified single-leg squat performance from trunk, pelvis and knee kinematics [V, title] ([PMC12982920](https://pmc.ncbi.nlm.nih.gov/articles/PMC12982920/)).
- **Rule-based only:** no peer-reviewed head-to-head study of joint-angle thresholds against learned classifiers on bodyweight exercises was found in this session. Pose Trainer has such a comparison, but it is not peer-reviewed and covers dumbbell exercises [V for its status] ([GitHub](https://github.com/stevenzchen/pose-trainer)).

### Inferences
- Rules suit errors that are **geometric and visible in one plane**: depth (hip-knee angle at the bottom), plank hip sag or pike (shoulder-hip-ankle line from the side), push-up range (elbow angle), heel lift (side view). They are explainable, need no training data, and each threshold can be tuned for precision.
- Learned classifiers on pose sequences pay off for **timing or pattern** errors (tempo, asymmetry across repetitions, momentum in mountain climbers) and for robustness to keypoint noise, but need hundreds of labelled repetitions per error, per view.
- Use VLMs at most offline (post-session summaries, label assistance for internal data collection), never as the live cue source, until FitAQA-style benchmarks show reliable error detection.
- Recommended architecture: on-device pose, then a camera-view check (refuse to judge errors the current view cannot see), then per-exercise criteria with confidence gating, then a cue policy (at most one cue at a time, only after N consecutive repetitions show the error).

### Gaps
- No head-to-head evidence on Delva's floor exercises (bridge, dead bug, bird dog, side plank), where lying and quadruped poses may degrade pose estimators. Unverified; the pose-estimation research area should check.
- Exact per-model numbers from the CVPRW 2026 and FitAQA VLM evaluations not read.

---

## 3. Error taxonomy per exercise (with sources)

### Takeaway
Dataset taxonomies exist for squats (Fitness-AQA, EC3D), lunges and planks (EC3D) and weighted gym moves (FLEX). Sport-science screening tools (FMS, LESS) define errors for squat, lunge, push-up and quadruped-style patterns at the level of a rater checklist. Nothing verified defines errors for glute bridges, dead bugs, bird dogs, side planks, mountain climbers or jumping jacks; Delva will need its own expert-consensus criteria.

### Cited Findings
| Exercise | Errors defined in datasets [V unless marked] | Sport-science or screening source | Best phone view (inference) | Notes on detectability (inference unless cited) |
|---|---|---|---|---|
| Bodyweight squat | Knees inward (valgus), knees forward, convex rounded back, concave rounded back, shallow squat ([Fitness-AQA, back squat](https://arxiv.org/pdf/2202.14019)); [PK] feet too wide, knees inward, not low enough, front bent ([EC3D](https://arxiv.org/pdf/2208.03257)) | FMS deep squat is a scored screen item (reliability: [Bonazza 2017](https://pure.psu.edu/en/publications/reliability-validity-and-injury-predictive-value-of-the-functiona/)); [PK] Myer et al. 2014, "The back squat: a proposed assessment of functional deficits and technical factors", Strength Cond J ([DOI 10.1519/SSC.0000000000000103](https://doi.org/10.1519/SSC.0000000000000103)) | Side for depth, trunk lean and heel lift; front for knee valgus and asymmetry | Valgus is a frontal-plane error and is **not** reliably seen from the side; 2D projection can distort knee angles ([preprint 2608.24384](https://arxiv.org/pdf/2608.24384)). Lumbar rounding is hard because body keypoints have no spine points. |
| Lunge | [PK] not low enough, knee passes toe ([EC3D](https://arxiv.org/pdf/2208.03257)) | [PK] FMS in-line lunge | Side for depth and forward knee; front for knee valgus and trunk sway | "Knee past toe" is a contested cue in coaching (opinion; no source verified here). |
| Push-up and knee or incline regressions | Push-ups appear in VLM and AQA evaluations ([arXiv 2604.08294](https://arxiv.org/pdf/2604.08294)); [PK] push-ups and kneeling push-ups in EgoExo-Fitness | [PK] FMS trunk stability push-up | Side for hip sag or pike, range (elbow angle) and head position; front or diagonal for elbow flare | Elbow flare (shoulder abduction) is poorly seen from a pure side view. |
| Plank | Arched back, hunch back ("Hunch back" row [V], [PK] for the full list) ([EC3D supplement](https://openaccess.thecvf.com/content/ACCV2022/supplemental/Zhao_3D_Pose_Based_ACCV_2022_supplemental.pdf)) | None verified | Side | Hip sag and pike are the most camera-friendly errors in Delva's list (a single shoulder-hip-ankle line), but a phone on the floor may crop the feet. |
| Side plank | None found | None verified | Front (camera facing the user's chest) | Hip drop shows in the image plane only from the front or back. |
| Glute bridge | None found | None verified | Side | Hip extension range and pelvis drop are plausible from the side; knee drift needs a front view. |
| Dead bug, bird dog | None found | [PK] FMS rotary stability (quadruped, close to bird dog) | Side for the trunk line; bird-dog hip rotation needs a view from above or behind | Lumbar arching and hip rotation are subtle and partly out of plane; low confidence. |
| Mountain climbers, jumping jacks | None found | None verified | Side (climbers) or front (jacks) | Mostly suited to rep counting and tempo; form errors (hip pike, partial range) are possible but unvalidated. |
| Landing tasks (reference only) | n/a | [PK] Landing Error Scoring System (LESS), Padua et al. 2009, Am J Sports Med ([DOI 10.1177/0363546509343200](https://doi.org/10.1177/0363546509343200)), a reliable rater checklist for jump landings | Front and side | Relevant if Delva adds jumping moves; the LESS method assumes two camera views. |
| Weighted gym moves (reference only) | Error types, keysteps and corrective feedback in a knowledge graph ([FLEX](https://arxiv.org/html/2506.03198v1)) | n/a | 5 views in the dataset | A model for the content structure, not the content. |

- **Frontal-plane errors from 2D:** single-leg squat frontal-plane metrics from a smartphone and automated pose estimator differed by quality grade in a 2024 study, which supports a front view for knee control [V, search summary; attribution to the JSR 2024 paper is my inference from title and year] ([JSR](https://journals.humankinetics.com/view/journals/jsr/34/2/article-p126.xml)). [PK] Munro, Herrington and Carolan 2012 report good reliability for 2D frontal-plane knee projection angle measured by raters from video ([DOI 10.1123/jsr.21.1.7](https://doi.org/10.1123/jsr.21.1.7)).
- **Camera position effects:** a search snippet reported that phone placement significantly affects AI pose-estimation exercise tracking for squats and push-ups, with diagonal and frontal views at about 180 to 200 cm best. **Source not pinned**; listed under Gaps.

### Inferences
- Delva should tie each error cue to the camera views that can see it, and suppress cues the current view cannot support (for example, no valgus cue from a side view). This is the most direct way to avoid false positives.
- "Insufficient depth or partial range", "hip sag or pike" and "heel lift" are the most robust single-view errors for v1. "Knee valgus" needs a front view. "Lumbar flexion", "head and neck position" and "elbow flare" are low-confidence from keypoints alone.

### Gaps
- No verified, published technique criteria for glute bridge, dead bug, bird dog, side plank, mountain climber or jumping jack. NSCA and ACSM technique text was not reached (search budget).
- A search snippet reported poor 2D-to-3D agreement for single-leg squat knee frontal-plane angle (r = 0.127) but moderate to good agreement for landing (r = 0.619), and 53% to 77% single-camera agreement with experts across 6 single-leg-squat errors (knee valgus highest at 77%). **The snippets did not say which paper these came from**, so they are not cited. Worth retrieving.

---

## 4. Validation and false-positive cost

### Takeaway
Form-feedback systems are validated by agreement with expert raters (percent agreement, kappa or ICC), ideally benchmarked against expert-to-expert agreement, and for live coaching also by the timing of feedback (QEVD temporal precision and recall). Human-factors evidence indicates that false alarms damage compliance and trust more than misses in typical settings, which supports a precision-first policy for audio cues ("silence over a wrong cue").

### Cited Findings
- **Expert agreement as the reference:** Kaia's study compared app against physiotherapist (0.828) with physiotherapist against physiotherapist (0.833), concluding non-inferiority [V, search summary] ([JMIR 2021](https://www.jmir.org/2021/7/e26658)).
- **Expert agreement ceiling:** pooled FMS inter-rater ICC 0.81 ([Bonazza 2017](https://pure.psu.edu/en/publications/reliability-validity-and-injury-predictive-value-of-the-functiona/)) and 0.843 ([Cuchna 2016](https://scholars.uky.edu/en/publications/the-interrater-and-intrarater-reliability-of-the-functional-movem/)) [V, search summaries]. Strong evidence.
- **Temporal feedback metrics:** QEVD scores when feedback is given (temporal F-score; Stream-VLM 0.59 against 0.50 per a secondary summary) as well as its content [V, secondary] ([chatpaper](https://chatpaper.com/paper/39270); [NeurIPS](https://proceedings.neurips.cc/paper_files/paper/2024/hash/8aa695b5d6bf9e958d4e56b22c9b859d-Abstract.html)).
- **False alarms against misses:** false alarms were more damaging to overall performance than misses; compliance and reliance are not fully independent [V, search summary] ([Dixon, Wickens, McCarley 2007](https://dblp1.uni-trier.de/rec/journals/hf/DixonWM07.html)). Cry-wolf: many false alarms lead operators to ignore alarms [V, search summary]. A 2014 Human Factors follow-up found both error types hurt, and that asymmetric effects appeared with extreme predictive values [V, search summary; citation not pinned].
- **Foundational:** [PK] Parasuraman and Riley 1997, "Humans and automation: use, misuse, disuse, abuse", Human Factors 39(2), defines misuse (over-reliance) and disuse (ignoring automation after unreliability) ([DOI 10.1518/001872097778543886](https://doi.org/10.1518/001872097778543886)). Foundational.
- **Motor learning:** [PK] Winstein and Schmidt 1990 found that reduced frequency of knowledge of results improved retention (the "guidance hypothesis": constant feedback can create dependence) ([DOI 10.1037/0278-7393.16.4.677](https://doi.org/10.1037/0278-7393.16.4.677)). Foundational; it supports sparse cueing, not cueing every repetition. Not re-verified.
- **User-perceived inaccuracy:** a 2020 AVI paper on learning movement from online videos with pose-estimation feedback reported that one participant did not notice inaccurate pose estimation until later in the session [V, fragmentary search snippet] ([AVI 2020 PDF](https://simonperrault.github.io/files/AVI2020-Atima.pdf)). Anecdotal; weak evidence that users may not detect wrong feedback, which links to automation bias.

### Inferences
- **Validation protocol for Delva (inference built from the sources above):**
  1. Two or more qualified raters label each repetition per error, from the same phone views users will have.
  2. Report inter-rater kappa or ICC per error as the ceiling.
  3. Report the app's per-error precision, recall and kappa against the consensus label, broken down by view, body type, lighting and clothing.
  4. Ship a cue only if its precision clears a preset bar (for example, at least 0.9; the number is a product decision, not from the literature) and its agreement is close to the inter-rater ceiling.
  5. Log cue-ignore and cue-mute rates in the field as a trust signal.
- **Precision against recall:** for an audio coach the "operator" is the user mid-exercise. A false "hips too low" cue is a false alarm that teaches the user to ignore cues (cry-wolf), while a missed error costs one teaching moment. This, plus the guidance hypothesis, favours high-precision, low-frequency cues. It also fits the Delva spec rule of **no promise of perfect technique**: silence must not be read as "your form is perfect", so the app should say what it checks.
- Positive feedback ("good depth") is lower-risk when wrong than a corrective cue, and can carry most of the audio channel.

### Gaps
- **No exercise-specific HCI study** (CHI, IMWUT, CSCW) on false-positive form cues and trust was found. Search returned system papers without trust measures, and the budget then ran out. Candidates to check [PK]: Physio@Home (Tang et al., CHI 2015, [DOI 10.1145/2702123.2702401](https://doi.org/10.1145/2702123.2702401)) and YouMove (Anderson et al., UIST 2013).
- No direct evidence on the best feedback frequency for home bodyweight exercise via audio.

---

## 5. Commercial apps (industry practice only)

### Takeaway
Only one commercial camera-based form product with a peer-reviewed validation was verified (Kaia Motion Coach, JMIR 2021). Public documentation from other apps could not be searched (budget used up).

### Cited Findings
- Kaia Motion Coach: phone front camera with ML; physiotherapist-level agreement on 6 rehab exercises in a small, industry-co-authored cohort [V, search summary] ([JMIR 2021](https://www.jmir.org/2021/7/e26658); [MobiHealthNews coverage](https://www.mobihealthnews.com/news/digital-msk-therapy-tool-kaia-gives-equally-reliable-exercise-recommendations-physiotherapists)). The product's own claims are industry practice; the paper is the evidence.

### Inferences
- If competitors publish only marketing claims ("real-time form correction") and no validation, a published validation study would itself be a differentiator for Delva and a guard against over-claiming, consistent with the spec's "no promise of perfect technique".

### Gaps
- Not searched this session: public documentation for Peloton Guide (Movement Tracker), Tempo, Kemtai, Sency, Zenia, Onyx and similar. **No claims about them are made here.**

---

## 6. Licence red flags

### Takeaway
Licences block almost every shortcut: the verified datasets are non-commercial or have unclear terms, two key repos have no licence, one is copyleft, and VLM baselines carry foundation-model licences.

### Cited Findings
- **Fitness-AQA:** dataset "only be used for non-commercial purposes"; videos from Instagram and YouTube (third-party copyright); no code licence shown [V] ([GitHub](https://github.com/ParitoshParmar/Fitness-AQA)).
- **EC3D:** **no LICENSE file**, so all rights are reserved; data on Google Drive without terms [V] ([GitHub](https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises)).
- **QEVD:** "Qualcomm Data Research License" per the Voxel51 card (unread PDF) [V, search summary]; the FitCoach repo is inconsistent (BSD-3-Clause-Clear metadata alongside a "Software Evaluation License" document); weights unlicensed in the repo; Llama licences apply to the LLM backbones [V] ([GitHub](https://github.com/Qualcomm-AI-research/FitCoach)).
- **FLEX:** "Academic and research use only", "No redistribution"; paper CC BY-NC-SA 4.0; no code licence and code "Coming Soon"; README content changed to a different dataset name [V] ([GitHub](https://github.com/haoyin116/flex)).
- **EgoExo-Fitness:** code Apache-2.0 (commercial use OK), but data behind a signed agreement whose text was not read [V] ([GitHub](https://github.com/iSEE-Laboratory/EgoExo-Fitness)).
- **Fit3D:** licence unread (site blocked); [PK] IMAR datasets are usually research-only.
- **Pose Trainer:** **GPL-3.0** (copyleft; a commercial closed-source app cannot include the code) [V]; [PK] depends on OpenPose, which has a non-commercial academic licence.
- **MM-Fit:** code MIT, but **no data licence stated** [V].
- **Weights trained on non-commercial data:** [Inference] a model trained on non-commercial data is likely bound by the dataset terms (usually written to cover derivative works). Legal review is needed before any weights trained on these datasets go into the app.

### Inferences
- Code under permissive licences (Apache-2.0: EgoExo-Fitness, ExpertAF, MediaPipe; MIT: MM-Fit code) can inform or even be reused. No verified dataset with error labels can be used commercially as-is.

### Gaps
- Licence PDFs for QEVD, Fit3D and EgoExo-Fitness, and the UI-PRMD and KIMORE terms, still need reading.

---

## 7. Gaps and open questions for Delva user research

### Takeaway
The biggest unknowns are product and user questions that no public dataset answers: whether home users will set up a camera view that makes errors visible, how they react to wrong cues, and which errors matter for these exercises.

### Cited Findings
- Expert ratings are reliable but imperfect even for structured screens ([Bonazza 2017](https://pure.psu.edu/en/publications/reliability-validity-and-injury-predictive-value-of-the-functiona/)), so Delva's own expert labels will need agreement checks [V].
- The live-coaching timing problem is unsolved for VLMs ([QEVD](https://arxiv.org/pdf/2407.08101v2)) [V].

### Inferences (questions to put to user research)
1. **Camera setup tolerance:** will users place the phone side-on at floor level for planks and bridges, and move it to face them for squats? How many repositionings per 15 to 20 minute session do they accept?
2. **Cue trust:** after 1, 2 or 3 wrong cues, do users mute audio feedback? Measure mute and ignore rates with deliberately seeded false cues in a lab study (ethics approval needed).
3. **Silence semantics:** do users read silence as "good form"? How should the app say what it checks, without promising perfect technique?
4. **Positive against corrective cue ratio:** what mix keeps motivation and trust?
5. **Error priorities per exercise:** which 1 or 2 errors per exercise do coaches consider most important for beginners? Run an expert-consensus round (a Delphi-style panel) for the floor exercises where no published criteria were found.
6. **Regressions:** should knee and incline push-ups have their own criteria (different hip line), and do users accept a cue suggesting a regression?
7. **Fairness:** does pose-based checking work across body sizes, loose clothing, low light and small rooms? Collect a diverse internal validation set.
8. **Partial workouts and form:** should detected poor form ever affect chapter credit? The spec says approved shorter versions earn credit, and coupling credit to an imperfect detector would turn false positives into lost progress. **Recommendation (inference): keep form feedback advisory and never let it gate credit.**

### Gaps
- Could not search: commercial app documentation, NSCA and ACSM technique guidance, feedback-frequency meta-analyses, and CHI or IMWUT trust studies specific to exercise.

---

## Source list (all checked 2026-11-07; [V] verified in session, [PK] prior knowledge, not re-verified)

**Datasets, papers and repos**
- [V] Fitness-AQA repo: https://github.com/ParitoshParmar/Fitness-AQA
- [V] Fitness-AQA paper (Springer): https://link.springer.com/chapter/10.1007/978-3-031-19839-7_7 ; arXiv: https://arxiv.org/pdf/2202.14019
- [V] Fitness-AQA dataset access issue: https://github.com/ParitoshParmar/Fitness-AQA/issues/25
- [V] EC3D repo: https://github.com/Jacoo-Zhao/3D-Pose-Based-Feedback-For-Physical-Exercises
- [V] EC3D paper: https://openaccess.thecvf.com/content/ACCV2022/html/Zhao_3D_Pose_Based_Feedback_For_Physical_Exercises_ACCV_2022_paper.html ; https://arxiv.org/pdf/2208.03257 ; supplement: https://openaccess.thecvf.com/content/ACCV2022/supplemental/Zhao_3D_Pose_Based_ACCV_2022_supplemental.pdf ; https://infoscience.epfl.ch/record/298412?ln=en
- [V] AIFit (CVPR 2021): https://mlanthology.org/cvpr/2021/fieraru2021cvpr-aifit ; Fit3D: https://fit3d.imar.ro/ (blocked), https://fit3d.imar.ro/publications
- [V] QEVD/FIT-COACH: https://proceedings.neurips.cc/paper_files/paper/2024/hash/8aa695b5d6bf9e958d4e56b22c9b859d-Abstract.html ; https://arxiv.org/abs/2407.08101 ; https://www.qualcomm.com/developer/software/qevd-dataset (blocked) ; https://docs.voxel51.com/dataset_zoo/datasets_hf/qualcomm_exercise_video_dataset_benchmark.html (blocked; seen via search) ; https://chatpaper.com/paper/39270 (secondary)
- [V] FitCoach repo: https://github.com/Qualcomm-AI-research/FitCoach
- [V] EgoExo-Fitness: https://ecva.net/papers/eccv_2024/papers_ECCV/html/3057_ECCV_2024_paper.php ; https://github.com/iSEE-Laboratory/EgoExo-Fitness
- [V] FLEX (preprint): https://arxiv.org/pdf/2506.03198 ; https://arxiv.org/html/2506.03198v4 ; https://github.com/haoyin116/flex
- [V] FitAQA (preprint): https://arxiv.org/html/2608.08736
- [V] VLM AQA evaluation: https://arxiv.org/pdf/2604.08294 ; https://openaccess.thecvf.com/content/CVPR2026W/SAUAFG/supplemental/Monte_e_Freitas_Can_Vision_Language_CVPRW_2026_supplemental.pdf ; https://www.emergentmind.com/papers/2604.08294 (secondary)
- [V] Fine-tuning LMMs for fitness AQA: https://dl.acm.org/doi/10.1145/3708319.3733684
- [V] MM-Fit: https://github.com/KDMStromback/mm-fit ; https://mmfit.github.io/
- [V] UI-PRMD: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5773117/
- [V] AQA survey (UI-PRMD and KIMORE details): https://arxiv.org/pdf/2502.02817
- [V] Pose Trainer: https://github.com/stevenzchen/pose-trainer ; [PK] https://arxiv.org/abs/2006.11718
- [V] ExpertAF: https://github.com/thechargedneutron/ExpertAF
- [V] MediaPipe: https://github.com/google-ai-edge/mediapipe

**Validation, sport science and human factors**
- [V] Kaia Motion Coach validation (JMIR 2021): https://www.jmir.org/2021/7/e26658 ; https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8317029/
- [V] FMS meta-analysis (Bonazza 2017): https://pure.psu.edu/en/publications/reliability-validity-and-injury-predictive-value-of-the-functiona/ ; https://read.qxmd.com/read/27159297/reliability-validity-and-injury-predictive-value-of-the-functional-movement-screen-a-systematic-review-and-meta-analysis
- [V] FMS meta-analysis (Cuchna 2016): https://scholars.uky.edu/en/publications/the-interrater-and-intrarater-reliability-of-the-functional-movem/
- [V] Markerless frontal-plane single-leg squat (JSR 2024): https://journals.humankinetics.com/view/journals/jsr/34/2/article-p126.xml
- [V] Smartphone interpretable ML, single-leg squat: https://pmc.ncbi.nlm.nih.gov/articles/PMC12982920/
- [V] Markerless pose for resistance-training technique (preprint): https://arxiv.org/pdf/2608.24384
- [V] Markerless motion-capture scoping review (preprint, content not read): https://arxiv.org/pdf/2609.18667
- [V] Dixon, Wickens and McCarley 2007: https://dblp1.uni-trier.de/rec/journals/hf/DixonWM07.html ; https://apps.dtic.mil/sti/pdfs/ADA496817.pdf
- [V] AVI 2020 pose feedback for movement learning: https://simonperrault.github.io/files/AVI2020-Atima.pdf
- [PK] Parasuraman and Riley 1997: https://doi.org/10.1518/001872097778543886
- [PK] Winstein and Schmidt 1990: https://doi.org/10.1037/0278-7393.16.4.677
- [PK] Padua et al. 2009 (LESS): https://doi.org/10.1177/0363546509343200
- [PK] Munro, Herrington and Carolan 2012 (2D FPPA reliability): https://doi.org/10.1123/jsr.21.1.7
- [PK] Myer et al. 2014 (back squat assessment): https://doi.org/10.1519/SSC.0000000000000103
- [PK] Tang et al. 2015 (Physio@Home, CHI): https://doi.org/10.1145/2702123.2702401

**Hosts to allow to finish verification:** arxiv.org, openaccess.thecvf.com, fit3d.imar.ro, www.qualcomm.com, docs.voxel51.com, pmc.ncbi.nlm.nih.gov, api.semanticscholar.org, github.io project pages (senakicir.github.io, mmfit.github.io, haoyin116.github.io).
