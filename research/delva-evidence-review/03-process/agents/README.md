# Agent records

Sixteen agents did the research, all of type "general-purpose", launched by one coordinating session. Each record below holds:

- the **prompt** the coordinator sent, verbatim, so the exact task, constraints and output format are known;
- the agent's **final report** to the coordinator, verbatim (its own summary of what it found, what it could not reach, and where it saved its notes);
- a short **"what changed afterwards"** note where a later agent corrected it.

The notes each agent wrote are in [02-notes/](../../02-notes/README.md). Paths inside the records are the paths at the time (`research_notes/...`, `reports/...`); see the [path map](../../README.md#where-things-used-to-be).

## Roster

Usage figures are from the session's completion notifications (tokens are the agent's total model tokens; duration is wall-clock time).

| # | Label | Role | Output | Tool calls | Tokens | Duration |
|---|---|---|---|---|---|---|
| 1 | [R-A](01-R-A-pose-estimation.md) | First pass, A: pose estimation | A_pose_estimation.md | 62 | 214,926 | 12.8 min |
| 2 | [R-B](02-R-B-form-assessment.md) | First pass, B: form assessment | B_form_assessment.md | 41 | 158,382 | 8.5 min |
| 3 | [R-C](03-R-C-rep-counting.md) | First pass, C: rep counting and holds | C_rep_counting.md | 50 | 171,272 | 9.7 min |
| 4 | [R-D](04-R-D-feedback-motor-learning.md) | First pass, D: feedback and motor learning | D_feedback_motor_learning.md | 40 | 162,712 | 7.3 min |
| 5 | [R-E](05-R-E-personalisation-grouping.md) | First pass, E: personalisation and grouping | E_personalisation_grouping.md | 41 | 176,507 | 9.7 min |
| 6 | [R-F](06-R-F-program-design.md) | First pass, F: program design | F_program_design.md | 53 | 207,976 | 11.5 min |
| 7 | [R-G](07-R-G-adherence-behaviour.md) | First pass, G: adherence and behaviour | G_adherence_behaviour.md | 31 | 163,911 | 9.3 min |
| 8 | [R-HK](08-R-HK-libraries-open-apps.md) | First pass, H and K: libraries and open apps | HK_exercise_libraries_open_apps.md | 85 | 200,097 | 13.2 min |
| 9 | [R-I](09-R-I-safety-screening.md) | First pass, I: safety and screening | I_safety_screening.md | 53 | 196,442 | 9.3 min |
| 10 | [R-J](10-R-J-privacy.md) | First pass, J: privacy | J_privacy_camera_health_data.md | 40 | 196,930 | 10.8 min |
| 11 | [V1](11-V1-verify-ABC.md) | Verification of A, B, C | V1_verify_ABC.md | 75 | 366,278 | 21.7 min |
| 12 | [V2](12-V2-verify-DE.md) | Verification of D, E | V2_verify_DE.md | 28 | 267,449 | 16.4 min |
| 13 | [V3](13-V3-verify-FG.md) | Verification of F, G | V3_verify_FG.md | 38 | 306,723 | 17.3 min |
| 14 | [V4](14-V4-verify-IJ.md) | Verification of I, J | V4_verify_IJ.md | 69 | 278,496 | 14.7 min |
| 15 | [V5](15-V5-verify-repos-HK.md) | Repository metadata (all areas); verification of H, K | V5_verify_repos_HK.md | 54 | 264,375 | 17.0 min |
| 16 | [W](16-W-report-writer.md) | Report writer | report.md | 41 | 627,547 | 21.9 min |
| | | **Total** | | **801** | **3,960,023** | |

## Shared parts of the prompts

The ten first-pass prompts share the same skeleton: the task line, a "Delva context" paragraph summarising the spec, an objective, key questions with seed leads, suggested sources, constraints (the credibility bar and reporting rules from the brief, tooling tips for the restricted network, the notes format), the output path, and an instruction to first read the research skill's researcher guide. The verification prompts add the newly allowed hosts and an exact method for citation counts (Crossref, then one Semantic Scholar batch request with retries), and require verdicts per claim.

The research skill's own guides (`researcher.md`, `report-writer.md`) were read by the agents but are part of the tool, not this project, so they are not copied here.
