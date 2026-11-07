# Area D: Motor-learning and interaction-design evidence for real-time (mainly audio) exercise feedback

Date checked for every item, number and link below: **2026-11-07**.

Method and tool limits (read before citing): all evidence was gathered through web search result pages and abstracts/repository records. Direct page fetches were blocked in this environment (WebFetch to ncbi.nlm.nih.gov, api.semanticscholar.org and aminer.org failed with "host not allowed"), and the shared web-search budget ran out before the last three planned searches (Calatayud push-up EMG studies, the Kaia Motion Coach JMIR study details, and any study on counting reps aloud). Consequences:
- **Citation counts: not verified for any item** (Semantic Scholar API and Google Scholar were unreachable). Every item below says "citation count not verified".
- Numbers come from abstracts or repository summaries surfaced by search, not from full texts, unless stated. Where two secondary summaries disagreed, that is flagged.
- No repositories were evaluated (none were needed for this area).

Evidence labels used: **Strong evidence** (systematic review/meta-analysis or several consistent RCTs, with no major bias concern), **Weak evidence** (single studies, small samples, lab tasks far from Delva's use, or meta-analyses with serious bias concerns), **Opinion / industry practice** (guidelines, standards, commercial apps' public docs, practitioner resources). "Foundational" marks pre-2019 work kept because later work tests it.

---

## Key question 1: Feedback scheduling and content (frequency, fading, bandwidth, concurrent vs terminal, KR vs KP)

### Takeaway
The classic rule "give less feedback and fade it, or learners become dependent" (guidance hypothesis) is foundational but its modern meta-analytic support is weak: a 2022 meta-analysis found no significant effect of reduced feedback frequency at any time point, and self-controlled feedback benefits shrink to trivial once publication bias is corrected. In resistance training specifically, frequent feedback (after every rep) reliably improves performance within the session (strong evidence for acute performance), which matters more for Delva's goal (getting the work done safely) than lab "retention" does.

### Cited Findings

