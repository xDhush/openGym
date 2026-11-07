# V1: Verification pass on Areas A (pose estimation), B (form assessment), C (rep counting)

Checked 2026-11-07. Scope: bibliographic checks and citation counts for every paper cited in A_pose_estimation.md, B_form_assessment.md and C_rep_counting.md, plus the priority claims. GitHub repo metadata was not re-checked (another agent covers it). The original notes files were not edited.

**Method.**
- Bibliographic data came from the arXiv API (38 IDs), Crossref (`/works/<DOI>` and `query.bibliographic`), NCBI E-utilities (PubMed abstracts, PMC full texts) and the papers' own PDFs (arXiv, CVF open access).
- Documents were read directly: ML Kit and MediaPipe pages, the ML Kit terms and the ML Kit pose model card; LICENSE, README and sample-code files via raw.githubusercontent.com.
- **Counts:** "CR" = Crossref `is-referenced-by-count`; "S2" = Semantic Scholar `citationCount`. Both were read on 2026-11-07, S2 through a main batch POST (HTTP 200 on attempt 4), a follow-up batch (HTTP 200 on attempt 3), and a final batch and title search that never succeeded (HTTP 429 six times each).
- "n/a" = no DOI, so no Crossref count. "null" = S2 returned no record for that ID, and a retry was rate-limited (HTTP 429).
- **Still unreachable:** sites.google.com, fit3d.imar.ro, svip-lab.github.io, r2hcai.github.io, cmu.flintbox.com, www.qualcomm.com, dl.acm.org, cocodataset.org, the MPII site and posetrack.net (no connection); microsoft.com and the AI Challenger GitHub page (HTTP 403). Items that depend on these hosts are marked **STILL UNVERIFIED**.

**Headline corrections**
1. Washabaugh 2022 did not test MediaPipe.
2. The "occluded side roughly double" meta-analysis claim is not in the paper whose title the notes give.
3. Frontiers 2023 compared Kinovea, not Kinect.
4. The camera-angle OpenPose paper found back views best.
5. Fit3D has 37 exercises, not 47.
6. Fitness-AQA's 95.92% comes from a single-subject side experiment in which the two methods' averages are about equal.
7. Six "preprints" are now peer-reviewed: PoseRAC, the BlazePose JMIR preprint, Full Resolution, MultiCounter, DeTRC and Viewpoint-invariant counting.
8. The ML Kit pose model is a BlazePose model under ML Kit terms. It is still beta, with no SLA.
9. EgoExo-Fitness and Fitness-AQA data explicitly forbid commercial use.

---

## 1. Citation table

Peer = peer-reviewed. PP = preprint (arXiv only). Notes file in the last column.

