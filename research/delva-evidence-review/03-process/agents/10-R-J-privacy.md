# R-J: first pass, area J (privacy of camera and health data)

| Field | Value |
|---|---|
| Phase | 1, first-pass research (10 tracks in parallel) |
| Launched | 2026-11-07, about 08:00 UTC |
| Finished | 2026-11-07, about 08:11 UTC |
| Output | [02-notes/first-pass/J_privacy_camera_health_data.md](../../02-notes/first-pass/J_privacy_camera_health_data.md) |
| Checked later by | V4 |

## Prompt sent by the coordinator (verbatim)

````text
Research the privacy, legal and app-store rules for processing camera video and health data in a consumer fitness app (Area J of a larger brief).

Delva context: Delva is a commercial mobile fitness app in development (iOS + Android). Features: (1) vision-based form tracking via the phone camera (pose estimation on body keypoints while the user exercises at home); (2) real-time audio feedback; (3) automatic rep counting and hold timing; (4) semi-personalised programs: users are grouped by age, gender, fitness level, goal and days available. It stores workout history, partial workouts, check-in answers (which may include pain or health information) and possibly pre-exercise screening answers. Adults 18-64. Delva will reuse ideas, not copy code. openGym (github.com/DuarteSantos8/openGym, AGPL-3.0; self-hosted, no telemetry) was already analysed: do not re-analyse it; mention only as a comparison point. Assume launch markets EU/EEA, UK and US (and note Switzerland briefly if cheap to verify).

Objective: Produce a clear, primary-source-backed picture of: on-device vs cloud processing of video; when camera-derived body/pose data and fitness/health data count as GDPR special-category data (health or biometric); US biometric and consumer-health-data laws (Illinois BIPA and others); EU AI Act relevance; frame-retention best practice; and Apple App Store and Google Play rules for camera and health data. Highlight concrete design rules for Delva (e.g., process frames in memory on device, never store/upload frames without explicit opt-in).

