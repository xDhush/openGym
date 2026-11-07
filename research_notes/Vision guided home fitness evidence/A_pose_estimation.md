# Area A: Real-time on-device human pose estimation for a phone-camera home fitness app (Delva)

Date checked for every number, star count, push date and licence below: **2026-11-07** (unless a different date is stated).

Access notes (read before relying on these notes):
- Verified at primary source in this session: Google's BlazePose GHUM 3D and MoveNet model-card PDFs (storage.googleapis.com), GitHub READMEs, LICENSE files and repo metadata (via `gh` search API), Apple Vision documentation (developer.apple.com JSON endpoints), Google's ML Kit sample `build.gradle`.
- Blocked by this session's network policy (host did not resolve): ai.google.dev, developers.google.com, developers.google.cn, kaggle.com, arxiv.org, api.semanticscholar.org, pmc.ncbi.nlm.nih.gov, www.ncbi.nlm.nih.gov, www.ebi.ac.uk, mdpi.com, frontiersin.org, jssm.org, preprints.jmir.org, journals.plos.org, ai.sony, r2hcai.github.io, dl.google.com. These must be allowed in the session's network settings to close the gaps flagged below.
- The shared WebSearch budget ran out after 7 searches. Validation-study numbers in Section 3 therefore come from search-engine abstracts and snippets, not full texts; each is labelled "full text not retrieved".
- **Citation counts: "citation count not verified" for every paper** (Semantic Scholar API and Google Scholar unreachable).
- **GitHub contributor counts: "not verified" for every repo** (the GitHub page did not render the count via WebFetch).
- Evidence labels used: **[Strong]** = peer-reviewed study with a reference standard, systematic review, or official primary documentation of a fact about the product itself; **[Weak]** = single small study, preprint, snippet-level only, or vendor self-evaluation on in-house data; **[Industry/opinion]** = vendor marketing claims, commercial practice, or my inference.

---

## 1. Which on-device models and SDKs are credible? (table-ready shortlist)

### Takeaway
For a commercial iOS + Android app, the credible, licence-clean shortlist is **MediaPipe Pose Landmarker (BlazePose GHUM 3D)** (Apache-2.0 code and weights, 33 landmarks incl. heels and toes, published fairness card), **Apple Vision 2D/3D body pose** (iOS only, no feet), **MoveNet** (Apache-2.0, fast, 17 COCO points, no feet) and **ML Kit Pose Detection** (still beta). **RTMPose** is the strongest open research model on accuracy per millisecond but its weights carry unresolved training-data licence questions; **Ultralytics YOLO-pose** (AGPL-3.0) and **OpenPose** (non-commercial) are red flags for direct use.

### Cited Findings

#### Table-ready summary (all checked 2026-11-07)

| # | Item | Type | Output | Feet/heels/toes? | Phone speed evidence (named device) | Code licence | Weights licence | Training-data issue | Maintenance | Verdict for Delva |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | MediaPipe Pose Landmarker / BlazePose GHUM 3D (lite/full/heavy) | SDK + model | 33 landmarks, x,y,z,visibility,presence; 3D world landmarks (m) | Yes: heels + "foot index" | Pixel 3: lite ~44 FPS CPU / ~49 GPU; full ~18 / ~40; heavy ~4 / ~19 | Apache-2.0 | Apache-2.0 (model card) | Google-internal data, not redistributed | Repo pushed 2026-11-07; release v1.2.2 (03 Nov) | **Primary candidate** (both OSs) |
| 2 | Apple Vision `VNDetectHumanBodyPoseRequest` (2D) + `VNDetectHumanBodyPose3DRequest` (3D) | OS framework | 2D: up to 19 points (iOS 14+); 3D: 17 joints + body height in m (iOS 17+) | No (ankles only) | None published | Apple platform API | n/a (in OS) | n/a | Current Apple API | **Strong iOS option**; no Android equivalent |
| 3 | Google ML Kit Pose Detection (base / accurate) | SDK (closed binary) | BlazePose-family landmarks (count not verified this session) | Not verified | Not verified (docs blocked) | Samples Apache-2.0; SDK under ML Kit terms (not verified) | Not verified | n/a | Still `18.0.0-beta5` in Google's own sample | **Usable, but beta** |
| 4 | MoveNet SinglePose Lightning / Thunder | Model (TFLite / TF.js) | 17 COCO keypoints, 2D | No (ankles only) | Laptops only in model card; "50+ fps on modern laptops and phones" (README claim, no device named) | Apache-2.0 (tfjs-models) | Apache-2.0 (model card) | COCO + Google "Active" set from YouTube fitness videos | tfjs-models pushed 2026-06-23 | **Good fallback**, fast; weak for feet |
| 5 | RTMPose / RTMO / RTMW (OpenMMLab MMPose) + rtmlib | Models + toolkit | COCO-17, Halpe26, COCO-WholeBody 133; RTMW3D | Yes in Halpe26 / WholeBody variants (composition not verified on page) | Snapdragon 865 ncnn-FP16: t 9.02 ms, s 13.89 ms, m 26.44 ms, l 45.37 ms | Apache-2.0 | **No weights licence stated** | AI Challenger, Halpe (no licence file), UBody, etc. | mmpose pushed 2025-08-04 (slowing) | **Research benchmark**; legal review before shipping weights |
| 6 | Ultralytics YOLO26-pose / YOLO11-pose | Models + toolkit | Multi-person COCO-Pose keypoints | No (COCO) | No mobile numbers in README (CPU ONNX, T4 only) | **AGPL-3.0** or paid Enterprise | **AGPL-3.0** or Enterprise | COCO-Pose | Pushed 2026-11-07 | **Red flag** unless Enterprise licence |
| 7 | Qualcomm AI Hub Models | Model zoo / benchmark harness | Hosts MediaPipe-Pose, MoveNet, RTMPose-Body2d, HRNetPose, LiteHRNet, PoseNet, YOLO-pose | Depends on model | Latency on aihub.qualcomm.com (not checked) | BSD-3-Clause (repo) | Per-model licences not stated on main page | Inherited from each model | Pushed 2026-11-07 | **Use for Snapdragon benchmarking**, not as a model source |
| 8 | CMU OpenPose | Library + models | BODY_25 (incl. 6 foot points), hands 2x21, face 70 | Yes (BODY_25) | Desktop GPU class, not on-device | **Custom non-commercial** | Same | n/a | Last push 2024-08-03 (inactive, "archived but influential") | **Do not ship**; useful only as the most-validated reference in the literature |

#### Per-item notes (format: name and link | type | what it is | why it matters for Delva | credibility | licence | ideas to borrow | limitations)