**Item 1. Salmoni, Schmidt & Walter (1984), "Knowledge of results and motor learning: a review and critical reappraisal", Psychological Bulletin (foundational)**
- Link: cited via secondary sources only; the 1984 paper itself was not retrieved: [Ghorbani & Bund 2019 (cites the guidance hypothesis)](https://orbilu.uni.lu/bitstream/10993/41638/1/Publikation_Ghorbani_Bund_2019_Perceptual%20and%20Motor%20Skills.pdf); [St. Mary's "Good vs Poor" paper](https://research.stmarys.ac.uk/id/eprint/1804/3/Abbas-North-Good-vs-Poor.pdf)
- Type: narrative review (foundational).
- What it is: origin of the **guidance hypothesis**: augmented feedback has strong guiding properties; given on every trial it boosts practice performance but can create dependence, so learning (shown on no-feedback retention tests) suffers. Winstein & Schmidt (1990, reduced relative frequency) and Sherwood (1988) / Lee & Carnahan (1990) (bandwidth feedback: cue only when error exceeds a tolerance) are the classic follow-ups; I did not retrieve those papers in this session, so their specific numbers are not reported here.
- Why it matters for Delva: the audio coach (feature 2) and how often it speaks; whether cues should fade across the 4 chapters.
- Credibility: Psychological Bulletin; citation count not verified.
- Licence: n/a.
- Key ideas to borrow: (a) separate "help me now" from "help me learn"; (b) bandwidth logic (stay quiet while the movement is within tolerance) is a natural fit for camera-based error detection.
- Limitations: built on lab tasks (timing, positioning), mostly one-session studies with students; later meta-analyses (Items 2 to 4) do not confirm a robust reduced-frequency benefit.
- Evidence label: **foundational theory; current support weak** (see Item 2).

**Item 2. McKay, Hussien, Vinh, Mir-Orefice, Brooks & Ste-Marie (2022), "Meta-analysis of the reduced relative feedback frequency effect on motor learning and performance", Psychology of Sport and Exercise**
- Link: [preprint record, DOI 10.31234/osf.io/v2cp7](https://www.sciencegate.app/document/10.31234/osf.io/v2cp7); journal/year confirmed via [search index record](https://search.napstic.cn/literature/periodical/5f4b1771b0743014eea3b851e5278cdb)
- Type: meta-analysis.
- What it is: direct quantitative test of the guidance hypothesis's prediction that every-trial feedback helps practice but hurts learning compared with reduced frequency.
- Finding (abstract): "substantial heterogeneity but no significant moderators, high levels of uncertainty, and no significant effect of reduced feedback frequency at any time point"; authors conclude "robust evidence regarding feedback frequency and motor learning is lacking". Pooled effect sizes and k were not retrievable here.
- Why it matters for Delva: removes the strongest theoretical reason to ration cues for novices. Cue frequency can be decided on attention, annoyance and accuracy grounds instead.
- Credibility: peer-reviewed meta-analysis (PSE); citation count not verified.
- Licence: n/a.
- Limitations: lab-task literature; full text not read in this session.
- Related: a preregistered meta-analysis presented as a SCAPPS abstract (Journal of Exercise, Movement, and Sport) split retention timing: reduced frequency g = .21 at delayed retention vs g = .06 at immediate retention, difference not significant (p = .47) [JEMS abstract](https://scapps.org/jems/index.php/1/article/view/2529) (conference abstract, weak). An older meta-analysis of 40 studies (Marschall, Bund & Wiemeyer 2007, E-Journal Bewegung und Training) addressed the same question [PDF](https://orbilu.uni.lu/bitstream/10993/4589/1/Publikation_Marschall_Bund_Wiemeyer_2007_EJournal%20Bewegung%20und%20Training.PDF); its pooled estimates were not verified here. A 2024 single experiment on postural control found a 67% feedback frequency better than 100%, lower frequencies or none [Sensors 2024, PMC10933749](https://pmc.ncbi.nlm.nih.gov/articles/PMC10933749) (single study, weak).
- Evidence label: **strong evidence that the reduced-frequency benefit is unproven**; not evidence that frequent feedback harms.

**Item 3. Weakley, Cowley, Schoenfeld et al. (2023), "The Effect of Feedback on Resistance Training Performance and Adaptations: A Systematic Review and Meta-analysis", Sports Medicine 53(9):1789-1803**
- Link: [Springer, DOI 10.1007/s40279-023-01877-2](https://link.springer.com/article/10.1007/s40279-023-01877-2); [PMC10432365](https://pmc.ncbi.nlm.nih.gov/articles/PMC10432365/); [MMU repository PDF](https://e-space.mmu.ac.uk/632028/8/s40279-023-01877-2.pdf)
- Type: systematic review and meta-analysis (PRISMA), 20 studies; open access CC BY 4.0.
- Findings (abstract-level, as retrieved):
  - Acute: barbell velocity rose about 8.4% with feedback (g = 0.63, 95% CI 0.36 to 0.90).
  - Chronic: jump g = 0.39 (95% CI -0.20 to 0.99, crosses zero) and short sprint g = 0.47 (0.10 to 0.84) "may have small but meaningful greater improvements when feedback is consistently provided".
  - Modality: verbal g = 0.47 (0.22 to 0.71) and visual g = 1.11 (0.61 to 1.61) both beat no feedback; **visual was superior to verbal**.
  - Frequency: feedback "is most effective when it is supplied with a high frequency (e.g., following each repetition)".
  - No significant moderation by load (high/low), upper vs lower body, mean vs peak velocity, single vs multiple sets.
- Why it matters for Delva: the closest meta-analysis to Delva's setting (strength exercise, rep-by-rep feedback). Supports per-rep feedback for in-session effort and quality (feature 2, feature 3 rep counting). Note "visual > verbal" was found in people who could see a screen next to them; Delva's users often cannot, which is why audio is the default.
- Credibility: Sports Medicine (top sport-science journal); citation count not verified.
- Licence: paper is CC BY 4.0 (figures could be reused with attribution).
- Key ideas to borrow: per-rep, short, outcome-type feedback (speed, depth, hold time) to sustain effort; do not fear "too much" feedback for in-session performance.
- Limitations: feedback content was mostly barbell velocity (kinematic KR) in trained or athletic samples (including adolescents), not form correction for novices; chronic effects uncertain.
- Evidence label: **strong evidence for acute performance; weak for long-term adaptation; not tested in novices doing bodyweight work at home**.

**Item 4. Concurrent vs terminal feedback, and KP vs KR**
- Sigrist, Rauter, Riener & Wolf (2013), "Augmented visual, auditory, haptic, and multimodal feedback in motor learning: A review", Psychonomic Bulletin & Review 20(1):21-53 [PubMed 23132605](https://www.pubmed.gov/23132605/); [DOI 10.3758/s13423-012-0333-8](https://www.doi.org/10.3758/S13423-012-0333-8). Narrative review, foundational for modality (see Item 7). As retrieved: concurrent feedback "can enhance performance in the acquisition phase, but the performance gains are lost in retention tests", and its benefit "has been controversially discussed". Citation count not verified. **Foundational review; weak-to-moderate evidence (narrative, not meta-analytic).**
- Sattelmayer et al. (2016), systematic review and meta-analysis of motor-learning principles in physiotherapy/medical education, BMC Medical Education: 15 RCTs, 695 participants; only "limited evidence to conclude that terminal feedback is more effective than concurrent feedback on a transfer test"; other parameters insufficient for recommendations [BMC Med Educ PDF](https://bmcmededuc.biomedcentral.com/track/pdf/10.1186/s12909-016-0538-z). Citation count not verified. **Weak evidence.**
- KP (knowledge of performance: information about the movement pattern, for example "knees are caving in") vs KR (knowledge of results: outcome, for example "12 reps", "45 s hold") distinction is restated in a 2021 systematic review that notes "only a few studies have associated feedback frequencies with motor skill improvement" [Cureus 2021 via PMC8681883](https://pmc.ncbi.nlm.nih.gov/articles/PMC8681883/) (Cureus is a low-bar venue; weak).
- Delva mapping: rep counts and hold timers are KR; form cues from the vision model are KP. Bandwidth logic applies to KP (speak only when an error is clearly outside tolerance).

**Item 5. Self-controlled feedback: McKay, Yantha, Hussien, Carter & Ste-Marie (2022), "Meta-analytic findings of the self-controlled motor learning literature: Underpowered, biased, and lacking evidential value", Meta-Psychology; and St. Germain et al. (2023), Psychonomic Bulletin & Review 30(2):621-633**
- Links: [Meta-Psychology article](https://conferences.lnu.se/index.php/metapsychology/article/view/2803); [author PDF](https://raw.github.com/cartermaclab/carterlab-papers/main/2022_mckay-etal_meta-analytic-findings-of-the-self-controlled-motor-learning-literature-underpowered-biased-and-lacking-evidential-value.pdf); [St. Germain 2023 PDF](https://raw.github.com/cartermaclab/carterlab-papers/main/2023_st-germain-etal_exercising-choice-over-feedback-schedules-during-practice-is-not-advantageous-for-motor-learning.pdf); [McMaster record](https://experts.mcmaster.ca/scholarly-works/2171273)
- Type: meta-analysis with bias correction (2022); two-experiment study, N = 228 (2023).
- Findings: naive model g = .44 (k = 52); weight-function model corrected for selection bias g = .107; only published (not unpublished) studies showed a benefit; p-curve suggested a lack of evidential value. St. Germain et al.: no self-controlled learning advantage when learners chose when to get feedback, and choice did not raise perceived autonomy, competence or intrinsic motivation.
- Why it matters for Delva: "let the user choose when to hear feedback" should be justified as a comfort/accessibility setting, not as a learning booster.
- Credibility: Meta-Psychology (open peer-reviewed meta-science journal); Psychonomic Bulletin & Review; citation counts not verified.
- Evidence label: **strong evidence that the self-controlled learning benefit is small to null.**

### Inferences
- For Delva, the real trade-off is not "feedback frequency vs learning" (unproven) but "useful information vs attention load, annoyance and false alarms". Frequent outcome feedback (counts, timer) is safe and helps effort; frequent corrective KP is where restraint is needed, mainly because a camera model will make mistakes (see Key question 5).
- Fading across chapters is still a reasonable design (supported by HCI work such as YouMove, Item 9) but should be framed as reducing interruption and building self-reliance, not as a proven learning effect.

### Gaps
- Winstein & Schmidt (1990) and Sherwood (1988) / Lee & Carnahan (1990) bandwidth papers were not retrieved; no recent meta-analysis specific to bandwidth feedback was found.
- No study found that tests feedback scheduling for novices doing bodyweight exercise at home, unsupervised.

---

## Key question 2: Internal vs external focus of attention (including resistance and bodyweight exercise)

### Takeaway
External-focus cues ("push the floor away") were long reported as reliably better than internal ones ("squeeze your triceps"), but a 2024 bias-corrected meta-analysis in the same journal found the average effect near zero with large heterogeneity. In strength exercise, external focus gives a small acute strength/endurance edge, while internal focus may help muscle growth in one small RCT. Neither should be sold as a strong rule.

### Cited Findings

**Item 6a. Wulf (2013), "Attentional focus and motor learning: a review of 15 years", International Review of Sport and Exercise Psychology 6(1):77-104 (foundational)**
- Link: [Scinapse record](https://scinapse.io/papers/2044201858); [CiNii record](https://cir.nii.ac.jp/crid/1363670318240075008?lang=en)
- Type: narrative review. Claims external-focus benefits for performance and learning across tasks, skill levels and ages. Citation count not verified. **Foundational; superseded by Items 6b and 6c.**

**Item 6b. Chua, Jimenez-Diaz, Lewthwaite, Kim & Wulf (2021), "Superiority of External Attentional Focus for Motor Performance and Learning: Systematic Reviews and Meta-Analyses", Psychological Bulletin 147(6):618-645**
- Link: [Penn State record](https://pure.psu.edu/en/publications/superiority-of-external-attentional-focus-for-motor-performance-a/); [UNLV record](https://digitalscholarship.unlv.edu/kns_fac_articles/424)
- Type: systematic reviews and meta-analyses. Performance: 73 studies, 1,824 participants, g = 0.264; learning: 40 studies, 1,274 participants; retention g = 0.583, transfer g = 0.584; age, health status and skill level did not moderate; EMG secondary analysis of 12 studies linked external focus to more efficient neuromuscular activity.
- Credibility: Psychological Bulletin; citation count not verified. Authors include the theory's originator (Wulf), and funnel-plot asymmetry was reported (per Item 6c).
- **Evidence label: was "strong"; now contested (see 6c).**

**Item 6c. McKay, Corson, Seedu, De Faveri, Hasan, Arnold, Adams & Carter (2024), "Reporting bias, not external focus: A robust Bayesian meta-analysis and systematic review of the external focus of attention literature", Psychological Bulletin 150(11):1347-1362, DOI 10.1037/bul0000451**
- Link: [McMaster record](https://experts.mcmaster.ca/display/publication3486012); [author PDF](https://raw.github.com/cartermaclab/carterlab-papers/main/2024_mckay-etal_reporting-bias-not-external-focus-a-robust-bayesian-meta-analysis-and-systematic-review-of-the-external-focus-of-attention.pdf); [SportRxiv preprint](https://sportrxiv.org/index.php/server/preprint/download/304/826)
- Type: robust Bayesian meta-analysis re-analysing the literature with several publication-bias models.
- Findings: moderate to strong evidence of publication bias in all analyses; bias-adjusted g = 0.01 (performance), 0.15 (retention), 0.09 (transfer), 0.06 (EMG), -0.01 (distance effect); Bayes factors favoured the null (BF01 1.3 for retention to 5.75 for performance); clear heterogeneity, interpreted as context-dependent effects not yet identified.
- Why it matters for Delva: cue wording for the audio coach. External cues are not harmful and are often shorter and clearer, but the effect is not reliable enough to promise better learning.
- Credibility: Psychological Bulletin, same journal as 6b; citation count not verified.
- **Evidence label: strong evidence that the average external-focus advantage is small to nil after bias correction; heterogeneity means it may still help in some contexts.**

**Item 6d. Strength-specific evidence**
- Grgic, Mikulic & Mikulic (2021), "Acute and Long-Term Effects of Attentional Focus Strategies on Muscular Strength: A Meta-Analysis", Sports 9(11):153 [VU repository](https://vuir.vu.edu.au/42840/); [DOAJ](https://doaj.org/article/3dcd146c2b8243a2b60868e3171b4e02). Acute (10 studies): external > internal, SMD 0.34 (95% CI 0.22 to 0.46). Long-term training: no significant difference, SMD 0.32 (-0.08 to 0.73); lower-body subgroup favoured external, SMD 0.47 (0.07 to 0.87). Sports (MDPI) is a mid-tier venue; citation count not verified. **Moderate evidence for a small acute effect; weak for long-term.**
- Grgic & Mikulic (2022) meta-analysis on muscular endurance: external focus enhanced muscular endurance vs internal [VU PDF](https://vu-9.eprints-hosting.org/43245/1/Effects%20of%20Attentional%20Focus%20on%20Muscular%20Endurance%20A%20Meta-Analysis.pdf). Directly relevant to bodyweight sets to near-failure (push-ups, squats). Effect sizes not retrieved; citation count not verified. **Moderate evidence.**
- Schoenfeld et al. (2018), "Differential effects of attentional focus strategies during long-term resistance training", European Journal of Sport Science [PubMed 29533715](https://pubmed.ncbi.nlm.nih.gov/29533715/); DOI 10.1080/17461391.2018.1447020. RCT, 30 untrained young men, 3 sessions/week for 8 weeks, 4 sets of 8-12 reps; elbow flexor thickness +12.4% (internal) vs +6.9% (external); quadriceps changes similar between groups; strength differences not significant. Citation count not verified. **Weak evidence (one small RCT, n = 15 per group).**
- Not retrieved this session (search budget exhausted): Calatayud et al. EMG studies on the "mind-muscle connection" in bench press/push-ups. The 2024 bias-corrected EMG estimate (g = 0.06) in Item 6c covers the EMG literature in aggregate.

### Inferences
- Delva has no hypertrophy promise and its goals are general fitness, so the default cue style can be external and outcome-oriented ("push the floor away", "sit back like into a chair", "keep a straight line from head to heels") for clarity and brevity, with internal "feel the muscle" cues optional for Build Strength. Justify this choice by brevity and comprehension, not by a learning effect.
- The OPTIMAL theory (Item 8) bundles external focus with motivational claims; all three pillars have weakened (see "Where the evidence has weakened").

### Gaps
- No study found comparing external vs internal *audio* cues delivered by an automated system to novices doing bodyweight exercise at home.

---

## Key question 3: Feedback modality (audio vs visual vs haptic) and sonification

### Takeaway
Visual feedback is the most studied and, where users can see it, the most effective (strength meta-analysis: visual g = 1.11 vs verbal g = 0.47). But Delva's users are often metres from a phone on the floor, so audio is the practical channel; reviews support auditory feedback and sonification as feasible and effective, and haptics (a watch) add little for learning new skills but suit simple alerts.

### Cited Findings

**Item 7. Sigrist et al. (2013) review (see Item 4) plus Sigrist et al. (2015) and Schaffert et al. (2019)**
- Sigrist 2013 sets out design criteria per modality from the evidence, mainly from healthy participants and laboratory or simulator tasks [PubMed 23132605](https://www.pubmed.gov/23132605/). Foundational; citation count not verified.
- Sigrist et al. (2015), Experimental Brain Research, "Sonification and haptic feedback in addition to visual feedback enhances complex motor task learning" (rowing simulator): "well-designed concurrent feedback fosters complex task learning, especially if the advantages of different modalities are exploited" [RERO record](https://doc.rero.ch/record/333015?ln=en). Single lab study; **weak evidence**.
- Schaffert, Braun Janzen, Mattes & Thaut (2019), "A Review on the Relationship Between Sound and Movement in Sports and Rehabilitation", Frontiers in Psychology 10:244, doi 10.3389/fpsyg.2019.00244 [Frontiers full text](https://www.frontiersin.org/articles/10.3389/fpsyg.2019.00244/full); [PMC6379478](https://pmc.ncbi.nlm.nih.gov/articles/PMC6379478). Narrative review of natural movement sounds, movement sonification and rhythmic auditory cues; concludes evidence supports "feasibility and effectiveness" of auditory information for movement execution, control and relearning in sport and rehabilitation; open question of which auditory components matter. Citation count not verified. **Moderate evidence (narrative review).**
- Weakley et al. 2023 (Item 3): visual g = 1.11 > verbal g = 0.47 in resistance training. **Strong evidence, but only where the screen is visible.**
- van Breda et al. (2017), systematic review of vibrotactile feedback for motor learning and sport, BMJ Open Sport & Exercise Medicine 3(1):e000216 [BMJ Open SEM](https://bmjopensem.bmj.com/content/3/1/e000216): retrieved summary says it found no evidence that adding tactile feedback is effective for acquiring new motor skills (full text not checked here; citation count not verified). **Weak-to-moderate evidence.**

### Inferences
- Use audio as the primary channel during sets (counts, timer, short cues) because the screen is usually unreadable; use the screen for between-set or post-set visual summaries (where visual's advantage can be captured: the user walks to the phone between sets).
- Sonification (a tone whose pitch tracks depth or tempo) is a promising "continuous, non-verbal" option that avoids speech overload, but there is no evidence for it in novice home bodyweight training; treat it as an experiment.
- Haptics (Apple Watch / Wear OS) suit discrete events (set start/end, rest over, "hold steady") and accessibility, not detailed form teaching.

### Gaps
- No head-to-head study found of speech vs sonification vs haptic cues for bodyweight exercise form in novices.
- No evidence found on how room acoustics, music playback or distance (several metres from a phone speaker) affect cue intelligibility in home workouts.

---

## Key question 4: Applicability to novices training alone at home; automated/app-based real-time coaching

### Takeaway
Almost all motor-learning evidence comes from short lab tasks with students and retention tests a day later; the strength-feedback evidence comes from trained or athletic samples with coaches present. Studies of automated camera-based coaching at home exist but are mainly feasibility and accuracy studies, often industry-linked, and none tested feedback scheduling or wording for novices. Transfer to Delva is by analogy.

### Cited Findings

**Item 9. YouMove (Anderson, Grossman, Matejka & Fitzmaurice, ACM UIST 2013), "Enhancing Movement Training with an Augmented Reality Mirror" (foundational HCI)**
- Link: [Autodesk Research publication page](https://www.research.autodesk.com/publications/youmove-enhancing-movement-training-with-an-augmented-reality-mirror/); [PDF](https://research.autodesk.com/app/uploads/2023/03/youmove-enhancing-movement-training.pdf_rec4sI8h0lU7O1y7N.pdf); DOI 10.1145/2501988.2502045
- Type: HCI system + user study (UIST full paper).
- What it is: a mirror-overlay movement trainer whose stages "gradually reduce the user's reliance on guidance and feedback", explicitly designed around the guidance hypothesis; it "improve[d] learning and short-term retention by a factor of 2 compared to a traditional video demonstration".
- Why it matters for Delva: concrete precedent for staged fading of guidance across a program (maps to Delva's 4 chapters).
- Credibility: UIST (top HCI venue); citation count not verified. Note: Autodesk filed a patent on the mirror approach ([USPTO 10134296](https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/10134296)); Delva borrows the fading idea, not the mirror hardware, but should check freedom to operate if it builds an overlay mirror UI.
- Limitations: visual mirror, lab setting, dance-like movements, short-term retention only.
- **Weak evidence (single lab study), useful design precedent.**

**Item 10. Camera-based home exercise feedback studies (feasibility/accuracy, not learning)**
- Kaia Health "Motion Coach" validation, JMIR 2021: smartphone pose estimation runs on-device; press coverage reports agreement with two in-person physiotherapists [JMIR PDF](https://www.jmir.org/2021/7/e26658/PDF); [PMC8317029](https://pmc.ncbi.nlm.nih.gov/articles/PMC8317029); [RY Ortho press](https://ryortho.com/2021/08/kaias-computer-technology-as-accurate-as-physical-therapists/). Agreement statistics and author affiliations were not verified this session (search budget exhausted). **Weak evidence / industry-linked.**
- OffiStretch (Visual Computer 2024): camera-based stretching with live visual feedback on an augmented-mirror display; participants performed about equally well with and without live feedback [TU Wien PDF](https://repositum.tuwien.at/bitstream/20.500.12708/205611/1/Adolf-2024-VISUAL%20COMPUTER-vor.pdf). **Weak evidence (single small study).**
- BlazePose-based tele-exercise system with exercise recognition, repetition counting and real-time guidance for patients and older adults [PMC11013996](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11013996/). Feasibility; **weak.**
- A workshop paper (CEUR-WS) surveying home-physiotherapy users reports they value immediate corrective feedback [CEUR-WS](https://ceur-ws.org/Vol-4266/paper14.pdf). **Weak (workshop venue).**

### Inferences
- What transfers well: (1) outcome feedback (counts, hold time) boosts effort (Item 3); (2) short, clear, one-at-a-time instructions reduce overload (Item 12); (3) staged reduction of guidance (Item 9).
- What transfers poorly: lab "retention test" findings, since Delva's success metric is safe, completed sessions and adherence over 8+ weeks, not a no-feedback skill test.
- New risk specific to Delva: the error signal comes from a camera model several metres away with occlusion and poor lighting, so false corrective cues are likely. That makes alarm-fatigue evidence (Item 13) more relevant than the guidance hypothesis.

### Gaps
- No RCT found of automated real-time audio coaching vs no feedback in novice adults doing bodyweight training at home, measuring adherence, injury/pain or form quality.
- No study found of how novices interpret corrective audio from a phone they cannot see (trust, irritation, self-efficacy).

---

## Key question 5: Cues per set, latency, counting aloud, cue fatigue, positive vs corrective feedback, autonomy-supportive language

### Takeaway
There is no direct evidence on the optimal number of cues per set or on counting reps aloud. Indirect evidence says: keep instructions few (working memory limits learning under multiple instructions, in children), keep sound tightly synchronised with the event (non-musicians notice action-to-sound delays around 100 to 200 ms on average, with wide spread), avoid non-actionable alerts (alarm fatigue), and frequent encouragement helps effort. Feedback after good trials and autonomy-supportive wording were reported to help learning, but the bias-corrected meta-analyses make those effects small and uncertain.

### Cited Findings

**Number of cues**
- No study found that compares one vs several cues per set in adults. Closest: Buszard et al. (2017), "Working Memory Capacity Limits Motor Learning When Implementing Multiple Instructions", Frontiers in Psychology: children with lower working-memory capacity learned basketball shooting worse when given repeated explicit technical instructions; executive attention appeared to be the driving factor [Frontiers / PMC5572292](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5572292/). Citation count not verified. **Weak evidence (children, one task).**
- Verbal encouragement frequency: Midgley, Marchant & Levy (2017) call for an evidence-based approach; the only randomised trial they cite found encouragement every 20 s improved time to exhaustion while every 60 s or 180 s did not [Edge Hill record](https://research.edgehill.ac.uk/en/publications/a-call-to-action-towards-an-evidence-based-approach-to-using-verb-2/). A scoping review of 49 studies in maximal aerobic tests found verbal encouragement, especially frequent and individualised, generally improved performance [lida record](https://lida.sport-iat.de/ta/Record/4095034?lng=en). A systematic review of psychological determinants of endurance found verbal encouragement beneficial [PMC4473096](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4473096/). Citation counts not verified. **Weak-to-moderate evidence; context is maximal tests, not 15-20 min bodyweight sessions.**

**Latency of concurrent audio**
- van Vugt & Tillmann (2014), PLoS ONE, keypress-to-sound delay detection: non-musicians' mean threshold 180 ms (SD 104), musicians 102 ms (SD 65) [PMC3911931](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3911931/). **Moderate evidence (lab psychophysics).**
- An EEG study (Frontiers in Human Neuroscience 2015) reports the 50% detection point around 200 ms; delays of 200-300 ms can be perceived as simultaneous in that setup [Frontiers PDF](https://www.frontiersin.org/journals/human-neuroscience/articles/10.3389/fnhum.2015.00688/pdf). **Weak-to-moderate.**
- A 2012 Frontiers in Psychology paper cites haptic-to-auditory asynchrony thresholds of 24-40 ms (Adelstein et al. 2003) and 100-200 ms for graphical responses to mouse/typing [Frontiers 2012](https://www.frontiersin.org/articles/10.3389/fpsyg.2012.00061/full). **Secondary citation; weak.**
- A 2024 ACM study of action-to-sound latency in music performance: mean JND 49 ms at 0 ms base latency, 27 ms at 64 ms, 77 ms at 512 ms; "highly dependent on task and medium" [Regensburg PDF](https://epub.uni-regensburg.de/59003/3/3678299.3678331.pdf). Note JND of a latency difference is not the same as delay detection. **Weak-to-moderate.**

**Cue fatigue (alarm fatigue literature, healthcare; transfer by analogy)**
- Scoping review (BMC Nursing 2025): no consensus definition, but alarm fatigue is broadly "a form of alarm desensitization, caused by factors such as high number of false alarms", which wears down confidence in the alarm's usefulness [BMC Nursing / PMC12181921](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12181921/); [Springer DOI link](https://link.springer.com/doi/10.1186/s12912-025-03369-2).
- Systematic review (Frontiers in Digital Health 2022, ICU): 72% to 99% of patient-monitoring alarms are technically false or clinically non-actionable; "solely reducing the number of alarms might not resolve the problem" [Frontiers](https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2022.843747/full).
- Citation counts not verified. **Moderate evidence for the mechanism (false/non-actionable alerts drive desensitisation); transfer to fitness cues is inference.**

**Positive vs corrective feedback, and autonomy-supportive language**
- Chiviacowsky & Wulf (2007), "Feedback after good trials enhances learning", Research Quarterly for Exercise and Sport 78(2):40-47, DOI 10.1080/02701367.2007.10599402 [record](https://lida.sport-iat.de/ta/Record/4012854?lng=en); [publisher](https://informahealthcare.com/doi/abs/10.1080/02701367.2007.10599402): beanbag throwing with the non-dominant arm, KR on 3 of every 6 trials; the group told about its 3 best trials learned better on delayed retention than the group told about its 3 worst. Small lab study; citation count not verified. **Foundational; weak evidence by today's standard.**
- Wulf & Lewthwaite (2016), OPTIMAL theory, Psychonomic Bulletin & Review 23(5):1382-1414 [UNLV record](https://oasis.library.unlv.edu/kns_fac_articles/123): autonomy support, enhanced expectancies and external focus as the three factors of optimal practice. **Theory (foundational).**
- McKay, Bacelar, Parma, Miller & Carter (2025 issue; online 2023), International Review of Sport and Exercise Psychology 18(1):242-262: Bayesian reanalysis of the enhanced-expectancies and autonomy-support meta-analyses; "reporting bias substantially exaggerated the benefits"; true effects "small, uncertain, and potentially null"; average power of included studies 6% (95% CI 5% to 13%) [McMaster record](https://experts.mcmaster.ca/scholarly-works/3159192); [author PDF](https://raw.github.com/cartermaclab/carterlab-papers/main/2023_mckay-etal_the-combination-of-reporting-bias-and-underpowered-study-designs-has-substantially-exaggerated-the-motor-learning-benefits-of.pdf). Citation count not verified. **Strong evidence that motivational "learning boosts" are unproven.**

**Counting aloud**
- No study found on an app or coach counting repetitions aloud (the dedicated search could not be run because the search budget ran out). Treat as a gap.

### Inferences
- **Latency targets (extrapolated, no exercise-specific evidence):** rep-count audio should start within about 100 ms of the detected rep end (comfortably below the mean non-musician threshold of 180 ms, and closer to the musician mean of 102 ms that some users will match); up to about 200 ms is probably tolerable; beyond that, counts will feel "late", especially if the user counts in their head. Pre-render count clips (no live text-to-speech on the critical path). Corrective KP cues are less time-critical (they can be spoken between reps or at set end).
- **Cues per set (no direct evidence; opinion):** one corrective theme per set, repeated at most once or twice, only when the error persists over two or more reps and model confidence is high; counts and timer cues do not count against this budget.
- **Cue fatigue:** the alarm literature says false and non-actionable alerts, not volume alone, cause desensitisation. Delva's corrective cues should be gated on confidence and persistence, offer a positive confirmation when the fix lands, and stop repeating a cue the user cannot act on (e.g., camera angle problems should be one setup prompt, not repeated form warnings).
- **Positive vs corrective:** lean positive and specific ("good depth on that one"), aligning with Chiviacowsky & Wulf, but justify by user experience and adherence, not by a proven learning gain. Avoid language promising "perfect technique" (spec rule).
- **Autonomy-supportive wording** ("you can...", "if you like...") is cheap and kind, and fits the spec's "suggests, user accepts/declines" pattern, but should not be presented as a performance enhancer.

### Gaps
- No direct evidence on: cues per set; counting aloud by an app or coach; habituation to fitness-app voice cues over 8+ weeks; whether users prefer the app counting up, counting down or announcing only milestones.

---

## Key question 6: Accessibility (blind/low-vision, Deaf/hard-of-hearing, platform guidance)

### Takeaway
Audio-only, personalised corrective feedback is proven usable and well liked by blind and low-vision exercisers (Eyes-Free Yoga, ASSETS 2013 and a later real-world deployment). For Deaf and hard-of-hearing users, research is thin; haptic and visual cues are the recommended alternatives, but controlled trials are lacking. WCAG and Apple guidance require user control over auto-playing audio, captions/transcripts for spoken content, and pairing sounds with haptics where possible.

### Cited Findings

**Item 11. Eyes-Free Yoga: Rector, Bennett & Kientz (2013), "Eyes-free yoga: an exergame using depth cameras for blind & low vision exercise", ACM ASSETS '13 (foundational)**
- Links: [University of Iowa record](https://iro.uiowa.edu/esploro/outputs/conferenceProceeding/Eyes-free-yoga-an-exergame-using-depth/9984259470902771); [UW CHILL Lab project page](https://depts.washington.edu/chilllab/research/eyes-free-yoga); [UW News 2013](https://www.washington.edu/news/2013/10/17/yoga-accessible-for-the-blind-with-new-microsoft-kinect-based-program/)
- Type: system + controlled lab study (ASSETS full paper).
- What it is: a Kinect yoga "instructor" that teaches six poses with auditory-only feedback from skeletal tracking, designed with ten yoga instructors. Study: 16 participants (12 blind, 4 low vision), ages 13-60, comparing step-by-step instructions alone vs plus customised verbal corrections; extra feedback helped understanding of each pose; 13 of 16 would recommend it.
- Later work (via a secondary review site, not verified on ACM DL): "Design and Real-World Evaluation of Eyes-Free Yoga" (journal follow-up, 2017) reports participants preferred personalised, specific adjustment feedback over generic encouragement, and an 8-week home deployment with sustained use (about 17 hours over 24 days on average) [a11y-paradise summary](https://a11y-paradise.onrender.com/reviews/69a48a404fede54aac9f09c3). A 2015 ASSETS stakeholder study with blind/low-vision people and fitness facilitators stresses deciding what to say, when to interrupt, and preserving environmental awareness [a11y-paradise summary](https://a11y-paradise.onrender.com/reviews/69c93997fb73a085be7c6cab). These two are secondary summaries; **weak until checked on ACM DL**.
- Why it matters for Delva: the strongest precedent for camera-tracked, audio-only corrective feedback, which is exactly Delva's feature 1 + 2 combination. Design idea: use descriptive body-relative language rather than spatial or visual references.
- Credibility: ASSETS (top accessibility venue); citation count not verified.
- Limitations: Kinect depth camera (better than a single phone RGB camera), lab setting, small n, poses rather than dynamic reps.
- **Weak-to-moderate evidence (small but directly relevant).**

**Other accessibility items**
- PunchPulse (ASSETS '25): VR boxing exergame co-designed with blind/low-vision players using heart rate and audio-haptic feedback; seven-month co-design with 3 co-designers, 2 pilot testers, 6 evaluation participants [arXiv 2508.02610](https://arxiv.org/html/2508.02610v1) (arXiv copy of an ASSETS paper; very small n; **weak**).
- Industry practice: Peloton's accessibility talk (axe-con) describes competing audio streams (instructor, music, screen reader) as a cognitive-load problem for screen-reader users [Deque PDF](https://www.deque.com/axe-con/wp-content/uploads/2021/12/Setting-Accessibility-in-Motion-at-Peloton-a.pdf). **Opinion / industry practice.**
- Deaf/hard-of-hearing: HaptStarter (Shitara et al., International Journal of Human-Computer Studies, 2023): haptic start signal for DHH sprinters; a push-type stimulus suited users better than vibration [BCU open access](https://www.open-access.bcu.ac.uk/15345/); [arXiv](https://ar5iv.labs.arxiv.org/html/2311.03793). A 2024 review in Multimodal Technologies and Interaction on haptic feedback in training/gamified experiences for people with hearing impairments notes recruitment difficulty (about 8 participants per study on average) [MDPI](https://www.mdpi.com/2414-4088/8/1/1). Practitioner guidance from NCHPAD (US National Center on Health, Physical Activity and Disability) advises full visual demonstrations and visual/tactile cues [NCHPAD](https://nchpad.org/?p=381). **Weak evidence + practitioner guidance.**
- Standards: WCAG Success Criterion 1.4.2 Audio Control (Level A): if audio plays automatically for more than 3 seconds, provide a way to pause/stop it or control its volume independently of system volume; muting the system is not sufficient [W3C Understanding 1.4.2](https://www.w3.org/WAI/WCAG21/Understanding/audio-control.html). WCAG is a web standard; for native apps it is commonly applied by analogy (for example via EN 301 549), which I did not verify this session. **Standards.**
- Platform guidance (Apple HIG, industry): support system-defined haptics consistently, because "many people rely on haptics to help them interact with apps when they can't see the screen"; keep VoiceOver descriptions current; audio descriptions narrate visual-only information in natural pauses [Apple HIG Accessibility](https://developer.apple.com/design/human-interface-guidelines/accessibility.md); [Apple HIG VoiceOver](https://developer.apple.com/design/human-interface-guidelines/voiceover.md). The advice to pair audio cues with matching haptics appeared only in an unofficial mirror of the HIG in search results, so it is not confirmed. Android/Material accessibility guidance was not retrieved this session. **Opinion / industry practice (platform guidance).**

### Inferences
- Make every audio cue type available in at least two channels: audio (default), haptic on a paired watch (counts, set end, rest end), and large-type visual on the phone (for DHH users who can see it, and for between-set review). Provide captions/transcripts for spoken instruction videos.
- Separate volume (and an on/off switch) for coach voice, counts and music, consistent with WCAG 1.4.2 and the Peloton competing-audio lesson; duck music under cues.
- For blind/low-vision users, Eyes-Free Yoga supports specific, body-referenced corrective phrasing; camera setup itself (framing) needs an audio-guided flow because they cannot check the preview.

### Gaps
- No controlled study found on DHH users and fitness-app cue modality.
- Android accessibility guidance and the HIG "Playing haptics" page were not retrieved; recheck before writing specs.
- ACM DL details (DOIs, exact numbers) for the 2015 and 2017 Rector et al. papers were not verified.

---

## Design recommendations with evidence strength

| Topic | Recommendation for Delva | Evidence strength | Main sources |
|---|---|---|---|
| Cue frequency (outcome/KR: counts, hold timer) | Speak every rep count and hold milestones; this is cheap, low-risk and supports effort. | Strong (acute performance, trained samples); transfer to novices is inference | Weakley 2023 |
| Cue frequency (form/KP) | Bandwidth gating: cue only when an error is outside tolerance, persists over 2+ reps and the model is confident; at most one corrective theme per set. | Weak (bandwidth idea is foundational; cue budget is opinion; false-alarm risk from alarm literature) | Salmoni 1984; alarm-fatigue reviews |
| Fading | Reduce routine form prompts as chapters progress (e.g., full cues in chapter 1, on-error only later, user can turn them back up). Frame as less interruption, not a learning promise. | Weak (guidance hypothesis not confirmed meta-analytically; YouMove precedent) | McKay 2022 PSE; YouMove 2013 |
| Concurrent vs terminal | Counts concurrent; form cues between reps or as a one-line set summary; a richer visual recap on screen after the set. | Weak (mixed reviews) | Sigrist 2013; Sattelmayer 2016 |
| Focus of attention | Default to short external/outcome cues for clarity; internal "feel the muscle" cues optional. Do not claim learning gains from either. | Weak (bias-corrected average near zero; small acute strength/endurance edge for external) | McKay 2024; Chua 2021; Grgic 2021/2022; Schoenfeld 2018 |
| Modality | Audio primary during sets; visual summaries between/after sets; haptics for discrete events and accessibility. Sonification as an experiment only. | Moderate for "visual best when visible"; weak for audio-vs-haptic choices at home | Weakley 2023; Sigrist 2013; Schaffert 2019; van Breda 2017 |
| Latency | Target under about 100 ms from detected event to audio onset for counts; treat 200 ms as an upper bound; pre-rendered clips, no live TTS on the critical path. | Weak (lab psychophysics, extrapolated) | van Vugt & Tillmann 2014; Frontiers 2015; ACM 2024 |
| Counting aloud | Offer count-up by default, with options (count-down to target, milestones only, silent). Test in user research. | No evidence found (opinion) | (gap) |
| Cue fatigue | Never repeat a non-actionable cue; one setup prompt for camera/visibility problems; confidence and persistence gating; allow "mute form cues" per set. | Moderate mechanism (healthcare), transfer is inference | BMC Nursing 2025; Frontiers Digit Health 2022 |
| Positive vs corrective | Mix specific positive confirmation ("that's it") after a fix with brief correction; avoid "perfect" language. | Weak (small foundational lab study; motivational effects bias-corrected to small/null) | Chiviacowsky & Wulf 2007; McKay 2025 |
| Autonomy-supportive wording | Use invitational wording and opt-in settings; matches the spec's accept/decline check-in. Do not market as performance boost. | Weak (bias-corrected to small/null) | Wulf & Lewthwaite 2016; McKay 2025; St. Germain 2023 |
| Encouragement | Brief encouragement near the end of hard sets and holds is reasonable; frequency effects seen only in maximal tests. | Weak-to-moderate | Midgley 2017; scoping review (49 studies) |
| Accessibility | Every cue in 2+ channels; separate volumes and pause for coach voice; captions/transcripts; audio-guided camera setup; specific body-relative phrasing. | Weak research + standards/industry guidance | Eyes-Free Yoga 2013; WCAG 1.4.2; Apple HIG |

---

## Where the evidence has weakened (replication caveats)

- **Guidance hypothesis / reduced frequency:** McKay et al. 2022 (PSE) found no significant reduced-frequency effect at any time point and high uncertainty ([record](https://www.sciencegate.app/document/10.31234/osf.io/v2cp7)). The textbook "100% feedback harms learning" claim should not drive design.
- **Self-controlled feedback:** naive g = .44 shrank to g = .107 after bias correction; only published studies showed benefits; p-curve lacked evidential value ([Meta-Psychology 2022](https://conferences.lnu.se/index.php/metapsychology/article/view/2803)); a large two-experiment test (N = 228) found no advantage ([St. Germain 2023](https://raw.github.com/cartermaclab/carterlab-papers/main/2023_st-germain-etal_exercising-choice-over-feedback-schedules-during-practice-is-not-advantageous-for-motor-learning.pdf)).
- **External focus:** Chua et al. 2021 (g up to 0.58 for learning) vs McKay et al. 2024 (bias-adjusted g = 0.01 to 0.15; Bayes factors favour the null) in the same journal ([McKay 2024](https://experts.mcmaster.ca/display/publication3486012)). Heterogeneity remains, so "sometimes helps, average effect unclear" is the honest summary.
- **Enhanced expectancies and autonomy support (OPTIMAL's motivational pillars):** reporting bias "substantially exaggerated" benefits; average study power 6% ([McKay et al. IRSEP](https://experts.mcmaster.ca/scholarly-works/3159192)). Feedback-after-good-trials findings (Chiviacowsky & Wulf 2007) sit in this literature and should be treated as unconfirmed.
- **Strength feedback (Weakley 2023):** acute effects are robust in the meta-analysis, but long-term adaptation estimates have wide intervals (jump g CI crosses zero), and samples are mostly trained or athletic.
- **Mind-muscle connection for hypertrophy:** rests on one small RCT (Schoenfeld 2018, n = 30); not replicated in the material found here.
- General: motor-learning studies are typically small (the IRSEP reanalysis estimates 6% average power), so single positive studies in this field should be read as hypotheses.

---

## Gaps / open questions for Delva user research

1. **Counting style:** count-up vs count-down vs milestone-only vs silent; does counting aloud help or annoy novices; what about holds (every 10 s vs last 5 s)?
2. **Cue budget:** how many corrective cues per set do novices tolerate before muting? Does one-theme-per-set feel coached or nagging?
3. **False-cue tolerance:** how many wrong corrections (model errors) before users stop trusting or mute cues? Measure mute rate as a fatigue proxy over 8 weeks.
4. **Latency perception in practice:** do users notice 100 vs 200 vs 300 ms count delays during squats/push-ups at 2-4 m from a phone speaker, with and without music?
5. **Intelligibility at distance:** phone speaker on the floor, room noise, music; is ducking enough; do earbuds change preferences?
6. **Wording:** external vs internal cue phrasing comprehension for each exercise in each language (Delva will need localised cue sets); which phrasing is understood without seeing the screen.
7. **Fading schedule:** do users want fewer form cues in later chapters, or more control? Does an "on-error only" mode feel like the app stopped watching?
8. **Positive confirmation:** does "that's better" after a correction increase trust, or feel patronising?
9. **Accessibility:** recruit blind/low-vision and DHH participants (expect small samples, as the MTI review notes) to test audio-guided camera setup and watch haptic cue sets.
10. **Evidence gaps to recheck later** (not retrievable this session): Winstein & Schmidt 1990; Sherwood 1988; Lee & Carnahan 1990 (bandwidth); Calatayud et al. push-up/bench EMG studies; Kaia JMIR 2021 agreement statistics and authorship; Android accessibility guidance; Apple HIG "Playing haptics"; citation counts for all items.

---

## Source list (all checked 2026-11-07; citation counts not verified for any item)

Motor learning: scheduling, frequency, self-control
- McKay et al. 2022, reduced relative feedback frequency meta-analysis (PSE): https://www.sciencegate.app/document/10.31234/osf.io/v2cp7 ; https://search.napstic.cn/literature/periodical/5f4b1771b0743014eea3b851e5278cdb
- SCAPPS/JEMS preregistered retention-timing meta-analysis abstract: https://scapps.org/jems/index.php/1/article/view/2529
- Marschall, Bund & Wiemeyer 2007: https://orbilu.uni.lu/bitstream/10993/4589/1/Publikation_Marschall_Bund_Wiemeyer_2007_EJournal%20Bewegung%20und%20Training.PDF
- Sensors 2024 postural control reduced frequency: https://pmc.ncbi.nlm.nih.gov/articles/PMC10933749
- McKay et al. 2022 self-controlled meta-analysis (Meta-Psychology): https://conferences.lnu.se/index.php/metapsychology/article/view/2803 ; https://raw.github.com/cartermaclab/carterlab-papers/main/2022_mckay-etal_meta-analytic-findings-of-the-self-controlled-motor-learning-literature-underpowered-biased-and-lacking-evidential-value.pdf
- St. Germain et al. 2023 (PB&R): https://raw.github.com/cartermaclab/carterlab-papers/main/2023_st-germain-etal_exercising-choice-over-feedback-schedules-during-practice-is-not-advantageous-for-motor-learning.pdf ; https://experts.mcmaster.ca/scholarly-works/2171273
- Salmoni et al. 1984 (cited via): https://orbilu.uni.lu/bitstream/10993/41638/1/Publikation_Ghorbani_Bund_2019_Perceptual%20and%20Motor%20Skills.pdf
- Sattelmayer et al. 2016 (BMC Med Educ): https://bmcmededuc.biomedcentral.com/track/pdf/10.1186/s12909-016-0538-z
- KR/KP systematic review (Cureus 2021): https://pmc.ncbi.nlm.nih.gov/articles/PMC8681883/
- Chiviacowsky & Wulf 2007: https://lida.sport-iat.de/ta/Record/4012854?lng=en ; https://informahealthcare.com/doi/abs/10.1080/02701367.2007.10599402
- Buszard et al. 2017 working memory and multiple instructions: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5572292/

Attentional focus and motivation
- Wulf 2013 review (IRSEP): https://scinapse.io/papers/2044201858
- Wulf & Lewthwaite 2016 OPTIMAL: https://oasis.library.unlv.edu/kns_fac_articles/123
- Chua et al. 2021 (Psych Bull): https://pure.psu.edu/en/publications/superiority-of-external-attentional-focus-for-motor-performance-a/
- McKay et al. 2024 (Psych Bull): https://experts.mcmaster.ca/display/publication3486012 ; https://raw.github.com/cartermaclab/carterlab-papers/main/2024_mckay-etal_reporting-bias-not-external-focus-a-robust-bayesian-meta-analysis-and-systematic-review-of-the-external-focus-of-attention.pdf
- McKay et al. 2025 (IRSEP) enhanced expectancies/autonomy reanalysis: https://experts.mcmaster.ca/scholarly-works/3159192 ; https://raw.github.com/cartermaclab/carterlab-papers/main/2023_mckay-etal_the-combination-of-reporting-bias-and-underpowered-study-designs-has-substantially-exaggerated-the-motor-learning-benefits-of.pdf
- Grgic, Mikulic & Mikulic 2021 (Sports): https://vuir.vu.edu.au/42840/ ; https://doaj.org/article/3dcd146c2b8243a2b60868e3171b4e02
- Grgic & Mikulic 2022 muscular endurance: https://vu-9.eprints-hosting.org/43245/1/Effects%20of%20Attentional%20Focus%20on%20Muscular%20Endurance%20A%20Meta-Analysis.pdf
- Schoenfeld et al. 2018 (EJSS): https://pubmed.ncbi.nlm.nih.gov/29533715/

Resistance-training feedback
- Weakley et al. 2023 (Sports Med): https://link.springer.com/article/10.1007/s40279-023-01877-2 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC10432365/
- Weakley et al. 2019 (JSCR) adolescent back squat visual feedback: https://pure.hud.ac.uk/en/publications/visual-feedback-attenuates-mean-concentric-barbell-velocity-loss-/
- Verbal encouragement: https://research.edgehill.ac.uk/en/publications/a-call-to-action-towards-an-evidence-based-approach-to-using-verb-2/ ; https://lida.sport-iat.de/ta/Record/4095034?lng=en ; https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4473096/

Modality and sonification
- Sigrist et al. 2013: https://www.pubmed.gov/23132605/ ; https://www.doi.org/10.3758/S13423-012-0333-8
- Sigrist et al. 2015 (Exp Brain Res): https://doc.rero.ch/record/333015?ln=en
- Schaffert et al. 2019: https://www.frontiersin.org/articles/10.3389/fpsyg.2019.00244/full
- van Breda et al. 2017 vibrotactile review: https://bmjopensem.bmj.com/content/3/1/e000216

Latency
- van Vugt & Tillmann 2014: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3911931/
- Frontiers Hum Neurosci 2015: https://www.frontiersin.org/journals/human-neuroscience/articles/10.3389/fnhum.2015.00688/pdf
- Frontiers Psychol 2012: https://www.frontiersin.org/articles/10.3389/fpsyg.2012.00061/full
- ACM 2024 action-to-sound latency JND: https://epub.uni-regensburg.de/59003/3/3678299.3678331.pdf

Cue fatigue
- BMC Nursing 2025 scoping review: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12181921/
- Frontiers Digital Health 2022 systematic review: https://www.frontiersin.org/journals/digital-health/articles/10.3389/fdgth.2022.843747/full

HCI / automated coaching
- YouMove (UIST 2013): https://www.research.autodesk.com/publications/youmove-enhancing-movement-training-with-an-augmented-reality-mirror/ ; https://research.autodesk.com/app/uploads/2023/03/youmove-enhancing-movement-training.pdf_rec4sI8h0lU7O1y7N.pdf
- Kaia Motion Coach (JMIR 2021): https://www.jmir.org/2021/7/e26658/PDF ; https://pmc.ncbi.nlm.nih.gov/articles/PMC8317029
- OffiStretch (Visual Computer 2024): https://repositum.tuwien.at/bitstream/20.500.12708/205611/1/Adolf-2024-VISUAL%20COMPUTER-vor.pdf
- BlazePose tele-exercise: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11013996/
- Home physio user expectations (CEUR-WS): https://ceur-ws.org/Vol-4266/paper14.pdf

Accessibility
- Eyes-Free Yoga (ASSETS 2013): https://iro.uiowa.edu/esploro/outputs/conferenceProceeding/Eyes-free-yoga-an-exergame-using-depth/9984259470902771 ; https://depts.washington.edu/chilllab/research/eyes-free-yoga
- Eyes-Free Yoga real-world evaluation (secondary summary): https://a11y-paradise.onrender.com/reviews/69a48a404fede54aac9f09c3
- Rector et al. 2015 stakeholder study (secondary summary): https://a11y-paradise.onrender.com/reviews/69c93997fb73a085be7c6cab
- PunchPulse (ASSETS 2025, arXiv): https://arxiv.org/html/2508.02610v1
- Peloton accessibility talk (industry): https://www.deque.com/axe-con/wp-content/uploads/2021/12/Setting-Accessibility-in-Motion-at-Peloton-a.pdf
- HaptStarter (IJHCS 2023): https://www.open-access.bcu.ac.uk/15345/
- Haptic feedback for hearing-impaired training review (MTI 2024): https://www.mdpi.com/2414-4088/8/1/1
- NCHPAD practitioner guidance: https://nchpad.org/?p=381
- WCAG 1.4.2 Audio Control: https://www.w3.org/WAI/WCAG21/Understanding/audio-control.html
- Apple HIG Accessibility: https://developer.apple.com/design/human-interface-guidelines/accessibility.md ; VoiceOver: https://developer.apple.com/design/human-interface-guidelines/voiceover.md

Also considered (not given full entries): Weakley et al. adolescent female jump-squat feedback study (small, n = 11); Bioengineering 2023 review of wearables for resistance training monitoring (https://doaj.org/article/2ee0c809b512430b9cb4432c210cb085); Kakebeeke 2013 review questioning external focus in rehabilitation (https://mdpi.com/2075-4663/1/2/37); Frontiers in Pediatrics 2024 review of feedback in children with DCD (no differences between feedback forms; https://frontiersin.org/articles/10.3389/fped.2024.1327445/full); UbiPhysio (arXiv preprint, not peer-reviewed; https://arxiv.org/pdf/2308.10526); RIT DHH mixed-reality exergame paper (venue not verified; https://sanzidamojibluna.github.io/pos_2025.pdf); CORO haptic fitness band (James Dyson Award design project, not research; https://www.jamesdysonaward.org/en-US/2025/project/coro-redefining-instructional-fitness).
