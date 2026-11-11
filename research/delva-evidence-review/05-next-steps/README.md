# 05-next-steps: what is still open, and how to resume

Three kinds of follow-up remain: product decisions the evidence points to, questions only Delva's own user research can answer, and claims the research could not verify. The last section explains how to pick the work up again.

## 1. Spec adjustments the report suggests

These come from section 4 of the [report](../01-report/report.md#4-evidence-that-challenges-or-supports-delvas-current-decisions), where each has its sources and evidence strength.

| Spec rule | Suggested adjustment |
|---|---|
| 8-week minimum, 4 chapters | Add day-scale milestones inside chapter 1; have the next chapter and program ready at each boundary; never claim "habit in 8 weeks". |
| 14 active days per chapter | Show both counters (for example "work 9 of 12, days 10 of 14"); let early finishers do optional sessions that count as activity; test how users understand "active day". |
| 3/4/5 starting days | Keep. Consider an "N plus reserve" framing for 4 and 5 days; keep beginner 5-day cells lighter per session; treat frequency at check-ins as a volume decision. |
| 15 to 20 minute sessions | Keep. Prioritise multi-joint moves; say sessions "count toward" weekly activity; consider letting users log walks. |
| Grouping by age and gender | Use age only as the 18 to 64 eligibility gate; make gender optional and non-prescriptive; personalise on goal, measured level, days, preferences and observed response; audit outcomes by subgroup. |
| Missed workouts never become debt | Keep. Add an optional "when and where" plan and a warm return message; after long pauses (roughly 2 to 3 weeks, untested) offer a one-step-easier welcome-back session. |
| Credit for approved shorter versions | Give a small visible reserve per chapter; keep at least one hard set per main movement in short versions; allow one-tap count correction; never let form cues affect credit. |
| End-of-chapter check-in | Add a light first check-in after 3 workouts or 7 days; frame "fewer days" as fitting the plan to life; re-screen health at every check-in. |

## 2. Questions for Delva's own user research

The report lists fifteen, each tied to a spec rule and a suggested method: [report section 5, "Open questions Delva must answer with its own user research"](../01-report/report.md#open-questions-delva-must-answer-with-its-own-user-research). The ones that most affect the spec:

- Can users place the phone correctly without help, and how often does framing fail?
- After how many wrong cues do users mute feedback, and do they read silence as "perfect form"?
- Do users expect "10 lunges" per side or per pair, and is a one-tap count correction acceptable?
- Do early finishers feel blocked by the 14-day floor?
- Where exactly do users drop out: camera permission, space, first or second workout, or a chapter boundary?

The same section lists where no credible source exists at all (for example phone pose validation on floor exercises, an injury rate for home bodyweight training, trials of chapter structures). Those need Delva's own data.

## 3. Claims still unverified

The primary source for each of these could not be reached on 2026-11-07. The report labels them "unverified" or leaves them out. They should be checked before anyone relies on them.

### Legal texts and regulator guidance (for counsel)

| Item | Area | Blocked because |
|---|---|---|
| EDPB Guidelines 3/2019 on video devices (biometric data, household exemption) | J | `www.edpb.europa.eu` not on the allowlist |
| EDPB statement on smart glasses (reported October 2026): existence not confirmed | J | Same |
| ICO guidance on biometric recognition (February 2024) | J | `ico.org.uk` returned HTTP 403 |
| Illinois BIPA 740 ILCS 14 definitions and Public Act 103-0769 (SB 2979) | J | `www.ilga.gov` failed TLS verification |
| FTC Health Breach Notification Rule (16 CFR 318, 2024) and the Flo, GoodRx, BetterHelp, Premom actions | J | `www.ftc.gov` returned HTTP 403 |
| Washington My Health My Data Act (RCW 19.373) | J | `app.leg.wa.gov` blocked |
| Texas CUBI and the $1.4B Meta settlement | J | `texasattorneygeneral.gov` blocked |
| Colorado HB24-1130, CCPA/CPRA, Swiss nFADP, Nevada SB 370, Connecticut amendments | J | Not reached or not covered |
| EU Directive 2004/113/EC Art. 4(5) and Test-Achats (C-236/09) | E | EUR-Lex returned a bot-check page to that agent |
| EU MDR Art. 2(1) and Recital 19; MDCG 2019-11 Rev.1; UK MHRA software guidance | I | EUR-Lex empty response; `health.ec.europa.eu` and `gov.uk` blocked |
| UK Equality Act 2010 | E | Not searched (search budget ran out) |

Already confirmed (no action needed): GDPR Art. 4(13) to (15), 9, 22, 25, 35; EU AI Act definitions, Recital 18, Art. 5 and Annex III; Regulation (EU) 2026/1744 dates; CJEU C-184/20 and C-21/23; FDA General Wellness guidance (6 January 2026) and the 2022 software policy; Google Play health-app rules; Apple App Store guidelines. See [V4](../02-notes/verification/V4_verify_IJ.md). The privacy notes also list 13 open questions for counsel: [J_privacy_camera_health_data.md](../02-notes/first-pass/J_privacy_camera_health_data.md).

### Licences and terms (treat as not usable until read)

| Item | Area |
|---|---|
| PAR-Q+ (reported CC BY-NC-ND 4.0) and CSEP Get Active Questionnaire terms for use in software | I |
| QEVD, Fit3D, Countix and RepCount dataset licences | A to C |
| OpenPose commercial licence fee | A |
| Compendium of Physical Activities MET values: terms of use | H |
| Gym visual terms; ExerciseDB terms of use | H |
| BCT Taxonomy v1 terms of use (its successor, the BCT Ontology, is CC BY 4.0) | G |
| HL7 FHIR Physical Activity IG: published version and licence | H |

### Figures and details

| Item | Area | Note |
|---|---|---|
| RecoFit "within plus or minus 1 rep, 93%" | C | ACM and Microsoft PDF unreachable |
| MM-Fit rep-counting numbers | C | ACM full text unreachable |
| The Sony AI fairness paper (AAAI-23 workshop) | A | No record found |
| Lifting study "MediaPipe error up to 67.1 degrees" | A | Abstract gives 9.9 to 31.2 degrees sagittal RMSE |
| Mottola 2019 pregnancy guideline: contraindications and reasons to stop | I | BJSM returned 403; the conflict in the notes is still open |
| Silbernagel 2007 pain rule (up to 5/10, settles by next morning) | I | Not in the abstract |
| Keogh and Winwood "2 to 4 injuries per 1000 h" | I | Secondary summary only |
| PAR-Q+ "about 1% vs 15%" referral rates | I | Replaced in the report by measured figures from Whitfield 2017 |
| Eyes-Free Yoga participant details; YouMove "factor of 2"; Audio Mostly 2024 latency numbers | D | ACM DL unreachable |
| Galesic and Bosnjak 2009 start rates; Wilcox CHI 2023 participant numbers | E | OUP and ACM unreachable |
| UK CMO 2019 wording; Ebben 2011 push-up percentages; Garber 2011 10 to 30 s holds | F | gov.uk and LWW unreachable |
| Trost 2002 "most consistent barrier" wording; Cochran and Tesser 1996 | G | Abstract does not say it; book chapter |

Each item has its row, reason and link in the verification files (search for STILL UNVERIFIED): [V1](../02-notes/verification/V1_verify_ABC.md), [V2](../02-notes/verification/V2_verify_DE.md), [V3](../02-notes/verification/V3_verify_FG.md), [V4](../02-notes/verification/V4_verify_IJ.md), [V5](../02-notes/verification/V5_verify_repos_HK.md).

## 4. How to resume

**Environment.** The cloud environment "openGym research APIs" (personal, for `xDhush/openGym`) still has the scholarly APIs and twenty primary-source hosts allowed. Starting a new session on it gives the same access. To close most remaining gaps, add these hosts: `www.edpb.europa.eu`, `app.leg.wa.gov`, `curia.europa.eu`, `health.ec.europa.eu`, `www.gov.uk`, `assets.publishing.service.gov.uk`, `journals.lww.com`, `dl.acm.org`, `hfjc.library.ubc.ca`, `eparmedx.com`, `csep.ca`, `pacompendium.com`. Some sites (FTC, ICO, BJSM) block automated readers whatever the allowlist; those need a person with a browser or counsel.

**Citation counts.** Crossref works without a key: `curl -s "https://api.crossref.org/works/<DOI>"` and read `is-referenced-by-count`. Semantic Scholar needs a single batch request with retries (see [04-data/scripts/](../04-data/README.md)); an API key from Semantic Scholar would remove the rate limit. Google Scholar was never reachable.

**Repository numbers.** Re-run the logic in `04-data/scripts/scripts__search.sh` (stars, push date, licence through `gh` repository search) and `scripts__measure.sh` (treeless bare clone, distinct author emails, last commit). The scripts still point at the old scratch folder; change the path first.

**Updating the report.** Add new evidence as a new verification file in `02-notes/verification/` rather than editing the old notes, then revise `01-report/report.md` and note the change and date at the top. Keep the "verification wins" rule and the evidence labels.