### Area A papers
| Short ref | DOI / arXiv | Verified title / venue / year | Status | CR | S2 | File |
|---|---|---|---|---|---|---|
| BlazePose, Bazarevsky 2020 | arXiv 2006.10204 | Yes. arXiv comment: "CVPR Workshop on Computer Vision for AR/VR, Seattle, 2020". No DOI, and no AR/VR workshop in the CVF CVPR 2020 workshop proceedings ([menu](https://openaccess.thecvf.com/CVPR2020_workshops/menu)) | Workshop, non-archival (cite arXiv) | n/a | 981 | A |
| OpenPose, Cao et al. | 10.1109/TPAMI.2019.2929257; arXiv 1812.08008 | Corrected: TPAMI 43(1):172-186, issue year 2021 (online 2019) | Peer | 4,017 | 6,086 | A |
| RTMPose, Jiang 2023 | arXiv 2303.07399 | Yes | PP | n/a | 533 | A |
| RTMO, Lu 2024 | 10.1109/CVPR52733.2024.00148; arXiv 2312.07526 | Yes: CVPR 2024, pp. 1491-1500 | Peer | 116 | 105 | A |
| RTMW, Jiang 2024 | arXiv 2407.08634 | Yes | PP | n/a | 65 | A |
| ViTPose | arXiv 2204.12484 | NeurIPS 2022 (arXiv comment; S2 venue) | Peer | n/a | 1,161 | A |
| ViTPose++ | 10.1109/TPAMI.2023.3330016 | TPAMI 46:1212-1230 (2024) | Peer | 162 | 176 | A |
| Sapiens | 10.1007/978-3-031-73235-5_12; arXiv 2408.12569 | ECCV 2024 (Oral per arXiv), LNCS pp. 206-228 | Peer | 158 | 321 | A |
| DWPose | 10.1109/ICCVW60793.2023.00455 | ICCV 2023 Workshops (CV4Metaverse), pp. 4212-4222 | Peer (workshop) | 263 | 462 | A |
| AlphaPose | 10.1109/TPAMI.2022.3222784 | TPAMI 45:7157-7173 (2023) | Peer | 692 | 797 | A |
| Stenum 2021 | 10.1371/journal.pcbi.1008935 | Yes: PLOS Comput Biol 17(4):e1008935 | Peer | 322 | 297 | A |
| Yang & Park 2024 | 10.3390/bioengineering11020141 | "Improving Gait Analysis Techniques with Markerless Pose Estimation Based on Smartphone Location", Bioengineering 11:141 | Peer | 33 | 30 | A |
| Washabaugh 2022 | 10.1016/j.gaitpost.2022.08.008 | Yes: Gait Posture 97:188-195 | Peer | 98 | null (retry: 429 x6) | A |
| Front. Rehabil. Sci. 2023 | 10.3389/fresc.2023.1238134 | "Gait analysis comparison between manual marking, 2D pose estimation algorithms, and 3D marker-based system", 4:1238134 | Peer | 48 | 43 | A |
| Heliyon 2024 (knee valgus, landing) | 10.1016/j.heliyon.2024.e36338 | Heliyon 10:e36338 | Peer | 12 | 11 | A |
| Ino 2024 (OpenPose, DVJ) | 10.52082/jssm.2024.515 | J Sports Sci Med 23(1):515-525 | Peer | 29 | 28 | A |
| Single-leg squat "AI pose" study | 10.1016/j.jbiomech.2022.111333 | Pinned: Haberkamp, Garcia, Bazett-Jones, J Biomech 144:111333 (2022) | Peer | 36 | null (retry: 429 x6) | A |
| MediaPipe 2D squat pipeline | 10.3390/biomechanics6010001 | "Markerless Pixel-Based Pipeline for Quantifying 2D Lower Limb Kinematics During Squatting: A Preliminary...", Biomechanics 6:1 (Crossref issued 2025) | Peer | 0 | 0 | A |
| 3-camera MediaPipe vs Vicon | 10.3390/s26216773 | "Evaluation and Error Characterization of a Multi-View 3D Markerless Motion Capture System...", Sensors 26:6773 (2026) | Peer | 0 | 0 | A |
| Lifting, OpenCap/MediaPipe | 10.1016/j.apergo.2026.104866 | Pinned: Zhang, Nieuwenhuys, Boocock, Zhang, "Concurrent validity of markerless motion capture for occupational lifting...", Appl Ergon 138:104866 (Jan 2027; epub 2026-08-10) | Peer | 0 | 1 | A |
| BlazePose knee angle ("JMIR preprint 102399") | 10.2196/102399 | Corrected: now published, Yue, Gu, Yu, JMIR Rehabil Assist Technol 13:e102399 (2026-11-03) | **Peer (no longer a preprint)** | 0 | 0 | A |
| Dill et al. 2023 | 10.1515/cdbme-2023-1141 | Confirmed: Curr Dir Biomed Eng 9(1):563-566 | Peer | 43 | 41 | A |
| Sensors 2026 SR, lower limb | 10.3390/s26123956 | "Accuracy and Validity of 3D Markerless Motion Capture Compared to Marker-Based Systems for Lower-Limb..." Scope: jump-landing and change-of-direction tasks (gait excluded) | Peer | 5 | 4 | A |
| Gait meta-analysis (unnamed in notes) | 10.3390/s24113686 | Pinned: Scataglini, Abts, Van Bocxlaer, Van den Bussche, Meletani, Truijen, Sensors 24(11):3686 (2024) | Peer | 196 | 183 | A |
| Hip/knee ROM, CV pose | 10.1049/htl2.70002 | Healthc Technol Lett 12:e70002 (2025) | Peer | 3 | 4 | A |
| OpenPose HKA, knee OA | 10.1038/s41598-025-09627-2 | Sci Rep 15:24286 (2025) | Peer | 6 | 5 | A |
| Oliosi 2026 | 10.2196/82412 | JMIR mHealth uHealth 14:e82412 (2026) | Peer | 1 | 3 | A, C |
| Camera viewing angle, OpenPose | 10.3390/s25030799 | Pinned: Baldinger, Reimer, Senner, Sensors 25(3):799 (2025) | Peer | 23 | 21 | A |
| Sony AI fairness (AAAI-23 workshop) | none found | **STILL UNVERIFIED**: not in Crossref or arXiv; host r2hcai.github.io unreachable; S2 title search got HTTP 429 six times | Workshop (claimed) | n/a | not obtained | A |

### Area B papers
| Short ref | DOI / arXiv | Verified title / venue / year | Status | CR | S2 | File |
|---|---|---|---|---|---|---|
| Fitness-AQA, Parmar 2022 | 10.1007/978-3-031-19839-7_7; arXiv 2202.14019 | Yes: ECCV 2022, LNCS pp. 105-123 | Peer | 25 | 47 | B |
| EC3D, Zhao 2022 | 10.1007/978-3-031-26316-3_12; arXiv 2208.03257 | Corrected authors: Zhao, Kiciroglu, **Vinzant**, Cheng, **Katircioglu**, Salzmann, Fua. ACCV 2022, LNCS pp. 189-205 (pub. 2023) | Peer | 19 | 26 | B |
| AIFit / Fit3D, Fieraru 2021 | 10.1109/CVPR46437.2021.00979 | Yes: CVPR 2021, pp. 9914-9923 | Peer | 107 | 121 | B |
| QEVD / FIT-COACH, Panchal 2024 | arXiv 2407.08101 (v5) | Yes: NeurIPS 2024 Datasets & Benchmarks | Peer | n/a | 31 | B |
| EgoExo-Fitness, Li 2024 | 10.1007/978-3-031-72661-3_21; arXiv 2406.08877 | Yes: ECCV 2024, LNCS pp. 363-382 | Peer | 22 | not obtained (429 x6) | B |
| FLEX, Yin 2025 | arXiv 2506.03198 (v4, 2026-04-03) | Corrected title: "FLEX: A Largescale Multimodal, Multiview Dataset for Learning Structured Representations for Fitness Action Quality Assessment" | PP | n/a | 3 | B |
| MyoMechanix (FLEX repo's new content) | arXiv 2608.26094 | "MyoMechanix: Biomechanically-Grounded Compositional Skilled Activity Understanding and Coaching" (Yin et al., 2026) | PP | n/a | not obtained (429 x6) | B |
| Kaia, Biebl 2021 | 10.2196/26658 | Yes: J Med Internet Res 23(7):e26658 | Peer | 31 | 29 | B |
| VLM AQA, Monte e Freitas 2026 | arXiv 2604.08294 | Yes: CVPR 2026 Workshops (SAUAFG); full paper in [CVF open access](https://openaccess.thecvf.com/content/CVPR2026W/SAUAFG/html/Monte_e_Freitas_Can_Vision_Language_Models_Judge_Action_Quality_An_Empirical_Evaluation_CVPRW_2026_paper.html) | Peer (workshop) | n/a | 2 | B |
| FitAQA, Zheng 2026 | arXiv 2608.08736 (v2) | Yes | PP | n/a | 1 | B |
| Dixon, Wickens, McCarley 2007 | 10.1518/001872007X215656 | Yes: Hum Factors 49(4):564-572 | Peer | 220 | 312 | B |
| "2014 Human Factors follow-up" | 10.1177/0018720813512865 | Pinned: Meyer, Wiczorek, Günzler, "Measures of Reliance and Compliance in Aided Visual Scanning", Hum Factors 56(5):840-849 (2014) | Peer | 49 | 53 | B |
| Bonazza 2017 (FMS) | 10.1177/0363546516641937 | Yes: Am J Sports Med 45(3):725-732 (2017; epub 2016) | Peer | 264 | 299 | B |
| Cuchna 2016 (FMS) | 10.1016/j.ptsp.2015.12.002 | Yes: Phys Ther Sport 19:57-65 | Peer | 61 | 78 | B |
| MM-Fit, Strömbäck 2020 | 10.1145/3432701 | Yes: Proc ACM IMWUT 4(4), 1-22 | Peer | 73 | 49 | B, C |
| UI-PRMD, Vakanski 2018 | 10.3390/data3010002 | Yes: Data 3(1):2 | Peer | 166 | 179 | B |
| KIMORE, Capecci 2019 | 10.1109/TNSRE.2019.2923060 | Yes: IEEE TNSRE 27(7):1436-1448 | Peer | 171 | 161 | B |
| Pose Trainer, Chen & Yang 2020 | arXiv 2006.11718 | Yes (was [PK]) | PP | n/a | 107 | B |
| ExpertAF, Ashutosh 2025 | 10.1109/CVPR52734.2025.01268 | Confirmed CVPR 2025 (was [PK]), pp. 13582-13594 | Peer | 23 | 27 | B |
| Fine-tuning LMMs for fitness AQA | 10.1145/3708319.3733684 | Venue identified: UMAP '25 Adjunct Proceedings, pp. 39-44 | Peer (adjunct) | 2 | 4 | B |
| AQA decade survey, Yin 2025 | arXiv 2502.02817 / 10.1007/s11263-025-02672-4 | Corrected: now IJCV (2026) | Peer | 7 | 21 | B |
| Turner 2026 (resistance training) | arXiv 2608.24384 | "Markerless Pose Estimation for Resistance Training Technique Assessment" | PP | n/a | 0 | B |
| Delaplace 2026 scoping review | arXiv 2609.18667 | Yes | PP | n/a | 0 | B |
| JSR single-leg squat | 10.1123/jsr.2024-0182 | Corrected year: J Sport Rehabil 34(2):126-133, **2025** | Peer | 5 | 5 | B |
| Smartphone ML single-leg squat (PMC12982920) | 10.2196/85126 | JMIR mHealth uHealth 14:e85126 (2026) | Peer | 1 | 1 | B |
| Parasuraman & Riley 1997 | 10.1518/001872097778543886 | Yes: Hum Factors 39(2):230-253 | Peer | 3,931 | 4,937 | B |
| Winstein & Schmidt 1990 | 10.1037/0278-7393.16.4.677 | Yes: JEP:LMC 16(4):677-691 | Peer | 410 | 754 | B |
| Padua 2009 (LESS) | 10.1177/0363546509343200 | Yes: AJSM 37:1996-2002 | Peer | 553 | 716 | B |
| Munro 2012 | 10.1123/jsr.21.1.7 | Yes: JSR 21(1):7-11 | Peer | 203 | 265 | B |
| Myer 2014 (back squat) | 10.1519/SSC.0000000000000103 | Yes: Strength Cond J 36:4-27 | Peer | 209 | 234 | B |
| Physio@Home, Tang 2015 | 10.1145/2702123.2702401 | Yes: CHI 2015, pp. 4123-4132 | Peer | 108 | 151 | B |
| YouMove, Anderson 2013 | 10.1145/2501988.2502045 | Yes: UIST 2013, pp. 311-320 | Peer | 308 | 359 | B |
| AVI 2020 pose feedback | 10.1145/3399715.3399835 | "Pose Estimation for Facilitating Movement Learning from Online Videos", AVI 2020 | Peer | 15 | 19 | B |

### Area C papers
| Short ref | DOI / arXiv | Verified title / venue / year | Status | CR | S2 | File |
|---|---|---|---|---|---|---|
| RepNet / Countix, Dwibedi 2020 | 10.1109/CVPR42600.2020.01040; arXiv 2006.15418 | Yes: CVPR 2020, pp. 10384-10393 | Peer | 125 | 190 | C |
| TransRAC / RepCount, Hu 2022 | 10.1109/CVPR52688.2022.01843; arXiv 2204.01018 | Yes: CVPR 2022 (Oral), pp. 18991-19000 | Peer | 76 | 95 | C |
| RepNet short note 2024 | arXiv 2411.08878 | Yes; by the RepNet authors (Dwibedi et al.) | PP | n/a | 1 | C |
| ESCounts, Sinha 2024 | 10.1007/978-981-96-0908-6_22; arXiv 2403.18074 | Yes: ACCV 2024, LNCS pp. 384-402 | Peer | 16 | 20 | C |
| CountLLM, Yao 2025 | 10.1109/CVPR52734.2025.01783; arXiv 2503.17690 | Yes: CVPR 2025, pp. 19143-19153 | Peer | 10 | 19 | C |
| OVR, Dwibedi 2024 | arXiv 2407.17085 | Yes; no venue in Crossref or S2 | PP | n/a | 12 | C |
| PoseRAC, Yao 2023 | arXiv 2303.08450; **10.1007/978-981-96-6588-4_18** | Corrected: peer-reviewed version "PoseRAC: Enhancing Repetitive Action Counting with Salient Poses" (Yao, Zou), ICONIP 2024, LNCS Neural Information Processing (2025) | PP + Peer version | 3 (LNCS) | 28 (arXiv) / 3 (ICONIP) | C |
| Joint-based PoseRAC | arXiv 2308.08632 | Title: "Advancements in Repetitive Action Counting: Joint-Based PoseRAC Model With Improved Performance" | PP | n/a | 4 | C |
| RecoFit, Morris 2014 | 10.1145/2556288.2557116 | Yes: CHI 2014, pp. 3225-3234 | Peer | 162 | 245 | C |
| Sight and Sound, Zhang 2021 | 10.1109/CVPR46437.2021.01385; arXiv 2103.13096 | Yes: CVPR 2021, pp. 14065-14074 | Peer | 52 | 76 | C |
| IVAC-P2L, Wang 2025 | 10.1109/TMM.2025.3604935 | Yes: IEEE TMM 27:8325-8339 | Peer | 2 | 4 | C |
| Full Resolution Repetition Counting | arXiv 2305.13778; 10.1007/978-981-99-6483-3_48 | Corrected: published at ICIRA 2023 (LNCS) | Peer | 8 | 8 | C |
| Pūioio, Sinclair 2023 | arXiv 2308.02420 | Yes | PP | n/a | 4 | C |
| Soro 2019 | 10.3390/s19030714 | Yes: Sensors 19(3):714 | Peer | 81 | 88 | C |
| MultiCounter, Tang 2024 | arXiv 2409.04035; 10.3233/FAIA240494 | Corrected: ECAI 2024 (FAIA) | Peer | 4 | 4 | C |
| "Rethinking temporal self-similarity" | arXiv 2407.09431; 10.1109/ICIP51287.2024.10647309 | Corrected: ICIP 2024, pp. 2187-2193 | Peer | 4 | 6 | C |
| Dynamic-query counting (DeTRC) | arXiv 2403.01543; 10.1007/s11263-026-02939-4 | Corrected: IJCV 2026 | Peer | 2 | 5 | C |
| PushupBench, Li 2026 | arXiv 2604.23407 | "PushupBench: Your VLM is not good at counting pushups" | PP | n/a | 1 | C |
| Viewpoint-invariant counting | arXiv 2107.13760; 10.1007/s13755-023-00258-3 | Corrected: Health Inf Sci Syst (2023) | Peer | 5 | 6 | C |
| Sports Med 2025 SR | 10.1007/s40279-025-02281-8 | "Exercise Classification in Resistance Training: A Systematic Review of Technological Approaches", 55:2529-2565 | Peer | 2 | 1 | C |
| UCFRep origin, Zhang 2020 | 10.1109/CVPR42600.2020.00075; arXiv 2005.08465 | "Context-Aware and Scale-Insensitive Temporal Repetition Counting", CVPR 2020, pp. 667-675 (not named in notes) | Peer | 66 | null (retry: 429 x6) | C |

---

## 2. Claim checks

### Area A
| Claim (notes' wording, brief) | File | Verdict | Primary source |
|---|---|---|---|
| ML Kit: "landmark count not verified this session" | A | **CONFIRMED / closed**: "33 point skeletal match", including the hands and feet. The face must be visible. One person only. Per-landmark InFrameLikelihood | [ML Kit overview](https://developers.google.com/ml-kit/vision/pose-detection) |
| ML Kit base vs accurate speed "not verified" | A | **Closed**. Overview: the base SDK runs at "~30 and ~45 fps" on Pixel 4 and iPhone X; accurate is slower. Android table: base Pixel 3XL ~30 FPS; accurate ~23 FPS CPU / ~30 FPS GPU; app size +10.1 MB / +13.3 MB | [overview](https://developers.google.com/ml-kit/vision/pose-detection); [Android](https://developers.google.com/ml-kit/vision/pose-detection/android) |
| ML Kit "still beta" | A | **CONFIRMED**: "offered in beta, and is not subject to any SLA or deprecation policy". Still `18.0.0-beta5` (page updated 2026-11-03) | [Android](https://developers.google.com/ml-kit/vision/pose-detection/android) |
| ML Kit terms "not verified" | A | **Closed**. ML Kit ToS (modified 2025-05-14): incorporates the Google APIs ToS; models count as "related software"; no reverse engineering; processing is on-device and inputs are not sent to Google; the SDK sends performance and usage metrics to Google; the developer must inform users | [ML Kit terms](https://developers.google.com/ml-kit/terms) |
| ML Kit: "same BlazePose model?" | A | **CONFIRMED (by Google's card)**: the ML Kit pose model card covers BlazePose Lite/Full/Heavy (dated June 22, 2021), cites BlazePose and GHUM, and is "Apache License, Version 2.0" | [ML Kit pose model card](https://developers.google.com/static/ml-kit/images/vision/pose-detection/pose_model_card.pdf) |
| Pose Landmarker: 224x224 detector, 256x256 landmarker, float16 ("Weak") | A | **CONFIRMED** for lite/full/heavy; 33 landmarks; world landmarks in metres, with the hip midpoint as origin. The page (updated 2026-11-04) links all three bundles to the BlazePose GHUM 3D card | [Pose Landmarker](https://ai.google.dev/edge/mediapipe/solutions/vision/pose_landmarker) |
| Pose Landmarker "current per-variant benchmark table (Pixel 6 etc.)" | A | **NOT FOUND**: the current page has no device latency table. Use the model card's Pixel 3 figures | same |
| BlazePose venue "CVPR 2020 workshop" | A | **CONFIRMED as claimed** by the arXiv comment and model card, but it is not in the CVF archival workshop proceedings and has no DOI; treat it as a non-archival workshop paper. The paper claims "over 30 frames per second on a Pixel 2" | [arXiv](https://arxiv.org/abs/2006.10204); [CVF 2020 workshops](https://openaccess.thecvf.com/CVPR2020_workshops/menu) |
| RTMPose-t/s/m/l 9.02/13.89/26.44/45.37 ms, Snapdragon 865 | A | **CONFIRMED** in the paper's Table 10 (ncnn FP16; FP32 is 15.84/25.01/49.46/85.75 ms). The paper's AP(GT) is 68.4/72.8/77.3/78.3, which differs from the README's 68.5/72.2/75.8/76.5 (different evaluation set-up). Paper-era models were trained on COCO + AI Challenger | [arXiv 2303.07399](https://arxiv.org/pdf/2303.07399) |
| RTMO "CVPR 2024 (not verified)"; 9-45 ms | A | **CONFIRMED** CVPR 2024. **CORRECTED** scope: RTMO reports 74.8% AP (COCO val2017) and 141 FPS on a V100 GPU, with no phone or Snapdragon numbers. The 9-45 ms range applies to RTMPose only | [arXiv 2312.07526](https://arxiv.org/pdf/2312.07526); [Crossref](https://api.crossref.org/works/10.1109/cvpr52733.2024.00148) |
| OpenPose licence and commercial fee | A | Licence **CONFIRMED**: "noncommercial research purposes"; derivatives "owned by Licensor"; "no fee" for non-commercial use; commercial licence via FlintBox. The fee is **STILL UNVERIFIED**: no figure in LICENSE or README, and cmu.flintbox.com is unreachable | [LICENSE](https://raw.githubusercontent.com/CMU-Perceptual-Computing-Lab/openpose/master/LICENSE); [README](https://github.com/CMU-Perceptual-Computing-Lab/openpose) |
| Washabaugh 2022 "compares OpenPose, MediaPipe and others" | A | **CORRECTED**: it compared OpenPose, MoveNet Lightning, MoveNet Thunder and DeepLabCut (**no MediaPipe**). 32 able-bodied adults, sagittal video. Hip error: OpenPose 3.7±1.3°, MoveNet Thunder 4.6±1.8°. Knee: OpenPose best at 5.1±2.5° | [PubMed 35988434](https://pubmed.ncbi.nlm.nih.gov/35988434/) |
| JMIR camera-positioning study (journal/year, model, sample) | A, C | **CONFIRMED and closed**. Oliosi et al., JMIR mHealth uHealth 2026;14:e82412: 44 students (9 women; mean age 20.3); lab, Univ. of Évora; iPhone 11, iPhone 13, Galaxy A52 at 1080p/30 fps, lying horizontally on the floor. **Model: MoveNet** (Dotmoovs pipeline; one Dotmoovs author; COI "none declared"). Detection 61.1% (push-ups) / 61.5% (squats); MAE 1.08 / 1.11 reps; about 5 reps per trial | [PMC12978916](https://pmc.ncbi.nlm.nih.gov/articles/PMC12978916/) |
| "close-range (90 cm) and far frontal (360 cm) reduce detection" | A | **PARTLY CORRECTED**. Squats: side view at 90 cm was worst (0% detection, MAE 5); diagonal at 200 cm was best (95.5%, MAE 0.05). Push-ups: diagonal at **90-180 cm was best** (85.7%, MAE 0.28-0.29); front at 360 cm was worst (20%, MAE 2.70). So 90 cm hurt squats, not push-ups | same |
| MediaPipe knee-valgus error "~19°", landing | A | **CONFIRMED**: 18.83-19.68°. 15 healthy men, single-leg drop landing from 20 cm, camera 5 m away, vs Vicon | [PMC11399566](https://pmc.ncbi.nlm.nih.gov/articles/PMC11399566/) |
| Lifting: "MediaPipe RMSE 5.9 to 67.1°" | A | **STILL UNVERIFIED**. The abstract gives sagittal RMSE 9.9-31.2° for both systems, errors +15-30% from symmetric to asymmetric tasks, and validity falling with trunk rotation and walking; 67.1° does not appear. Full text (ScienceDirect) not reachable. n=20 | [PubMed 42575021](https://pubmed.ncbi.nlm.nih.gov/42575021/) |
| "2-8° sagittal gait errors" | A | **CONFIRMED**. Stenum: hip/knee/ankle MAE 4.0/5.6/7.4° (OpenPose). Yang & Park: 2.35/2.82/3.06°. Washabaugh: 3.7-5.1° | [PubMed 33891585](https://pubmed.ncbi.nlm.nih.gov/33891585/); [PMC10886083](https://pmc.ncbi.nlm.nih.gov/articles/PMC10886083/); [PubMed 35988434](https://pubmed.ncbi.nlm.nih.gov/35988434/) |
| Meta-analysis: occluded-side error "roughly double" | A | Title matches Scataglini et al. 2024. The doubling claim is **NOT FOUND** in the full text, which reports hip/knee sagittal agreement moderate to excellent, ankle poor, and frontal/transverse planes lacking. **Recommend dropping the "double" figure**; a 2025 ergonomics review by the same group does not support it either | [PMC11175331](https://pmc.ncbi.nlm.nih.gov/articles/PMC11175331/); [PMC12431202](https://pmc.ncbi.nlm.nih.gov/articles/PMC12431202/) |
| Front. Rehabil. Sci. 2023 compared "OpenPose, MediaPipe and Kinect" | A | **CORRECTED**: OpenPose, MediaPipe and **Kinovea** (a manual video-annotation tool) vs Vicon; no Kinect | [PMC10511642](https://pmc.ncbi.nlm.nih.gov/articles/PMC10511642/) |
| OpenPose valgus, DVJ "strong correlation" | A | **CONFIRMED**: Ino et al., n=21; MAE 2.4° (OpenPose) vs 3.2° (physiotherapist); r=0.97 with 3D | [PubMed 39228769](https://pubmed.ncbi.nlm.nih.gov/39228769/) |
| Single-leg squat AI pose: "difficulty with frontal knee" | A | **CONFIRMED and pinned** (Haberkamp 2022): frontal-plane knee r=0.20 vs 3D; sagittal r=0.68-0.94; adolescent athletes | [PubMed 36198251](https://pubmed.ncbi.nlm.nih.gov/36198251/) |
| Squat pipeline "hip bias -17.49°" | A | **CONFIRMED** (n=10; MediaPipe 0.10.26; LoA -51.89 to 16.91°) | [Crossref abstract](https://api.crossref.org/works/10.3390/biomechanics6010001) |
| 3-camera MediaPipe, n=6, "6.4°" | A | **CONFIRMED** (6.4° falls to 4.6° after subject-specific offset correction) | [Crossref abstract](https://api.crossref.org/works/10.3390/s26216773) |
| BlazePose knee study, "preprint, not peer reviewed" | A | **CORRECTED**: published 2026-11-03. n=15. Squat ICC 0.773 with a confidence ≥0.3 gate, but 0.428 (RMSE 25.43°) without it; 15.7% of observations failed the gate; static RMSE 15.49°; single-leg stance ICC 0.136 | [PubMed 42976294](https://pubmed.ncbi.nlm.nih.gov/42976294/) |
| Dill et al. venue "believed CDBME 2023" | A | **CONFIRMED** | [Crossref](https://api.crossref.org/works/10.1515/cdbme-2023-1141) |
| Sensors 2026 SR "moderate to high validity, mainly sagittal" | A | **CONFIRMED** wording, but scope is jump-landing and cutting (ACL screening), not squats or gait | [PMC13306381](https://pmc.ncbi.nlm.nih.gov/articles/PMC13306381/) |
| Camera angle: knee/hip "more consistent" from sagittal and frontal views | A | **CORRECTED**: the results were "reasonable correlations ... except for the shoulder", with "significant biases" between viewing angles, and "back-viewing cameras performed best". The sagittal/frontal statement is background in the introduction, not a finding | [PubMed 39943438](https://pubmed.ncbi.nlm.nih.gov/39943438/) |
| Sony AI AAAI-23 workshop fairness paper | A | **STILL UNVERIFIED**: no Crossref or arXiv record; r2hcai.github.io and ai.sony unreachable; S2 search rate-limited | none reachable |

### Area B
| Claim | File | Verdict | Primary source |
|---|---|---|---|
| Fitness-AQA dataset non-commercial | B | **CONFIRMED** and stronger: research and non-commercial only; "will not be included as part of any commercial software package or product"; CC BY-NC 4.0; names UBC and FlexAI Inc. | [licence PDF](https://github.com/ParitoshParmar/Fitness-AQA/blob/main/fitness_aqa_dataset_license.pdf) |
| Knees-inward 95.92% (image) vs 89.80% (3D pose) | B | **CONFIRMED numbers, CORRECTED context**. Table 1 is on the **Waseda Squat** dataset (public part: a single subject, home and office settings), not Fitness-AQA. Averages over the 5 errors: 89.92 (image) vs 89.08 (pose). Pose features win on convex back (98.65 vs 91.89) and shallow squat (87.30 vs 77.77). This is not evidence that image features beat pose overall | [arXiv 2202.14019](https://arxiv.org/pdf/2202.14019) |
| EC3D 90.9% mistake identification; subjects; label set [PK] | B | **CONFIRMED**: 90.9% recognition, 94.2% corrected; 4 subjects (S1-3 train, S4 test). Label set confirmed: squat (correct, feet too wide, knees inward, not low enough, front bent); lunge (correct, not low enough, knee passes toe); plank (correct, arched back, hunch back). 362 sequences (132/127/103) | [arXiv 2208.03257](https://arxiv.org/pdf/2208.03257) |
| Fit3D "about 47 exercises" [PK]; licence | B | **CORRECTED**: **37 exercises**, 13 subjects (incl. one licensed fitness instructor), >3 million images, markers plus 4 RGB cameras; IMAR and Lund University confirmed. Licence **STILL UNVERIFIED** (not stated in the paper; fit3d.imar.ro unreachable) | [CVF paper](https://openaccess.thecvf.com/content/CVPR2021/papers/Fieraru_AIFit_Automatic_3D_Human-Interpretable_Feedback_Models_for_Fitness_Training_CVPR_2021_paper.pdf) |
| QEVD temporal F-score 0.59 vs 0.50; size | B | **CONFIRMED** from the paper (Stream-VLM 0.59; baselines 0.50). QEVD 474+ h; FIT-300K 460+ h from 1,900+ participants; FIT-COACH benchmark ~4.5 h, 7 participants | [arXiv 2407.08101](https://arxiv.org/pdf/2407.08101) |
| QEVD data licence "treat as non-commercial" | B | **Partly closed, with a conflict.** The paper: data "collected under a direct agreement with the crowd workers, permitting research and commercial use" (collection consent). The FitAQA authors: QEVD is "Available from Qualcomm under the Data License Agreement–Research Use". Licence text **STILL UNVERIFIED** (qualcomm.com unreachable); treat as research-only | [QEVD paper](https://arxiv.org/pdf/2407.08101); [FitAQA Table 10](https://arxiv.org/pdf/2608.08736) |
| FitCoach code licence "inconsistent" | B | **CONFIRMED BSD-3-Clause-Clear**: LICENSE.txt is BSD-3 plus "NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS". The .doc evaluation licence was not found at the repo root | [LICENSE.txt](https://raw.githubusercontent.com/Qualcomm-AI-research/FitCoach/main/LICENSE.txt) |
| EgoExo-Fitness data terms "unknown" | B | **Closed: NOT commercially usable.** The agreement forbids "any commercial purpose", including "Testing commercial systems"; no redistribution; must be signed by "an advisor or professor"; "only ... for scientific research" | [License_Agreement.pdf](https://github.com/iSEE-Laboratory/EgoExo-Fitness/blob/main/License_Agreement.pdf) |
| EgoExo-Fitness exercise list [PK] | B | **STILL UNVERIFIED** (not re-read) | — |
| FitAQA: 2,219 videos, 30 bodyweight exercises; results | B | **CONFIRMED and closed**: 2,219 videos, 5,512 QA, 38 form errors across 6 quality dimensions; built from QEVD, EgoExo-Fitness, Kinetics-700 and UCF101; only QA and metadata are released. Best perception accuracy 51.2% (GPT-5.5) vs a 41.1% "always correct" baseline and 33.6% random. Best judgement F1 72.1 (Gemini-3.1-pro) vs 54.1 random. Best temporal mIoU 47.5 | [arXiv 2608.08736](https://arxiv.org/pdf/2608.08736) |
| Kaia 0.828 vs 0.833; affiliations | B | **CONFIRMED**: percent agreement 0.828 (app vs physiotherapists) vs 0.833 (between physiotherapists); non-inferiority; n=24 patients; front camera. Affiliations: LMU Munich University Hospital (Orthopaedics/PM&R), Kaia Health GmbH, an independent statistician. COI: 3 authors are Kaia employees with "salary and stock options". Bavarian Ministry grant MED-1804-0003. **CORRECTION**: Cohen κ per exercise was also reported (the notes said percent agreement only) | [PMC8317029](https://pmc.ncbi.nlm.nih.gov/articles/PMC8317029/) |
| Dixon 2007: false alarms worse than misses | B | **CONFIRMED**: 32 undergraduates; "False alarm-prone automation hurt overall performance more than miss-prone automation"; false alarms affected compliance and reliance, misses only reliance | [PubMed 17702209](https://pubmed.ncbi.nlm.nih.gov/17702209/) |
| 2014 follow-up: "both error types hurt; asymmetry from extreme PPV/NPV" | B | **CORRECTED / NOT FOUND**. Meyer et al. 2014 found compliance unaffected by NPV and reliance affected by PPV, so the false-alarm rate drives both. The "extreme predictive values" point is not in the abstract | [PubMed 25141592](https://pubmed.ncbi.nlm.nih.gov/25141592/) |
| FMS "pooled ICC 0.81-0.84" | B | **CONFIRMED**. Bonazza: inter-rater 0.81 (95% CI 0.70-0.92), intra-rater 0.81. Cuchna: inter-rater 0.843 (0.640-0.936), intra-rater 0.869 | [PubMed 27159297](https://pubmed.ncbi.nlm.nih.gov/27159297/); [PubMed 26777566](https://pubmed.ncbi.nlm.nih.gov/26777566/) |
| CVPRW 2026 VLM evaluation "unreliable" | B | **CONFIRMED** (full paper read). Gemini 3.1 Pro, Qwen3-VL and InternVL3.5 perform "only marginally above random chance". There is a bias "to predict correct execution regardless of visual evidence". Authors are from **Sword Health** (industry) and IST/INESC-ID | [arXiv 2604.08294](https://arxiv.org/pdf/2604.08294) |
| Other [PK] DOIs (Parasuraman, Winstein, Padua, Munro, Myer, Physio@Home, YouMove) | B | **CONFIRMED** bibliographically (see table); content not re-read | Crossref |

### Area C
| Claim | File | Verdict | Primary source |
|---|---|---|---|
| Countix ~8.7K; 4,588 train / 1,450 val | C | **CONFIRMED**, plus 2,719 test (8,757 total) | [RepNet paper](https://arxiv.org/pdf/2006.15418) |
| RepNet code, weights, Countix licences | C | Folder README has no licence statement ("RepNet checkpoint updated. Eval scripts coming soon."). The paper has no licence statement. **Countix licence STILL UNVERIFIED** (sites.google.com unreachable) | [repnet README](https://github.com/google-research/google-research/blob/master/repnet/README.md) |
| TransRAC licence = Apache-2.0 + "Anti 996" | C | **CONFIRMED**: Apache-2.0 text followed by "Anti 996" Licence v1.0 (Draft): notice display, labour-law compliance, no waivers by employees | [LICENSE](https://github.com/SvipRepetitionCounting/TransRAC/blob/main/LICENSE) |
| RepCount data licence | C | **STILL UNVERIFIED** (svip-lab.github.io unreachable) | — |
| PoseRAC MAE 0.236 / OBO 0.560; "preprint" | C | Numbers **CONFIRMED** (Table 3; UCFRep-pose 0.312/0.452; 20 vs 200 per-frame time for TransRAC, on an RTX 3090 Ti set-up). Status **CORRECTED**: an ICONIP 2024 peer-reviewed version exists (LNCS 2025); its numbers were not checked | [arXiv 2303.08450](https://arxiv.org/pdf/2303.08450); [Crossref](https://api.crossref.org/works/10.1007/978-981-96-6588-4_18) |
| ESCounts: OBO 0.39→0.56, MAE 0.38→0.21 | C | **CONFIRMED**: ViT-B MAE 0.213, OBO 0.563 vs MFL 0.384/0.386; open set 0.436/0.519 | [arXiv 2403.18074](https://arxiv.org/pdf/2403.18074) |
| CountLLM numbers "not retrieved" | C | **Closed**: RepCount MAE 0.162 / OBO 0.639; UCFRep 0.116/0.839; Countix 0.215/0.801 (VideoMAE). Its table lists RepNet at 0.995/0.013 on RepCount, the kind of baseline the RepNet authors' note disputes | [arXiv 2503.17690](https://arxiv.org/pdf/2503.17690) |
| OVR "preprint, no venue" | C | **CONFIRMED** preprint. 72,552 videos; no licence statement in the paper | [arXiv 2407.17085](https://arxiv.org/pdf/2407.17085) |
| RecoFit "within ±1 rep 93%" | C | **STILL UNVERIFIED**: Microsoft PDF HTTP 403, ACM unreachable, no abstract in Crossref or S2. Bibliographic details confirmed | [Crossref](https://api.crossref.org/works/10.1145/2556288.2557116) |
| MM-Fit recognition 96/94/85/82%; rep-counting numbers; data licence | B, C | Recognition **CONFIRMED** (abstract). Rep-counting numbers **STILL UNVERIFIED** (ACM full text unreachable). No data licence on the site source or README (**CONFIRMED absent**) | [Crossref abstract](https://api.crossref.org/works/10.1145/3432701); [site source](https://github.com/mmfit/mmfit.github.io/blob/master/index.html) |
| ML Kit sample: enter 6, exit 4, top-K 30/10, window 10, alpha 0.2 | C | **CONFIRMED** in code: `DEFAULT_ENTER_THRESHOLD = 6f`, `DEFAULT_EXIT_THRESHOLD = 4f`, `MAX_DISTANCE_TOP_K = 30`, `MEAN_DISTANCE_TOP_K = 10`, `AXES_WEIGHTS (1,1,0.2)`, window 10, alpha 0.2f, reset 100 ms, classes `pushups_down`/`squats_down`, stream mode only. The guide describes the enter/exit logic but gives **no numeric values** | [RepetitionCounter.java](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/src/main/java/com/google/mlkit/vision/demo/java/posedetector/classification/RepetitionCounter.java); [guide](https://developers.google.com/ml-kit/vision/pose-detection/classifying-poses) |
| "Short note ... by the RepNet authors per search summary" | C | **CONFIRMED** (Dwibedi and 4 co-authors) | [arXiv 2411.08878](https://arxiv.org/abs/2411.08878) |
| UCFRep size "not verified" | C | **Closed**: "UCFRep dataset with 526 videos" (stated in PoseRAC); origin is Zhang et al., CVPR 2020 | [arXiv 2303.08450](https://arxiv.org/pdf/2303.08450) |

---

## 3. Licence findings (code vs weights vs data)

| Item | Code | Weights / model | Data | Commercial use? | Source |
|---|---|---|---|---|---|
| MediaPipe Pose Landmarker | Apache-2.0 (per notes) | Apache-2.0 (BlazePose GHUM 3D card, linked from the current task page) | Google-internal, not distributed | **Yes** | [task page](https://ai.google.dev/edge/mediapipe/solutions/vision/pose_landmarker) |
| ML Kit Pose Detection | Closed SDK under ML Kit ToS + Google APIs ToS; no reverse engineering; usage metrics sent to Google | Card says Apache-2.0, but the model is delivered inside the SDK | n/a | **Yes, under Google terms** (Google APIs ToS not read). Beta, no SLA; must disclose metrics collection | [terms](https://developers.google.com/ml-kit/terms) |
| RTMPose / RTMO | Apache-2.0 | **No licence stated** (RTMPose README) | COCO, AI Challenger (site 403), CrowdPose and Halpe (no licence in READMEs), Human-Art (**non-commercial**), COCO-WholeBody (**research/non-commercial**; commercial use by contacting SenseTime), UBody (no licence in OSX README) | **Unclear to no** for Body8/Cocktail-trained weights | [COCO-WholeBody](https://github.com/jin-s13/COCO-WholeBody); [HumanArt](https://github.com/IDEA-Research/HumanArt); [CrowdPose](https://github.com/Jeff-sjtu/CrowdPose) |
| OpenPose | Non-commercial research only; CMU owns derivatives | Same | n/a | **No** without a paid FlintBox licence (fee unverified) | [LICENSE](https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/LICENSE) |
| TransRAC | Apache-2.0 + Anti-996 (labour-law conditions) | No separate licence | RepCount: unverified | Code: **yes, with conditions** (legal review); data unclear | [LICENSE](https://github.com/SvipRepetitionCounting/TransRAC/blob/main/LICENSE) |
| FitCoach / Stream-VLM | BSD-3-Clause-Clear (no patent grant) | Not stated; LLaMA licences apply | QEVD: Qualcomm research licence (per FitAQA) | Code yes; data **no (likely)** | [LICENSE.txt](https://raw.githubusercontent.com/Qualcomm-AI-research/FitCoach/main/LICENSE.txt) |
| Fitness-AQA | No code licence shown | — | CC BY-NC 4.0 + research-only terms | **No** | [licence PDF](https://github.com/ParitoshParmar/Fitness-AQA/blob/main/fitness_aqa_dataset_license.pdf) |
| EgoExo-Fitness | Apache-2.0 (per notes) | — | Signed agreement; commercial use and testing commercial systems banned | Data **no** | [agreement](https://github.com/iSEE-Laboratory/EgoExo-Fitness/blob/main/License_Agreement.pdf) |
| FitAQA | Not checked | — | Releases QA and metadata only; videos keep their source terms (QEVD research, EgoExo-Fitness non-commercial, Kinetics, UCF101) | **No** for the videos; own QA licence unverified | [arXiv 2608.08736](https://arxiv.org/pdf/2608.08736) |
| Fit3D | — | — | Unverified | **Unclear** | — |
| Countix / OVR | Apache-2.0 monorepo (per notes) | RepNet checkpoint: no statement | Not stated in either paper; project page unreachable | **Unclear** | [RepNet](https://arxiv.org/pdf/2006.15418); [OVR](https://arxiv.org/pdf/2407.17085) |
| MM-Fit | MIT (per notes) | — | No licence anywhere (all rights reserved) | Data **no** without permission | [site source](https://github.com/mmfit/mmfit.github.io/blob/master/index.html) |

---

## 4. New facts that close gaps

1. **ML Kit Pose Detection is BlazePose, on ML Kit terms.** Its model card (June 22, 2021) is a BlazePose Lite/Full/Heavy card under Apache-2.0, quoting the same Pixel 3 rates (Lite ~44/49 FPS CPU/GPU, Full ~18/40, Heavy ~4/19). The SDK itself runs under the ML Kit ToS, which require telling users that metrics go to Google. Evidence: **strong** (official documentation). [card](https://developers.google.com/static/ml-kit/images/vision/pose-detection/pose_model_card.pdf); [terms](https://developers.google.com/ml-kit/terms)
2. **The two Google BlazePose model cards report different fairness numbers.** The ML Kit card reports skin-tone PDJ of Heavy 98.2% (range 97.7-98.8), Full 96.3% (94.7-97.1) and Lite 94.2% (91.4-96.3), with gender gaps of at most 1.0/1.3/1.6 points. The MediaPipe GHUM 3D card (dated April 16, 2021; re-read this session) reports lower values with wider gaps: skin tone Heavy 93.6% (89.3-95.0), Full 91.1% (85.9-92.9), Lite 86.4% (80.5-87.8). This confirms the figures A quotes. Both cards use PDJ on 1,400 back-camera photos. Quote the card that matches the deployed model and flag the discrepancy. Evidence: **strong** as documents, conflicting. [ML Kit card](https://developers.google.com/static/ml-kit/images/vision/pose-detection/pose_model_card.pdf); [GHUM 3D card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)
3. **First MoveNet-vs-mocap number** (A said none was found). In Washabaugh, MoveNet Thunder hip error was 4.6±1.8° over the gait cycle, and OpenPose did best overall. Evidence: **strong** (peer-reviewed, n=32, gait only). [PubMed](https://pubmed.ncbi.nlm.nih.gov/35988434/)
4. **The only peer-reviewed phone counting study used MoveNet, with phones on the floor.** In Oliosi 2026, exact-count accuracy was the primary outcome. The 90 cm side view failed completely for squats. Evidence: **weak to moderate** (lab, n=44 students, ~5-rep trials). [PMC12978916](https://pmc.ncbi.nlm.nih.gov/articles/PMC12978916/)
5. **Confidence gating makes or breaks BlazePose angle validity.** Squat knee ICC was 0.773 with a confidence ≥0.3 gate and 0.428 (RMSE 25.4°) without it; 15.7% of observations failed the gate. This supports Delva's plan to say nothing on low-confidence frames. Evidence: **weak to moderate** (n=15, peer-reviewed). [PubMed](https://pubmed.ncbi.nlm.nih.gov/42976294/)
6. **Frontal-plane knee from 2D pose is poor in single-leg squats.** Haberkamp reports r=0.20 vs 3D. Evidence: **strong** (peer-reviewed; adolescents). [PubMed](https://pubmed.ncbi.nlm.nih.gov/36198251/)
7. **Lifting:** MediaPipe had lower error for the trunk and proximal joints, OpenCap for distal joints; errors rose 15-30% in asymmetric tasks. Evidence: **moderate**. [PubMed](https://pubmed.ncbi.nlm.nih.gov/42575021/)
8. **Off-the-shelf MLLMs on bodyweight form errors (FitAQA)** reach at best about 51% perception accuracy, against a 41% "always correct" baseline. The CVPRW 2026 study adds a systematic "says it's correct" bias. Evidence: **weak** (FitAQA is a preprint) and **weak to moderate** (CVPRW 2026; industry authors). [FitAQA](https://arxiv.org/pdf/2608.08736); [CVPRW](https://arxiv.org/pdf/2604.08294)
9. **CountLLM is state of the art:** RepCount MAE 0.162 / OBO 0.639, but it is LLM-sized. Evidence: **strong** for the benchmark claim (CVPR 2025), not relevant for on-device use. [arXiv](https://arxiv.org/pdf/2503.17690)
10. **Kaia also reported Cohen κ, was funded by a Bavarian ministry grant, and three authors held Kaia stock options.** Evidence: **strong** for the facts (full text). [PMC8317029](https://pmc.ncbi.nlm.nih.gov/articles/PMC8317029/)
11. **EC3D's full error label set is now verified** (see section 2). It is the only verified set covering squat, lunge and plank errors. Evidence: **strong** (peer-reviewed; tiny n). [arXiv](https://arxiv.org/pdf/2208.03257)
12. **Six papers listed as preprints are now peer-reviewed.** PoseRAC (ICONIP 2024), Full Resolution (ICIRA 2023), MultiCounter (ECAI 2024), DeTRC (IJCV 2026), Viewpoint-invariant counting (HISS 2023) and the BlazePose knee study (JMIR Rehab 2026). The AQA survey is also now in IJCV. Evidence: **strong** (Crossref records; see table).

**Remaining STILL UNVERIFIED** (hosts unreachable): the Sony AI fairness paper; the OpenPose commercial fee; Fit3D, Countix, RepCount and QEVD licence texts; the RecoFit 93% figure; MM-Fit rep-counting numbers; the lifting study's 67.1° figure; the EgoExo-Fitness exercise list. There are no S2 counts for Washabaugh, Haberkamp, EgoExo-Fitness, UCFRep, MyoMechanix or the Sony paper: the first batch returned null for the first three DOIs, and both later retries got HTTP 429 six times. Crossref counts are given where a DOI exists.