Key questions:
- GDPR: Art. 4(1), 4(13)-(15) definitions (genetic, biometric, health data) and Art. 9 special categories; when is pose/skeleton data "biometric data" (requires specific technical processing that allows or confirms unique identification) vs not; when is fitness/workout/check-in data "data concerning health" (CJEU C-184/20 OT (2022) and C-21/23 Lindenapotheke (2024) broad interpretation; Article 29 Working Party 2015 annex on health data in apps; EDPB guidance); EDPB Guidelines 3/2019 on processing personal data through video devices (applicability to a user's own phone camera in their home); Art. 25 privacy by design; Art. 35 DPIA triggers; explicit consent; Art. 22 profiling; data minimisation; UK GDPR and ICO guidance on biometric recognition (2024) and on health data; Swiss nFADP (2023) briefly.
- US: Illinois BIPA (740 ILCS 14) — definition of "biometric identifier" (e.g., "scan of hand or face geometry") and what is excluded; the 2024 amendment (SB 2979) on per-scan damages and electronic consent; relevant case law on whether body/pose or face-detection without identification triggers BIPA (cite primary rulings if possible); Texas CUBI; Washington My Health My Data Act (2023; consumer health data incl. biometric data and "bodily functions, vital signs, symptoms"; private right of action; first lawsuits); Nevada SB 370; Connecticut consumer health data amendments; Colorado HB24-1130 biometric amendment (effective July 2025); CCPA/CPRA "sensitive personal information"; FTC Health Breach Notification Rule (2024 final rule applying to health apps) and FTC enforcement (e.g., Flo Health, GoodRx, BetterHelp, Premom) — cite ftc.gov primary sources.
- EU AI Act (Regulation (EU) 2024/1689): definitions of biometric data, biometric identification, biometric categorisation and emotion recognition; prohibited practices and high-risk categories; whether real-time pose estimation for exercise feedback falls in any of these (likely not, but verify the recitals/articles); application dates (Feb 2025, Aug 2025, Aug 2026/2027) and any 2025-2026 "digital omnibus" changes if verifiable.
- On-device vs cloud processing and frame retention: what privacy regulators recommend (data minimisation, edge processing), and what concrete retention policies look like (process in memory, discard frames, store only derived metrics; opt-in for uploading clips; short retention for debugging/training data; separate consent for using user videos to train models).
- Apple App Store Review Guidelines: 5.1.1 (data collection and storage, including consent and purpose strings), 5.1.2 (data use and sharing), 5.1.3 (health and health research, HealthKit restrictions), 2.5.14 (recording users requires explicit consent and a clear indication of recording), 1.4.1 (physical harm / medical accuracy claims); App Privacy details ("nutrition labels"), privacy manifests and required-reason APIs; camera usage description. Google Play: User Data policy (prominent disclosure and consent), Health apps policy and the Health apps declaration, Health Connect permissions policy, Data safety section, and any 2024-2026 changes; Android camera/foreground-service rules if relevant.
- Industry practice: how major pose-based fitness apps publicly describe on-device processing (label as industry practice).

Suggested sources:
- EUR-Lex (GDPR, AI Act), curia.europa.eu (CJEU judgments), edpb.europa.eu, ico.org.uk, edoeb.admin.ch; ilga.gov (BIPA text), Illinois Supreme Court opinions; app.leg.wa.gov (My Health My Data Act), capitol.texas.gov; leg.colorado.gov; oag.ca.gov / cppa.ca.gov; ftc.gov; developer.apple.com/app-store/review/guidelines; support.google.com/googleplay/android-developer (policy center); developer.android.com

Constraints:
- Credibility bar and reporting rules: Today is 2026-11-07; record this as the date checked for every source. Prefer primary legal texts, official regulator guidance, court judgments, and official app-store policy pages. Peer-reviewed legal/privacy scholarship is acceptable if it adds analysis (report venue and citation count if available, else "citation count not verified"). Law-firm blogs are not primary sources: use them only to find primary texts, and never cite them as authority. Never invent a law, article number, case, number or quote; every claim needs a link; if you cannot verify something, say so explicitly. Label each finding as binding law / official guidance / case law / industry practice / opinion. Note that this is research, not legal advice. Quality over quantity: the 5-10 most important items for the main table (you may add short supporting lists).
- Tooling tips: raw curl to most web hosts is blocked by this environment's network policy; use the WebSearch and WebFetch tools for web pages.
- Notes format: for each item give: name and link | type (law, regulation, guidance, judgment, store policy) | what it is | why it matters for Delva (name the feature or spec rule) | credibility/authority (binding? jurisdiction? date in force) | commercial-use implications | key ideas/design rules to borrow | limitations/uncertainty. Then sections: "Is pose/keypoint data biometric or health data? (EU, UK, US analysis)", "Concrete design rules for Delva (on-device processing, frame retention, consent, DPIA)", "App Store and Google Play requirements checklist", "Open legal questions to put to counsel", and a source list with URLs.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/J_privacy_camera_health_data.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I've written the Area J notes (privacy, legal and store rules for camera video and health data) to:
/home/user/openGym/research_notes/Vision guided home fitness evidence/J_privacy_camera_health_data.md

**Verification is limited.** The network blocked direct fetches of eur-lex.europa.eu, curia.europa.eu, edpb.europa.eu, ico.org.uk, ftc.gov, ilga.gov, app.leg.wa.gov, federalregister.gov, cdn.ca9.uscourts.gov and support.google.com. The shared web-search budget (200 per turn, across all agents) also ran out partway through. Every claim is therefore tagged:
- **V-full**: page read in full. Only Apple and Android developer pages.
- **V-excerpt**: official page found by search; wording seen only in the search excerpt.
- **V-secondary**: only law-firm summaries reached; not cited as authority.
- **U**: unverified; I give the official link, and counsel should pull the text.

Several state statutes and the exact GDPR and BIPA wording are U. Industry practice could not be checked at all, so the notes make no claims about how other pose-based fitness apps describe their processing.

**Key findings**
- **GDPR and UK GDPR:** pose keypoints are special category "biometric" data only if they are processed to uniquely identify someone (EDPB Guidelines 3/2019, ICO guidance; V-excerpt). Health data is still a problem:
  - Pain check-ins and screening answers are clearly health data.
  - Workout logs and form-derived limits probably are too, under the CJEU's broad inference test (C-184/20 OT, 2022; C-21/23 Lindenapotheke, 2024; V-excerpt).
  - The household exemption covers the user filming themselves, not Delva. An EDPB statement from October 2026 on smart glasses restates this.
- **EU AI Act:** pose-based form feedback is not identification, biometric categorisation or emotion recognition. Recital 18 excludes physical states such as pain or fatigue, and the mere detection of movements (V-excerpt). Two things would change that: inferring age or sex from the camera (possible biometric categorisation and high-risk status), and reading emotions from the face. Secondary sources report a "Digital Omnibus" regulation, (EU) 2026/1744, that moves high-risk deadlines to 2 Dec 2027 and 2 Aug 2028. I could not confirm that against the Official Journal, and the sources disagree on dates.
- **US:**
  - **Illinois BIPA** covers a "scan of hand or face geometry". Since August 2024 electronic consent is allowed (V-excerpt). Apple's body-pose API outputs nose, eye and ear points (V-full), so facial landmarks are a real exposure. The 9th Circuit held in Zellmer v. Meta (2024) that data which cannot identify a person is not covered, but that rests on secondary summaries and does not bind Illinois state courts.
  - **Texas CUBI:** the Attorney General got $1.4B from Meta under it (V-excerpt).
  - **Washington My Health My Data Act:** it probably covers workout and check-in data and lets consumers sue (statute U). The first class action, Maxwell v. Amazon, was filed in February 2025 (V-secondary).
  - **FTC:** the 2024 breach-notification rule applies to health apps. The GoodRx, BetterHelp, Premom and Flo cases punished sharing health data through SDKs and broken privacy promises (V-excerpt).
- **Apple (V-full):**
  - 2.5.14 requires explicit consent and a visible or audible indicator for any camera use.
  - 5.1.2(vi) bars using camera or facial-mapping data for ads or data mining.
  - 5.1.2(i) requires disclosure and explicit permission before sharing data with "third-party AI".
  - 5.1.3(ii) bars storing personal health information in iCloud.
  - 1.4.1 requires proof for health accuracy claims.
  - Data processed only on the device does not count as "collected" for the privacy label.
- **Google Play:**
  - Every app must complete the Health apps declaration and the Data safety form.
  - Health Connect use needs per-data-type justification and a matching privacy-policy screen.
  - An April 2026 update bans using health data for employment or insurance decisions.
  - A camera foreground service cannot start from the background.
  - These points are V-full on the Android pages and V-excerpt on the policy pages.

**Design rules in the notes (18 in total).** The main ones:
- Process frames in memory on the device; never write them to disk or upload them.
- Remove facial and hand landmarks inside the inference step.
- Store only derived metrics such as reps, hold times and form flags.
- Never use pose or face data to identify anyone.
- Never infer age or gender from the camera; ask in a form.
- Make recording a separate opt-in with a visible indicator, with short retention for any uploaded clip.
- Ask separate consent before using any data for model training.
- Ask explicit, separate consent for health data, and evaluate screening answers on the device where possible.
- Keep ad and analytics SDKs away from health and camera data.
- Do a DPIA before launch.
- Add CI tests that prove no image or keypoint data leaves the phone.

The file also has a table classifying each Delva data type under each regime, a checklist for both stores, and 13 open questions for counsel (for example, whether Delva controls on-device processing, how far BIPA's face-geometry wording reaches, how far the Washington act reaches, and whether Delva counts as a health-records vendor under the FTC rule).

**Not covered:** Nevada SB 370, Connecticut's 2023 health-data amendments, the GDPR side of the Digital Omnibus, UK Data (Use and Access) Act 2025 changes, and BIPA district-court splits. openGym appears only as a comparison point (self-hosted, no telemetry, no camera).
````

## What changed afterwards

V4 confirmed the exact GDPR wording (Art. 4(13)-(15), 9, 22, 25, 35), the AI Act definitions and Recital 18, both CJEU judgments with paragraph numbers (and corrected a quotation from C-21/23 to the official English of para. 83), and that Regulation (EU) 2026/1744 (the Digital Omnibus) exists, published 24 July 2026, moving Annex III high-risk rules to 2 December 2027. It also found that the AI Act's own definition of biometric data has no identification requirement. EDPB, ICO, BIPA, FTC, Washington and Texas texts stayed unverified. See [V4_verify_IJ.md](../../02-notes/verification/V4_verify_IJ.md).
