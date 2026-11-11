# 02-notes: the evidence behind the report

Fifteen notes files, about 110,000 words in total. They hold every source, number, licence finding and caveat the report draws on, usually in more detail than the report.

## How the two sets relate

1. **first-pass/** was written by ten research agents working in parallel on 2026-11-07. The cloud environment blocked many publisher, legal and API hosts at that point and the shared web-search budget ran out, so the first pass relied heavily on search excerpts and tagged much as unverified.
2. **verification/** was written by five agents after the network was widened. They checked the first-pass claims against primary sources, added citation counts and repository metadata, and gave each claim a verdict.

**When the two disagree, the verification file wins.** The first-pass files were deliberately left unedited, so they still contain claims that were later corrected or dropped. Always check the matching verification file before relying on a first-pass number.

| First-pass file | Area | Words | Checked by |
|---|---|---|---|
| [A_pose_estimation.md](first-pass/A_pose_estimation.md) | A. Real-time pose estimation on phones | 8,095 | [V1](verification/V1_verify_ABC.md) (claims), [V5](verification/V5_verify_repos_HK.md) (repos) |
| [B_form_assessment.md](first-pass/B_form_assessment.md) | B. Form assessment and error detection | 7,313 | V1, V5 |
| [C_rep_counting.md](first-pass/C_rep_counting.md) | C. Repetition counting and hold timing | 7,271 | V1, V5 |
| [D_feedback_motor_learning.md](first-pass/D_feedback_motor_learning.md) | D. Real-time feedback and motor learning | 6,873 | [V2](verification/V2_verify_DE.md) |
| [E_personalisation_grouping.md](first-pass/E_personalisation_grouping.md) | E. Personalisation, grouping and fairness | 8,911 | V2 |
| [F_program_design.md](first-pass/F_program_design.md) | F. Program design and bodyweight progression | 8,330 | [V3](verification/V3_verify_FG.md) |
| [G_adherence_behaviour.md](first-pass/G_adherence_behaviour.md) | G. Adherence, missed sessions, program structure | 7,972 | V3 |
| [HK_exercise_libraries_open_apps.md](first-pass/HK_exercise_libraries_open_apps.md) | H. Exercise libraries; K. Comparable open-source projects | 7,121 | V5 |
| [I_safety_screening.md](first-pass/I_safety_screening.md) | I. Safety and screening | 7,926 | [V4](verification/V4_verify_IJ.md) |
| [J_privacy_camera_health_data.md](first-pass/J_privacy_camera_health_data.md) | J. Privacy of camera and health data | 8,384 | V4 |

| Verification file | Covers | Words | Verdict counts (CONFIRMED / CORRECTED / NOT FOUND / STILL UNVERIFIED, as tagged in the file) |
|---|---|---|---|
| [V1_verify_ABC.md](verification/V1_verify_ABC.md) | Papers, model and dataset licences, claims in A, B, C; about 85 papers with citation counts | 5,903 | 36 / 10 / 3 / 13 |
| [V2_verify_DE.md](verification/V2_verify_DE.md) | Papers and claims in D, E; about 80 papers with citation counts | 6,947 | 47 / 9 / 0 / 17 |
| [V3_verify_FG.md](verification/V3_verify_FG.md) | Papers, guidelines and claims in F, G; Crossref counts for every DOI | 7,023 | 64 / 8 / 0 / 15 |
| [V4_verify_IJ.md](verification/V4_verify_IJ.md) | Papers, legal texts, regulator guidance and store policies in I, J; 27 papers with counts | 6,093 | 43 / 3 / 0 / 22 |
| [V5_verify_repos_HK.md](verification/V5_verify_repos_HK.md) | Metadata for all 72 cited repositories (A, B, C, H, K); papers and standards in H, K | 6,319 | 20 / 17 / 1 / 3 |

The verdict counts are occurrences of each word in the file, a rough guide to how much changed, not an exact tally of claims.

## Tags you will meet

The research agents did not all use the same tags. This is what each means.

| Tag | Used in | Meaning |
|---|---|---|
| [V] | B, G | Verified on 2026-11-07, usually from an abstract or official record (full text not always opened) |
| [PK] | B (and quoted in V1) | From the agent's prior knowledge, not re-checked in the session. Treat as a lead, not a fact, unless a verification file confirms it. |
| [NR] | G (and quoted in V3) | Not re-verified in the session. Same caution as [PK]. |
| V-full | J | Official page read in full |
| V-excerpt | J | Official page found, but wording seen only in a search excerpt |
| V-secondary | J | Only law-firm or other secondary summaries reached; not cited as authority |
| U | J | Unverified; the official link is given so counsel can pull the text |
| [Strong] / [Weak] / [Opinion/Industry] | A, I | Evidence strength, as defined in the brief |
| CONFIRMED | V1 to V5 | Checked against the linked primary source and correct |
| CORRECTED | V1 to V5 | Checked and wrong; the correct value is given |
| NOT FOUND | V1, V5 | The claim could not be found in the source it was traced to; recommended for dropping (the report dropped them) |
| STILL UNVERIFIED | V1 to V5 | The primary source could not be reached even in the verification pass |
| citation count not verified | first-pass files | Written before citation APIs were reachable; the verification files supply the counts |

## Things to know before quoting a note

- **Numbers are 2026-11-07 snapshots.** Stars, commit dates, citation counts and retention figures will drift.
- **File paths inside the notes are the old ones** (`/home/user/openGym/research_notes/...`). The files now live here; see the [overview](../README.md#where-things-used-to-be).
- **Contributor counts** in V5 are distinct commit-author emails from git history, not GitHub's displayed number.
- **Citation counts** come from Crossref and Semantic Scholar, which often differ from Google Scholar. V2 lists three Semantic Scholar counts that look wrong and should be read from Crossref instead.