**1. Google MediaPipe Pose Landmarker / BlazePose GHUM 3D**
- Link: [github.com/google-ai-edge/mediapipe](https://github.com/google-ai-edge/mediapipe); model card: [Model Card BlazePose GHUM 3D (PDF)](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf); task docs [ai.google.dev pose_landmarker](https://ai.google.dev/edge/mediapipe/solutions/vision/pose_landmarker) (not reachable from this session).
- Type: SDK + pretrained models (Android, iOS, web, Python).
- What it is: Lite (3 MB), Full (6 MB) and Heavy (26 MB) models "to estimate the full 3D body pose of an individual in videos captured by a smartphone or web camera. Optimized for on-device, real-time fitness applications." Returns 33 keypoints incl. heels and "foot index" and pinky/index/thumb knuckles; output is 33x5 (x, y, z, visibility, presence). [Strong] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)
- Z is "not metric but up to scale", obtained "by fitting synthetic data (GHUM model) to the 2D annotation". [Strong] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf). World landmarks are "real-world 3D coordinates in meters, with the origin at the center between the hips". [Strong] - [legacy MediaPipe Pose docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)
- Why it matters: Feature 1 (form tracking) and Feature 3 (rep counting, plank hold timing). The model card lists intended domains "Fitness and repetition counting" and "3D pose measurements (angles / distances)". Heel and foot-index points are needed for heel-lift and foot-placement cues in squats, lunges and planks. [Strong] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)
- Credibility: Google; 37,589 stars; pushed 2026-11-07; Apache-2.0; owner google-ai-edge; contributors not verified ([gh search API]; [repo](https://github.com/google-ai-edge/mediapipe)). Latest release v1.2.2 on "03 Nov" (year not shown on page; presumed 2026 given push date) ([releases](https://github.com/google-ai-edge/mediapipe/releases)). Paper: "BlazePose: On-device Real-time Body Pose tracking, CVPR Workshop on Computer Vision for Augmented and Virtual Reality, Seattle, 2020" (venue as cited in the model card; [arXiv 2006.10204](https://arxiv.org/abs/2006.10204) not fetched); workshop paper, citation count not verified.
- Licence: code Apache-2.0 ([repo](https://github.com/google-ai-edge/mediapipe)); weights "LICENSED UNDER Apache License, Version 2.0" ([model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)); training data is Google-internal ("consented images (30K) of people using a mobile AR application" and "The majority of training images (85K) capture a wide range of fitness poses") and is not distributed, so no dataset licence passes through. Commercial use allowed with Apache-2.0 attribution/NOTICE obligations.
- Status / LiteRT migration: the legacy "MediaPipe Pose" solution was "upgraded to a new MediaPipe Solution" (Pose Landmarker) "As of May 10, 2023" ([legacy pose.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)); support for Legacy Solutions "ended on March 1, 2023" ([models.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/models.md)). Recent MediaPipe releases move the runtime onto LiteRT (v1.1.1: "Migrates to the new LiteRT GetOptions() API ... upgrades the LiteRT dependency to v2.3.0"; v1.1.0 replaces the LiteRT delegate with a `use_litert` option) ([releases](https://github.com/google-ai-edge/mediapipe/releases)). LiteRT is the "successor to TensorFlow Lite" and TensorFlow Lite packages "are in maintenance mode and only receive critical security and stability updates" ([LiteRT repo](https://github.com/google-ai-edge/LiteRT); 3,576 stars, pushed 2026-11-07, Apache-2.0). [Strong]
- Ideas to borrow: use per-landmark `visibility`/`presence` to suppress feedback on occluded joints; detector-then-tracker design (ROI from previous frame) for speed; pick lite/full/heavy by device tier.
- Limitations (model card, [Strong]): out of scope: "Multiple people", "People too far away from the camera (e.g. further than 14 feet/4 meters)", "Head is not visible", "Applications requiring metric accurate depth"; "sensitive to face position, scale and orientation"; quality degrades and "jittering" increases with low light, noise, motion; "The model is not intended for human life-critical decisions. The primary intended application is entertainment."

**2. Apple Vision body pose (2D and 3D)**
- Links: [Detecting human body poses in images](https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images); [VNDetectHumanBodyPose3DRequest](https://developer.apple.com/documentation/vision/vndetecthumanbodypose3drequest); [VNHumanBodyPose3DObservation](https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation); [3D JointName](https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation/jointname).
- Type: OS framework (iOS/iPadOS/macOS/visionOS).
- What it is (2D): "Starting in iOS 14 and macOS 11"; "detecting up to 19 unique body points": left/right wrists, elbows, shoulders, ears, eyes, hips, knees, ankles, plus nose, neck and root. Returns one observation per detected person; normalized coordinates. [Strong] - [Apple](https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images)
- What it is (3D): "A request that detects points on human bodies in 3D space, relative to the camera"; "If the system allows it, the request uses AVDepthData information to improve the accuracy"; iOS 17.0+, macOS 14.0+, visionOS 1.0+. [Strong] - [Apple](https://developer.apple.com/documentation/vision/vndetecthumanbodypose3drequest). 17 joints: topHead, centerHead, centerShoulder, L/R shoulder, elbow, wrist, hip, knee, ankle, root, spine. [Strong] - [Apple JointName](https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation/jointname). Observation exposes `bodyHeight` ("The estimated human body height, in meters"), `heightEstimation` (technique used), `cameraOriginMatrix` ("A transform from the skeleton hip to the camera"). [Strong] - [Apple](https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation)
- Why it matters: zero model download, Neural-Engine path on iPhone; 3D joints include a `spine` point and metric body height, useful for squat depth and trunk angle on iOS.
- Credibility: Apple official API; no public model card, accuracy, latency or fairness report found (gap). The only head-to-head number found is Google's own comparison on Google datasets: Apple Vision PCK@0.2 82.7 (Yoga) / 91.4 (Dance) / 88.6 (HIIT) vs BlazePose Full 95.5 / 96.3 / 95.7 ([legacy MediaPipe docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)). [Weak]: competitor-run, ~2020-2021 Apple version, Google test sets.
- Licence: Apple platform API under Apple developer agreements (terms not reviewed in this session); no Android version.
- Ideas to borrow: Apple's capture guidance (Section 5); `regionOfInterest` to improve accuracy.
- Limitations: no feet/heels/toes in either 2D or 3D, so no heel-lift check; iOS-only, so Delva would need a second model on Android and must reconcile different keypoint definitions across platforms.

**3. Google ML Kit Pose Detection (base vs accurate)**
- Link: [developers.google.com/ml-kit/vision/pose-detection](https://developers.google.com/ml-kit/vision/pose-detection) (blocked in this session); samples [googlesamples/mlkit](https://github.com/googlesamples/mlkit) (4,309 stars, pushed 2026-10-26, Apache-2.0, contributors not verified).
- Type: closed-source SDK (Android, iOS).
- Verified: Google's own sample app still depends on `com.google.mlkit:pose-detection:18.0.0-beta5` and `com.google.mlkit:pose-detection-accurate:18.0.0-beta5`; pose detection is the only group in that file on beta for both variants (face detection is `16.1.7`, barcode `17.3.0`). [Strong] - [build.gradle](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/build.gradle)
- Not verified (docs host blocked): landmark count and whether it is the same BlazePose model, base vs accurate speed tables, ML Kit terms of service, model card. A Google-hosted "pose model card" PDF exists ([developers.google.cn link from search](https://developers.google.cn/static/ml-kit/images/vision/pose-detection/pose_model_card.pdf)) but could not be fetched.
- Why it matters: lowest integration effort on Android; one vendor on both OSs.
- Limitations: beta status after years at the same major version implies limited investment; closed binary, so behaviour cannot be audited; licence is a Google service terms document rather than Apache-2.0 (not verified).

**4. TensorFlow MoveNet SinglePose (Lightning / Thunder)**
- Link: [MoveNet model card (PDF)](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf); [tfjs-models pose-detection](https://github.com/tensorflow/tfjs-models/tree/master/pose-detection); Kaggle page (blocked).
- Type: pretrained model (TF.js, TFLite).
- What it is: MobileNetV2 + FPN + CenterNet heads; inputs 192x192 (Lightning) / 256x256 (Thunder); outputs 17 keypoints (nose, eyes, ears, shoulders, elbows, wrists, hips, knees, ankles) + confidence. "Tuned to be robust on detecting fitness/fast movement with difficult poses and/or motion blur"; "Most suitable for detecting the pose of a single person who is 3ft ~ 6ft away"; "predicts 17 human keypoints of the full body even when they are occluded"; recommended confidence threshold 0.3; focuses on the person closest to image centre. [Strong] - [model card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)
- Why it matters: fastest Apache-2.0 option for Feature 3 (rep counting from large joint motions such as jumping jacks, squats).
- Credibility: Google; tfjs-models 14,812 stars, pushed 2026-06-23, Apache-2.0, contributors not verified. No peer-reviewed paper (model card + blog only). README still lists MoveNet, BlazePose and PoseNet with no deprecation notice; "Currently, only PoseNet supports multi-pose estimation" in that package ([README](https://github.com/tensorflow/tfjs-models/tree/master/pose-detection)).
- Licence: weights "Licensed Under Apache License, Version 2.0" ([model card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)). Training data: COCO 2017 train (filtered to 28k) plus a Google "Active" set of 23.5k images "sampled from YouTube fitness videos". Data are not redistributed; weights licence is Apache-2.0.
- Ideas to borrow: confidence threshold gating; "closest to centre" person selection for homes with other people in view.
- Limitations: no feet, no hands, no spine, 2D only; speed table covers only laptops in Chrome (Lightning 10.5-39.0 ms, Thunder 15.0-64.0 ms); no named-phone benchmark; it hallucinates occluded joints by design, so feedback must be gated on confidence.

**5. OpenMMLab MMPose: RTMPose, RTMO, RTMW (+ rtmlib)**
- Links: [mmpose](https://github.com/open-mmlab/mmpose); [RTMPose project](https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose); [rtmlib](https://github.com/Tau-J/rtmlib).
- Type: models + toolkit.
- What it is: RTMPose-t/s/m/l COCO AP 68.5 / 72.2 / 75.8 / 76.5 (AIC+COCO, 256x192); Snapdragon 865 ncnn-FP16 latency t 9.02 ms, s 13.89 ms, m 26.44 ms, l 45.37 ms; "RTMPose-s achieves 72.2% AP on COCO with 70+ FPS on a Snapdragon 865 chip". Halpe26 models (26 keypoints) PCK@0.1 91.89-95.74. Whole-body 133 keypoints "defined as COCO-WholeBody"; RTMW-x 70.2 Whole AP. RTMO = real-time multi-person; RTMW3D = 3D whole-body. [Strong for repo-reported numbers; Weak as independent evidence] - [RTMPose README](https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose); [mmpose README](https://github.com/open-mmlab/mmpose)
- Why it matters: best published accuracy-per-millisecond on a named phone chip; Halpe26 / WholeBody variants add foot points (heel lift) and hands.
- Credibility: mmpose 8,036 stars; pushed 2025-08-04 (inside the 18-month window but slowing; README "What's New" still headlines v1.3.0 of 4 Jan 2024); Apache-2.0; owner open-mmlab; contributors not verified. RTMPose paper is an arXiv preprint (2023), citation count not verified; RTMO reported as CVPR 2024 (not verified this session). rtmlib: 698 stars (below the 1,000 bar; included only as the lightweight inference library for the RTMPose family; maintainer identity not verified), pushed 2026-08-03, Apache-2.0. mmdeploy (mobile deployment path): 3,154 stars, last push 2024-09-30 (inactive >18 months).
- Licence: code Apache-2.0. **Weights: the RTMPose page states no weights licence.** Training data named on the page: AI Challenger, MS COCO, CrowdPose, MPII, sub-JHMDB, Halpe, PoseTrack18 (Body8); Cocktail14 adds COCO-WholeBody, UBody, Human-Art, WFLW, 300W, COFW, LaPa, InterHand. Dataset terms not verified in this session. Halpe-FullBody repo has **no licence file** (gh: license null; 375 stars; last push 2022-11-08), i.e. all rights reserved by default. UBody comes from IDEA-Research/OSX (code MIT, 798 stars, pushed 2024-08-26); dataset terms not verified.
- Ideas to borrow: SimCC-style lightweight heads and the t/s/m tiering by device; use as an offline "teacher" or accuracy benchmark for Delva's own validation set.
- Limitations: licence chain for weights unresolved (see Section 6); no first-party iOS/Android SDK; deployment tooling (mmdeploy) inactive.

**6. Ultralytics YOLO pose (YOLO26-pose, YOLO11-pose)**
- Link: [ultralytics/ultralytics](https://github.com/ultralytics/ultralytics); licence page [ultralytics.com/license](https://www.ultralytics.com/license) (not fetched).
- Facts: 63,183 stars; pushed 2026-11-07; AGPL-3.0; contributors not verified. Pose table lists YOLO26n/s/m/l/x-pose trained on COCO-Pose, "focusing on the 'person' class"; only CPU ONNX and T4 TensorRT speeds, no phone numbers. README: Enterprise License "enables seamless integration of Ultralytics software and AI models into business products and services" and bypasses "the open-source requirements of AGPL-3.0". [Strong] - [README](https://github.com/ultralytics/ultralytics)
- Why it matters: multi-person, single-stage; popular. Licence makes it unsuitable for a closed-source app without a paid Enterprise licence.
- Limitations: COCO-style keypoints (no feet); AGPL applies to code and released weights alike.

**7. Qualcomm AI Hub Models**
- Link: [qualcomm/ai-hub-models](https://github.com/qualcomm/ai-hub-models); 1,257 stars; pushed 2026-11-07; BSD-3-Clause; contributors not verified.
- Pose models listed: AG-Pose, CenterNet-Pose, HRNetPose, LiteHRNet, MediaPipe-Pose-Estimation, Movenet, Posenet-Mobilenet, RTMPose-Body2d, YOLO26-Pose, YOLOv11-Pose. The page "does not say how model licences are handled"; latency is published at aihub.qualcomm.com (not checked). [Strong for listing] - [README](https://github.com/qualcomm/ai-hub-models)
- Why it matters: a practical way to get per-device latency on Snapdragon Android phones, including mid-range parts, before committing. Not a licence shortcut: each model keeps its upstream licence (inference; per-model READMEs could not be fetched).

**8. CMU OpenPose (reference only)**
- Link: [repo](https://github.com/CMU-Perceptual-Computing-Lab/openpose); [LICENSE](https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/LICENSE).
- Facts: 34,562 stars; last push 2024-08-03 (more than 18 months: "archived but influential", not formally archived); GitHub licence NOASSERTION (custom). Body 15/18/25 keypoints (25 incl. 6 foot), hands 2x21, face 70; TPAMI 2019 paper (Cao et al.). README: "freely available for free non-commercial use"; commercial licences via CMU FlintBox. LICENSE: "personal, non-exclusive, non-transferable license to use the Software for noncommercial research purposes"; modifications are owned by Carnegie Mellon. [Strong]
- Why it matters: the most-used 2D model in the clinical validation literature (Section 3), so it shows what 2D pose can reach; cannot ship in Delva.

#### Also considered (excluded, with reason)
- **ViTPose / ViTPose++** ([repo](https://github.com/ViTAE-Transformer/ViTPose); NeurIPS 2022 / TPAMI): 2,214 stars, pushed 2025-12-25, Apache-2.0 code; COCO AP up to 81.1 test-dev; ViT-S to ViT-G sizes, server-class, not on-device; README states no licence for weights; trained on COCO + AIC + MPII (+ others). Excluded: not mobile, weights licence unclear.
- **Meta Sapiens** ([repo](https://github.com/facebookresearch/sapiens); ECCV 2024 "Best Paper Candidate"): 5,438 stars, pushed 2026-05-26; [LICENSE](https://github.com/facebookresearch/sapiens/blob/main/LICENSE) is **CC BY-NC 4.0** ("for NonCommercial purposes only"); checkpoints 0.3B to 2B parameters, "natively trained at a 1024 x 1024 image resolution". Excluded: non-commercial and not on-device. A Sapiens2 repo exists (not checked).
- **DWPose** ([repo](https://github.com/IDEA-Research/DWPose)): 2,856 stars, Apache-2.0, last push 2023-12-12 (inactive). Distilled whole-body RTMPose; same data-licence questions.
- **AlphaPose** ([repo](https://github.com/MVIG-SJTU/AlphaPose)): 8,617 stars, licence NOASSERTION (custom), last push 2024-05-13 (inactive). Excluded: custom licence, desktop-class.
- **PoseNet**: still listed in tfjs pose-detection without a deprecation notice ([README](https://github.com/tensorflow/tfjs-models/tree/master/pose-detection)); older generation, superseded in practice by MoveNet for single-person fitness (inference). Excluded.
- **Legacy MediaPipe Pose solution**: support ended 1 March 2023 ([models.md](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/models.md)); use Pose Landmarker instead.
- **OpenCap** (two-phone markerless biomechanics, Stanford): repo metadata lookup failed (name not found); not verified. Relevant as a validation method, not as an on-device product.
- **openGym** (comparison point only, AGPL-3.0): a logging tracker without camera pose; its AGPL licence raises the same copyleft caution as Ultralytics for any code reuse.

### Inferences
- MediaPipe Pose Landmarker is the only option that is (a) cross-platform, (b) Apache-2.0 for code and weights, (c) has heel and toe points, and (d) publishes a fairness evaluation. It is the natural default; Apple Vision 3D is a strong iOS-only complement (metric body height, spine point).
- Using Apple Vision on iOS and BlazePose on Android would give two different skeletons (19/17 vs 33 points, different joint definitions), which complicates one set of form rules. A single model on both OSs is simpler to validate.
- RTMPose is best used off-device (benchmark, pseudo-labelling Delva's own validation set) until weights licensing is cleared.

### Gaps
- ML Kit Pose Detection: landmark count, base vs accurate speed, terms and model card could not be read (developers.google.com blocked).
- Pose Landmarker task page (ai.google.dev) not readable: current per-variant benchmark table (Pixel 6 etc.) and any 2025-2026 changes not verified.
- Apple: no published latency/accuracy/fairness data found; Apple developer terms not reviewed.
- Citation counts and contributor counts not verified for any item.

---

## 2. Latency on named phones, 2D vs 3D output, keypoint sets, and implications for plank hip line, squat depth, knee valgus, heel lift

### Takeaway
Published phone benchmarks are old (Pixel 3, Pixel 5, iPhone 12, Snapdragon 865) and none is on a 2024-2026 mid-range phone; on those devices BlazePose Lite/Full and RTMPose-t/s run comfortably in real time on GPU, BlazePose Heavy does not on CPU. Only BlazePose, OpenPose BODY_25 and RTMPose Halpe26/WholeBody give heel/toe points; MoveNet, Apple Vision and YOLO-pose stop at the ankle, so heel-lift checks are only possible with the first group.

### Cited Findings
**Latency / FPS on named devices (all as published; date checked 2026-11-07)**

| Model | Device | Runtime | Result | Source |
|---|---|---|---|---|
| BlazePose GHUM Lite / Full / Heavy | Pixel 3 | TFLite CPU (XNNPack) | ~44 / ~18 / ~4 FPS | [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf) [Strong] |
| BlazePose GHUM Lite / Full / Heavy | Pixel 3 | TFLite GPU | ~49 / ~40 / ~19 FPS | same |
| BlazePose Lite / Full / Heavy | Pixel 3 | TFLite GPU | 20 / 25 / 53 ms | [legacy docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md) [Strong] |
| BlazePose Lite / Full / Heavy | MacBook Pro 15" 2017 | - | 25 / 27 / 38 ms | same |
| BlazePose (web runtimes) | iPhone 12 | TF.js WebGL | 34 / 30 / N/A FPS (column-to-variant mapping assumed) | [tfjs blazepose_mediapipe](https://github.com/tensorflow/tfjs-models/tree/master/pose-detection/src/blazepose_mediapipe) [Weak: browser runtime] |
| BlazePose (web runtimes) | Pixel 5 | MediaPipe WASM+GPU / TF.js WebGL | 32 / 22 / N/A and 12 / 11 / 5 FPS | same |
| RTMPose-t / s / m / l | Snapdragon 865 | ncnn FP16 | 9.02 / 13.89 / 26.44 / 45.37 ms | [RTMPose README](https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose) [Strong for repo-reported] |
| MoveNet Lightning / Thunder | Laptops only (Intel UHD 620 to RTX 2080Ti), Chrome TF.js | WebGL | 10.5-39.0 ms / 15.0-64.0 ms | [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf) |
| MoveNet | "modern laptops and phones" | - | "50+ fps" (no device named) | [tfjs README](https://github.com/tensorflow/tfjs-models/tree/master/pose-detection) [Industry/opinion] |
| Apple Vision 2D/3D | - | - | No published numbers found | gap |
| ML Kit | - | - | Not verified (docs blocked) | gap |
| YOLO26-pose | - | - | Only CPU ONNX and T4 GPU in README | [README](https://github.com/ultralytics/ultralytics) |

- A third-party tutorial claims Pose Landmarker full runs at 45 ms and lite at 12 ms on a Pixel 5; the search tool itself flagged these pages as low-quality and unverifiable. Excluded as evidence. ([search summary source list: theneuralbase.com](https://theneuralbase.com/mediapipe/learn/advanced/latency-vs-accuracy-tradeoff/)) [Industry/opinion, excluded]
- All three Pose Landmarker bundles share a 224x224 pose detector and 256x256 landmark input, float16 (per search summary of the official page; official page not fetched). [Weak]

**2D vs 3D output**
- BlazePose: 2D image landmarks + per-landmark z "not metric but up to scale" + separate world landmarks "in meters, with the origin at the center between the hips"; "Applications requiring metric accurate depth" are out of scope. [Strong] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf); [legacy docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)
- Apple: 2D (iOS 14+) and separate 3D request (iOS 17+) with metric `bodyHeight` and optional use of `AVDepthData`. [Strong] - [Apple](https://developer.apple.com/documentation/vision/vndetecthumanbodypose3drequest)
- MoveNet: 2D only. [Strong] - [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)
- MMPose: 2D (RTMPose/RTMW/RTMO) and RTMW3D for 3D whole-body. [Strong] - [mmpose](https://github.com/open-mmlab/mmpose)

**Keypoint coverage**

| Model | Feet beyond ankle | Hands beyond wrist | Trunk / spine | Source |
|---|---|---|---|---|
| BlazePose (33) | Heel + foot index (L/R) | Pinky, index, thumb knuckles | None (shoulder and hip pairs only) | [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf) |
| MoveNet (17 COCO) | None | None | None | [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf) |
| Apple 2D (19) | None | None | Neck + root (hip centre) | [Apple](https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images) |
| Apple 3D (17) | None | None | Spine, root, centerShoulder, centerHead, topHead | [Apple](https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation/jointname) |
| RTMPose Halpe26 / WholeBody 133 | Yes per Halpe26 / COCO-WholeBody definitions (exact point list not shown on fetched page) | WholeBody: yes | Halpe26 definition (not verified) | [RTMPose](https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose) |
| OpenPose BODY_25 | 6 foot keypoints | Separate 2x21 hand model | Neck + mid-hip | [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose) |
| YOLO-pose (COCO-Pose) | None (COCO) | None | None | [Ultralytics](https://github.com/ultralytics/ultralytics) |

### Inferences
- **Plank hip line** (shoulder-hip-ankle collinearity, side view): computable with every model; BlazePose's heel/foot-index points help confirm toes are planted. The risk is not the keypoint set but detection of a horizontal, face-down body (see Section 4). [Industry/opinion]
- **Squat depth** (hip crease vs knee height, side view): computable from 2D with every model. BlazePose world landmarks or Apple 3D could support off-axis views, but BlazePose's z is synthetic and "metric accurate depth" is out of scope, so depth rules should be relative (hip below/above knee, knee angle) rather than centimetre thresholds. [Industry/opinion]
- **Knee valgus** (frontal-plane): computable only as a 2D frontal-plane projection angle from a front view; Section 3 evidence shows large errors, so treat it as a coarse "knees caving" flag, not a measurement. [Industry/opinion]
- **Heel/ankle lift**: needs heel + toe points, so only BlazePose, RTMPose Halpe26/WholeBody or OpenPose qualify; MoveNet, Apple Vision and YOLO-pose cannot do this check. [Industry/opinion]
- **Spine/trunk rounding**: no candidate models lumbar curvature; trunk angle comes from the shoulder-hip vector (Apple 3D adds one spine point). Cues like "keep your back flat" in bird dog or dead bug can only be approximated. [Industry/opinion]
- **Rep counting / hold timing** (Feature 3): large-joint angle time series (knee for squats, elbow for push-ups, hip for bridges, wrist/ankle spread for jumping jacks) are available in all models; MoveNet Lightning or BlazePose Lite are fast enough on 2018-2020 devices per the published numbers.
- For 15-20 min sessions, sustained GPU inference raises thermal and battery questions that none of the published single-number benchmarks address.

### Gaps
- No published benchmark on a current mid-range phone (e.g., Snapdragon 6/7-series, Dimensity 7000-series, older iPhones still supported). Delva must measure on its own device matrix (Qualcomm AI Hub can help for Snapdragon).
- Apple Vision latency and ML Kit base vs accurate speeds not verified.
- Exact Halpe26 and COCO-WholeBody foot point lists not verified on a fetched page.
- No data found on thermal throttling or battery drain over a 20-minute session.

---

## 3. Accuracy against marker-based motion capture or goniometry (validation studies, 2019-2026)

### Takeaway
In lab conditions, single-camera 2D pose (mostly OpenPose; some MediaPipe) tracks sagittal-plane hip, knee and ankle angles during gait within roughly 2-8 degrees of marker-based capture, but errors grow sharply for frontal-plane knee valgus (about 19 degrees for MediaPipe in a landing task), for the occluded side (about double), and for trunk-heavy, multi-planar tasks (MediaPipe RMSE up to 67 degrees in lifting). No study found validates floor exercises (plank, glute bridge, dead bug, bird dog) against motion capture.

### Cited Findings
Note: full texts were not retrievable (publisher hosts blocked). Figures below come from search-engine abstracts/snippets; citation counts not verified for all.

- **OpenPose, gait, sagittal plane**: mean absolute errors of hip, knee and ankle angles of 4.0, 5.6 and 7.4 degrees vs motion capture (snippet attributed in search results; the matching paper appears to be Stenum et al. 2021, "Two-dimensional video-based analysis of human gait using pose estimation", PLOS Computational Biology). [Weak, snippet-level; peer-reviewed source] - [PMC8099131](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8099131/)
- **Smartphone-location gait study (Yang & Park, Bioengineering 2024)**: pose vs marker-based differences below 5 degrees; MAE 2.35 (hip), 2.82 (knee), 3.06 (ankle) degrees; best hip/knee results from one phone position and best ankle results from another. [Weak-to-moderate: single study] - [doi:10.3390/bioengineering11020141](https://doi.org/10.3390/bioengineering11020141)
- **Washabaugh et al. 2022, Gait & Posture 97:188-195**: compares open-source pose estimators (OpenPose, MediaPipe and others) vs motion capture for gait; bibliographic details confirmed, numerical results not retrieved. [Strong venue; results not verified] - [doi:10.1016/j.gaitpost.2022.08.008](https://doi.org/10.1016/j.gaitpost.2022.08.008)
- **Frontiers in Rehabilitation Sciences 2023** compared marker-based 3D capture, OpenPose, MediaPipe and Kinect for gait on accuracy, speed, ease of use and cost; results not retrieved. [results not verified] - [fresc.2023.1238134](https://www.frontiersin.org/articles/10.3389/fresc.2023.1238134)
- **MediaPipe, knee valgus, single-leg drop landing (Heliyon 2024)**: "the error of knee valgus angle by MediaPipe Pose ranged from 18.83 to 19.68" degrees; authors attribute part of this to the model not using participant height when estimating joint centres. [Weak-to-moderate: single study, landing not squat] - [Heliyon](https://www.cell.com/heliyon/fulltext/S2405-8440(24)12369-9); [PMC11399566](https://pmc.ncbi.nlm.nih.gov/articles/PMC11399566/)
- **OpenPose, knee valgus, drop vertical jump (J Sports Sci Med 2024)**: OpenPose-based and human-annotated 2D analysis "showed a strong correlation with 3D-MA in terms of knee valgus angle excursion"; authors credit matching video setup (frame rate, resolution, camera distance) to the reference. [Weak-to-moderate] - [PMC11366844](https://pmc.ncbi.nlm.nih.gov/articles/PMC11366844/); [JSSM](https://www.jssm.org/jssm-23-515.xml%3EFulltext)
- **Single-leg squat, AI pose model** (ResearchGate record "Validity of an artificial intelligence, human pose estimation model for measuring single-leg squat kinematics"): search summary indicates 2D methods have "difficulty capturing out-of-plane movements such as frontal plane knee kinematics during squatting". Authors, venue and numbers not verified. [Weak] - [ResearchGate](https://www.researchgate.net/publication/364090852_Validity_of_an_artificial_intelligence_human_pose_estimation_model_for_measuring_single-leg_squat_kinematics)
- **MediaPipe 2D squat pipeline (Biomechanics, MDPI, 2025/2026)**: markerless methods (OpenPose, MediaPipe, Pose2Sim) tend to overestimate lower-limb angles vs marker-based; hip bias -17.49 degrees (right hip). [Weak: preliminary validation] - [doi:10.3390/biomechanics6010001](https://doi.org/10.3390/biomechanics6010001)
- **Three-camera MediaPipe vs Vicon, deep squat and in-line lunge (Sensors 2026, n=6)**: mean overall angle error 6.4 degrees. Multi-camera, so an optimistic bound for a single phone. [Weak: n=6] - [Sensors 26(21):6773](https://www.mdpi.com/1424-8220/26/21/6773)
- **Occupational lifting, OpenCap and monocular MediaPipe vs Vicon (Applied Ergonomics 2026)**: MediaPipe RMSE 5.9 to 67.1 degrees, with validity dropping for multi-planar tasks involving trunk movement. [Weak-to-moderate] - [ScienceDirect S0003687026001444](https://www.sciencedirect.com/science/article/pii/S0003687026001444)
- **BlazePose Heavy, knee angle, squat / sit-to-stand / single-leg stance (JMIR preprint 102399)**: "promising concurrent validity for dynamic flexion-focused tasks" but "angle-dependent static bias", single-leg-stance instability and "session-to-session bias drift". **Preprint, not peer reviewed.** [Weak] - [JMIR Preprints](https://preprints.jmir.org/preprint/102399)
- **Dill et al., "Accuracy Evaluation of 3D Pose Estimation with MediaPipe Pose for Physical Exercises"** (ResearchGate record; venue believed to be Current Directions in Biomedical Engineering 2023, not verified): directly relevant to exercise; results not retrieved. - [ResearchGate](https://www.researchgate.net/publication/374081734_Accuracy_Evaluation_of_3D_Pose_Estimation_with_MediaPipe_Pose_for_Physical_Exercises)
- **Systematic review, 3D markerless vs marker-based for lower limb (Sensors 2026)**: "moderate to high validity for several lower-limb measures, mainly in the sagittal plane", varying by joint, movement phase and task complexity. [Strong design; snippet-level] - [Sensors 26(12):3956](https://www.mdpi.com/1424-8220/26/12/3956)
- **Systematic review and meta-analysis, markerless 3D vs marker-based in gait** (title per search summary: "Accuracy, validity, and reliability of markerless camera-based 3D motion capture systems versus marker-based 3D motion capture systems in gait analysis: a systematic review and meta-analysis"): occluded-side hip and knee sagittal errors roughly double those of the visible side; visible-side errors near marker-based error levels. [Strong design; URL and authors not captured by the search tool, so not verified] - no link available
- **Hip and knee ROM, CV pose vs reference** ("Reliability and validity of computer vision-based markerless human pose estimation for measuring hip and knee range of motion"): found, not read. - [PMC11783685](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11783685/)
- **OpenPose hip-knee-ankle angle in walking, knee OA patients (Scientific Reports 2025)**: found, not read. - [s41598-025-09627-2](https://www.nature.com/articles/s41598-025-09627-2)
- **Vendor 2D accuracy (not validation vs mocap)**: BlazePose PCK@0.2 Heavy 96.4 / 97.2 / 97.5, Full 95.5 / 96.3 / 95.7, Lite 90.2 / 92.5 / 93.5 on Google's Yoga / Dance / HIIT sets (single person 2-4 m from camera); only 17 COCO keypoints evaluated. [Weak: vendor in-house data] - [legacy docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md). MoveNet keypoint mAP on Google "Active" fitness set ~88-95 by subgroup. [Weak] - [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)
- **Apple Vision vs mocap**: no peer-reviewed validation found in this session. **MoveNet vs mocap**: none found in this session.

### Inferences
- A realistic planning assumption for a single phone: sagittal knee/hip angles good enough for rep phase detection and coarse depth thresholds (errors of several degrees, more at the hip), frontal-plane valgus and trunk rotation not reliable as measurements. Delva's "no promise of perfect technique" rule fits this evidence.
- Almost all evidence is gait, landing or squat in labs, with healthy young adults, research-grade video, and fixed tripods; home conditions (handheld-height phone, clutter, loose clothing, low light) are likely to be worse.
- Joint-angle validity does not equal rep-count validity; rep counting tolerates angle bias as long as the signal is monotonic and low-jitter.

### Gaps
- No validation found for plank, glute bridge, dead bug, bird dog, mountain climber, push-up or floor stretches against motion capture or goniometry.
- No BlazePose 3D world-landmark validation vs mocap retrieved with numbers.
- Full texts (sample sizes, ICCs, Bland-Altman limits) not retrieved for any study; the meta-analysis citation is incomplete.
- No independent study found of rep-counting accuracy by model on the target exercise list.

---

## 4. Evidence on failure modes and fairness

### Takeaway
Vendor model cards are the only quantitative fairness data for on-device models: BlazePose shows up to 7.3 PDJ points spread across skin tones (lite) and lower scores for women at every size; MoveNet shows a 13.9-point mAP gap between darker and lighter skin on COCO (Lightning), shrinking to 3.8 on its fitness set. Independent work (Sony AI, AAAI-23 workshop) warns that such fairness conclusions are fragile. No study found measures pose error by BMI/body size, and none tests floor exercises.

### Cited Findings
**BlazePose GHUM 3D model card fairness** [Weak as fairness evidence: vendor self-evaluation, in-distribution back-camera photos, 2D only, "tracking mode"; Strong as a statement of what Google reports] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf), dated April 16, 2021:
- Metric: PDJ (PCK@0.2 normalised by torso diameter, and visibility must match). Fairness criterion: unfair if the range across groups exceeds "~3x the human annotation discrepancy, in our case a total of 7.5% PDJ"; inter-annotator PDJ 97.5%.
- Geography (1,400 images, 100 per each of 14 UN subregions): Heavy avg 94.2% (range 91.4-96.2; max discrepancy 4.8); Full 91.8% (89.2-94.0; 4.8); Lite 87.0% (83.2-89.7; 6.5). Worst: Middle Africa for Full and Heavy, Eastern Asia for Lite.
- Skin tone (perceived Fitzpatrick 1-6): Heavy 93.6% (89.3-95.0; spread 5.7), Full 91.1% (85.9-92.9; 7.0), Lite 86.4% (80.5-87.8; 7.3). The worst group for all three is **type 1** (1.3% of the dataset); type 6 is 4.5% of the dataset and scores 87.7 / 92.9 / 93.6 (lite/full/heavy).
- Gender (perceived; 43.5% male, 56.5% female): women lower in every model: Lite 86.0 vs 89.1, Full 91.2 vs 93.4, Heavy 94.2 vs 95.3.
- Internal inconsistency: the text gives a Lite gender average of 83.7% with a range [86.0, 89.1], while the table gives 87.6. Flag when quoting.
- No age, body size/BMI, or disability metrics. Qualitative only: "evaluated on users with missing limbs and prosthetics and degrades gracefully by predicting average point location".
- Hidden points: when a location is "hard to define by humans annotator, it is annotated with a 'best guess' and default pose".

**MoveNet model card fairness** [same caveats] - [model card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf):
- Claims "Both models perform fairly (< 5% performance differences between categories) on our targeted Active Single Person Image Set."
- COCO val single-person (919 images), keypoint mAP Lightning / Thunder: darker skin 60.5 / 74.4 vs lighter 74.4 / 82.9 (gaps 13.9 / 8.5); female 65.4 / 76.6 vs male 67.4 / 78.7; old 72.1 / 81.5 (best age group).
- Active fitness set (1,161 images): darker 89.1 / 93.1 vs lighter 92.9 / 95.4 (gaps 3.8 / 2.3); female 87.8 / 92.3 vs male 90.2 / 93.7; "Old" only 1.9% of the set: 85.7 / 90.0 vs young 89.1 / 93.3.
- Skin tone has only three coarse buckets; "Medium" is 2.5-4.0% of each set.

**Independent fairness work**
- Sony AI, AAAI-23 workshop (R2HCAI) camera-ready "A case study in fairness evaluation: current limitations and challenges for human pose estimation" (search summary): evaluated 2D pose models on a COCO-based subset with gender, age and skin tone annotations; OpenPose and PoseNet "exhibit a higher performance for lighter skin tones"; the direction of bias was sensitive to the evaluation sample; automated vs manual attribute annotations differed by more than 30% for age and gender and up to 70% for skin tone. Workshop paper; full text not retrieved; citation count not verified. [Weak-to-moderate] - [camera-ready PDF](https://r2hcai.github.io/AAAI-23/files/CameraReadys/21.pdf); [Sony AI blog](https://ai.sony/blog/Exposing-Limitations-in-Fairness-Evaluations-Human-Pose-Estimation)
- Body size/BMI: no primary study found; one blog claim about "plus-size individuals" was excluded as non-primary. [gap]

**Known failure modes from official documentation** [Strong as product documentation]
- BlazePose: head must be visible; >4 m out of scope; one person only; "sensitive to face position, scale and orientation"; jitter with poor light, noise, motion, or face overlap; expects a full-body crop with "a margin around the square circumscribing full-body calculated as 25% of size"; tolerates "10% shift and scale" and "8° roll" of the crop. Its tracking diagram shows a "Face detector with pose alignment" on the first frame. - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)
- BlazePose training data were "captured on a diverse set of back-facing smartphone cameras". - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)
- MoveNet predicts occluded keypoints anyway; out-of-frame keypoints get low confidence. - [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)
- Apple: "A subject wearing flowing or robe-like clothing reduces the detection accuracy"; crowds "likely to produce inaccurate results"; subject should be at least a third of image height. - [Apple](https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images)
- Occluded side: meta-analysis snippet reports roughly double sagittal errors on the occluded side (Section 3). [Weak, citation incomplete]

### Inferences
- **Floor and lying exercises** (plank, push-up, glute bridge, dead bug, bird dog, floor stretches) are the highest-risk group: the body is horizontal, the far limbs are self-occluded in a side view, and the face may point down or away. BlazePose's face-anchored detector and "head is not visible" exclusion suggest planks with the head down and supine moves with the head far from the camera may fail detection or tracking more often. This is an inference from the model card, not a tested finding. [Industry/opinion]
- Because both BlazePose and MoveNet emit "best guess" positions for hidden joints, Delva should only give a correction when the relevant joints have high visibility/confidence; otherwise say nothing or ask the user to adjust the camera.
- Women score lower than men in both vendor cards, and the gap is largest in the lite/fast variants Delva would use on weaker phones. Delva's own validation should report results by gender, skin tone, age band (18-64) and body size, on the front camera, at home.
- Training on back-facing cameras vs Delva's likely front-camera use (user watching the screen) is an untested domain shift. [Industry/opinion]

### Gaps
- No primary evidence on BMI/body size, loose clothing, low light or older adults (50-64) for any on-device model.
- No fairness data for Apple Vision, ML Kit or RTMPose.
- No evidence on floor exercises, front vs back camera, or partial body in frame beyond documentation statements.

---

## 5. Camera placement and framing guidance

### Takeaway
Official guidance converges on: one person, whole body (with head) in frame with some margin, subject large enough (Apple: at least a third of frame height), within about 1-4 m, and no loose clothing. Peer-reviewed work shows camera angle and distance change accuracy materially; a smartphone exercise-detection study found both very close (90 cm) and far frontal (360 cm) setups reduced detection and counting accuracy, and an OpenPose study found sagittal and frontal views beat oblique views.

### Cited Findings
- BlazePose: out of scope "further than 14 feet/4 meters"; "Head is not visible" out of scope; crop margin 25%; evaluation images had "a single person located 2-4 meters from the camera". [Strong as vendor guidance] - [model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf); [legacy docs](https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md)
- MoveNet: "Most suitable for detecting the pose of a single person who is 3ft ~ 6ft away from a device's webcam" (about 0.9-1.8 m). [Strong as vendor guidance] - [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf). Note the difference from BlazePose's 2-4 m evaluation distance.
- Apple: "The subject's height should ideally be at least a third of the overall image height"; "A large portion of the subject's key body regions and points should be present in the image"; avoid "flowing or robe-like clothing"; setting a region of interest "generally results in more accurate pose estimation". [Strong as vendor guidance] - [Apple](https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images)
- Smartphone camera positioning and exercise detection (JMIR observational study; exact journal and year not verified): "camera angle and distance significantly affect the accuracy of PE systems for exercise detection"; "close-range setups (90 cm) and long-distance frontal views (360 cm) substantially reduce detection and counting accuracy". Model used not verified. [Weak-to-moderate: single observational study, snippet-level] - [PMC12978916](https://pmc.ncbi.nlm.nih.gov/articles/PMC12978916/)
- Camera viewing angle and OpenPose validity: knee and hip "measured more consistently when sagittal and frontal angles were used", with more error from some oblique views; large distances reduce OpenPose performance. Venue not verified. [Weak] - [ResearchGate 388511770](https://www.researchgate.net/publication/388511770_Influence_of_the_Camera_Viewing_Angle_on_OpenPose_Validity_in_Motion_Analysis)
- Smartphone location changes which joint is most accurate (best hip/knee and best ankle at different positions) in gait. [Weak-to-moderate] - [Bioengineering 2024](https://doi.org/10.3390/bioengineering11020141)
- OpenPose valgus agreement was credited to matching frame rate, resolution and camera distance to the reference system. [Weak-to-moderate] - [PMC11366844](https://pmc.ncbi.nlm.nih.gov/articles/PMC11366844/)
- Commercial app documentation (industry practice, e.g., camera set-up screens of home fitness apps): not collected in this session (search budget exhausted). [gap]

### Inferences (proposals for Delva to test, not evidence)
- Use a per-exercise view: side view for squat depth, lunges, push-ups, planks, glute bridges, mountain climbers, dead bugs and bird dogs (sagittal-plane movements); front view for jumping jacks and an optional "knees caving" flag in squats.
- For floor exercises, place the phone low (floor or low stand) and side-on, probably in landscape, so a horizontal body fills enough of the frame; for standing exercises, portrait or landscape with whole body plus margin, about 2-3 m away. These distances sit inside both vendor ranges but must be validated on the front camera.
- Build a framing check into the app: block start until head, hips and ankles (plus heels for squats) are visible with high confidence and the body height (or length, for floor work) passes a size threshold; repeat the check when confidence drops mid-set.
- Ask for consistent light from the front or side and fitted clothing, as Apple's guidance implies.

### Gaps
- No peer-reviewed study isolates camera height for any of Delva's exercises.
- No study found on framing for floor exercises.
- Industry practice from commercial home-fitness apps not gathered.
- Full text of the JMIR camera-positioning study (model, phone, exercises, sample) not retrieved; it is the most directly relevant paper and should be read first.

---

## 6. Licence red flags

### Takeaway
Licences must be checked separately for code, weights and training data; only MediaPipe/BlazePose and MoveNet are clean on all three for a commercial app. Red flags: OpenPose (non-commercial, CMU owns modifications), Sapiens (CC BY-NC 4.0), Ultralytics YOLO (AGPL-3.0 unless Enterprise), MMPose/RTMPose weights (no stated licence plus research-only-style datasets), Halpe (no licence file), ML Kit (beta, service terms).

### Cited Findings
- **OpenPose**: custom licence, "noncommercial research purposes" only, modifications owned by Carnegie Mellon; commercial licence through FlintBox (fee and field-of-use terms not verified in this session). [Strong] - [LICENSE](https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/LICENSE); [README](https://github.com/CMU-Perceptual-Computing-Lab/openpose)
- **Meta Sapiens**: LICENSE is CC BY-NC 4.0, rights granted "for NonCommercial purposes only"; GitHub reports NOASSERTION. [Strong] - [LICENSE](https://github.com/facebookresearch/sapiens/blob/main/LICENSE)
- **Ultralytics YOLO (incl. pose)**: AGPL-3.0; Enterprise licence needed to avoid "the open-source requirements of AGPL-3.0" in "business products and services". [Strong] - [README](https://github.com/ultralytics/ultralytics)
- **MMPose / RTMPose**: code Apache-2.0, but the RTMPose page "does not state any model weight or dataset licence"; weights trained on mixes including AI Challenger, Halpe, UBody, Human-Art, PoseTrack18, etc. (terms not verified). [Strong for the absence of a statement] - [RTMPose](https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose)
- **Halpe-FullBody**: repository licence is null (no licence file) per GitHub metadata, i.e. all rights reserved by default. [Strong] - [repo](https://github.com/Fang-Haoshu/Halpe-FullBody)
- **ViTPose**: Apache-2.0 code; README makes "no statement about a licence for the released weights or about dataset terms". [Strong] - [repo](https://github.com/ViTAE-Transformer/ViTPose)
- **AlphaPose**: GitHub licence NOASSERTION (custom; terms not read). [flag] - [repo](https://github.com/MVIG-SJTU/AlphaPose)
- **ML Kit Pose Detection**: still `18.0.0-beta5`; governed by ML Kit/Google terms (not verified). [Strong for beta status] - [build.gradle](https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/build.gradle)
- **Clean**: MediaPipe code Apache-2.0 and BlazePose weights Apache-2.0 ([model card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)); MoveNet weights Apache-2.0 ([MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)); Qualcomm AI Hub repo BSD-3-Clause, but each hosted model keeps its upstream terms (not stated on main page) ([repo](https://github.com/qualcomm/ai-hub-models)).
- **Use-restriction language to respect**: both Google cards say surveillance or identity recognition is out of scope; BlazePose says it is "not intended for human life-critical decisions". [Strong] - [BlazePose card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf); [MoveNet card](https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf)

### Inferences
- Apache-2.0 on weights does not erase questions about how upstream images were collected (e.g., MoveNet's YouTube-sampled "Active" set), but the licensor is Google and the weights are offered under Apache-2.0; risk for Delva is low compared with research-dataset-trained weights.
- Fine-tuning any model on COCO-derived or research datasets would import those datasets' terms into Delva's weights; Delva's own consented data is the clean route.

### Gaps
- Dataset terms for AI Challenger, COCO (images vs annotations), MPII, CrowdPose, UBody, Human-Art, PoseTrack18 not verified in this session.
- OpenPose commercial fee and any field-of-use exclusions (FlintBox page) not verified.
- ML Kit terms and Apple developer terms not reviewed.

---

## 7. Gaps and open questions for Delva user research

### Takeaway
The evidence does not cover Delva's core use case (front camera, home rooms, floor exercises, 18-64 adults of all body sizes), so Delva needs its own small validation and usability studies before claiming any form feedback quality.

### Cited Findings
- Closest existing evidence is lab gait/landing/squat validation (Section 3) and vendor in-distribution fairness tables (Section 4); vendor cards themselves describe the intended use as entertainment/fitness, not clinical. - [BlazePose card](https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf)

### Inferences (open questions to test)
1. Detection and tracking success rate for each exercise on the list (squat, lunge, push-up, plank, glute bridge, dead bug, bird dog, mountain climber, jumping jack, floor stretches) per candidate model, front vs back camera, portrait vs landscape.
2. Rep-count accuracy and plank hold-time accuracy vs human video annotation, by exercise and by device tier (include at least two mid-range Android phones and the oldest supported iPhone).
3. Per-joint error vs a reference (goniometer or a multi-camera system) for the specific cues Delva wants to give (squat depth, plank hip sag/pike, push-up elbow angle, bridge hip extension), so feedback thresholds have known error bars.
4. Subgroup results (gender, skin tone, age 18-64, body size/BMI, loose vs fitted clothing, low light) with enough people per group; vendor tables had very small groups (e.g., Fitzpatrick type 1 at 1.3% of 1,400 images, "Old" at 1.9% of MoveNet's fitness set).
5. Can users set up the camera correctly at home without help? How often does the framing check fail, and how long does setup take within a 15-20 minute session?
6. Thermal and battery impact over a full session; frame-rate floor below which rep counting degrades.
7. Do users prefer fewer, high-confidence cues (silence when unsure) over frequent cues? This links to Area B (audio feedback) and to Delva's rule against promising perfect technique.
8. How should a partial workout or a lost-tracking period count toward chapter credit (spec: partial workouts saved as activity)? Tracking failure must never block credit for work done.

### Gaps
- Commercial app practice for camera setup not gathered (search budget exhausted).
- Full texts of the key validation papers and the meta-analysis citation need retrieval once publisher hosts are reachable.

---

## Source list (all sections; accessed or attempted 2026-11-07)

Primary documentation and repositories (fetched):
- BlazePose GHUM 3D model card (PDF): https://storage.googleapis.com/mediapipe-assets/Model%20Card%20BlazePose%20GHUM%203D.pdf
- MoveNet SinglePose model card (PDF): https://storage.googleapis.com/movenet/MoveNet.SinglePose%20Model%20Card.pdf
- MediaPipe repo: https://github.com/google-ai-edge/mediapipe
- MediaPipe legacy Pose docs: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/pose.md
- MediaPipe legacy models list: https://github.com/google-ai-edge/mediapipe/blob/master/docs/solutions/models.md
- MediaPipe releases: https://github.com/google-ai-edge/mediapipe/releases
- LiteRT: https://github.com/google-ai-edge/LiteRT
- tfjs-models pose-detection: https://github.com/tensorflow/tfjs-models/tree/master/pose-detection
- tfjs BlazePose (MediaPipe runtime) README: https://github.com/tensorflow/tfjs-models/tree/master/pose-detection/src/blazepose_mediapipe
- ML Kit samples build.gradle: https://github.com/googlesamples/mlkit/blob/master/android/vision-quickstart/app/build.gradle
- Apple, Detecting human body poses in images: https://developer.apple.com/documentation/vision/detecting-human-body-poses-in-images
- Apple, VNDetectHumanBodyPose3DRequest: https://developer.apple.com/documentation/vision/vndetecthumanbodypose3drequest
- Apple, VNHumanBodyPose3DObservation: https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation
- Apple, VNHumanBodyPose3DObservation.JointName: https://developer.apple.com/documentation/vision/vnhumanbodypose3dobservation/jointname
- MMPose: https://github.com/open-mmlab/mmpose
- RTMPose project: https://github.com/open-mmlab/mmpose/tree/main/projects/rtmpose
- rtmlib: https://github.com/Tau-J/rtmlib
- OpenPose README and LICENSE: https://github.com/CMU-Perceptual-Computing-Lab/openpose ; https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/LICENSE
- Ultralytics: https://github.com/ultralytics/ultralytics
- Qualcomm AI Hub Models: https://github.com/qualcomm/ai-hub-models
- ViTPose: https://github.com/ViTAE-Transformer/ViTPose
- Sapiens README and LICENSE: https://github.com/facebookresearch/sapiens ; https://github.com/facebookresearch/sapiens/blob/main/LICENSE
- Repo metadata via `gh api search/repositories` for: google-ai-edge/mediapipe, google-ai-edge/LiteRT, tensorflow/tfjs-models, open-mmlab/mmpose, open-mmlab/mmdeploy, CMU-Perceptual-Computing-Lab/openpose, ultralytics/ultralytics, ViTAE-Transformer/ViTPose, facebookresearch/sapiens, qualcomm/ai-hub-models, googlesamples/mlkit, google-ai-edge/mediapipe-samples (2,884 stars, pushed 2026-10-30), tensorflow/examples (8,277 stars, pushed 2026-11-04), IDEA-Research/DWPose, Fang-Haoshu/Halpe-FullBody, IDEA-Research/OSX, MVIG-SJTU/AlphaPose, Tau-J/rtmlib.

Pages not reachable from this session (listed for follow-up):
- MediaPipe Pose Landmarker guide: https://ai.google.dev/edge/mediapipe/solutions/vision/pose_landmarker
- ML Kit Pose Detection: https://developers.google.com/ml-kit/vision/pose-detection ; ML Kit pose model card: https://developers.google.cn/static/ml-kit/images/vision/pose-detection/pose_model_card.pdf
- MoveNet on Kaggle: https://www.kaggle.com/models/google/movenet
- BlazePose paper: https://arxiv.org/abs/2006.10204
- Ultralytics licence page: https://www.ultralytics.com/license
- Sony AI fairness paper and blog: https://r2hcai.github.io/AAAI-23/files/CameraReadys/21.pdf ; https://ai.sony/blog/Exposing-Limitations-in-Fairness-Evaluations-Human-Pose-Estimation

Validation and camera-placement studies (found via search; full text not retrieved):
- Stenum et al. 2021 (attributed), PLOS Comput Biol: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8099131/
- Yang & Park 2024, Bioengineering: https://doi.org/10.3390/bioengineering11020141
- Washabaugh et al. 2022, Gait & Posture: https://doi.org/10.1016/j.gaitpost.2022.08.008
- Frontiers in Rehabilitation Sciences 2023 (OP/MP/Kinect vs mocap): https://www.frontiersin.org/articles/10.3389/fresc.2023.1238134
- Heliyon 2024, MediaPipe knee valgus landing: https://www.cell.com/heliyon/fulltext/S2405-8440(24)12369-9 (PMC11399566)
- J Sports Sci Med 2024, OpenPose knee valgus DVJ: https://pmc.ncbi.nlm.nih.gov/articles/PMC11366844/
- Single-leg squat AI pose validity: https://www.researchgate.net/publication/364090852_Validity_of_an_artificial_intelligence_human_pose_estimation_model_for_measuring_single-leg_squat_kinematics
- 2D MediaPipe squat pipeline: https://doi.org/10.3390/biomechanics6010001
- Three-camera MediaPipe vs Vicon, squat and lunge: https://www.mdpi.com/1424-8220/26/21/6773
- OpenCap and MediaPipe vs Vicon, lifting: https://www.sciencedirect.com/science/article/pii/S0003687026001444
- JMIR preprint, BlazePose knee angle (preprint): https://preprints.jmir.org/preprint/102399
- Dill et al., MediaPipe 3D for physical exercises: https://www.researchgate.net/publication/374081734_Accuracy_Evaluation_of_3D_Pose_Estimation_with_MediaPipe_Pose_for_Physical_Exercises
- Systematic review, lower-limb 3D markerless: https://www.mdpi.com/1424-8220/26/12/3956
- Hip and knee ROM validity: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11783685/
- OpenPose HKA angle in knee OA: https://www.nature.com/articles/s41598-025-09627-2
- Smartphone camera positioning and exercise detection (JMIR): https://pmc.ncbi.nlm.nih.gov/articles/PMC12978916/
- Camera viewing angle and OpenPose validity: https://www.researchgate.net/publication/388511770_Influence_of_the_Camera_Viewing_Angle_on_OpenPose_Validity_in_Motion_Analysis
