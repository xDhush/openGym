# Delva evidence review (November 2026)

This folder holds a complete research project carried out on 2026-11-07 and archived here on 2026-11-11. It answers one question for **Delva**, a vision-guided home fitness app in development: which credible open-source projects and research papers matter for Delva's features and spec, and what should Delva learn from each?

It covers eleven areas, A to K: pose estimation on phones, form assessment, rep counting, audio feedback, personalisation, program design, adherence, exercise libraries, safety, privacy, and comparable open-source apps. Everything the work produced is here: the brief, the final report, all research notes, the record of every research agent, the working data, and an account of how the work was done and what went wrong.

This is documentation only. It is not part of openGym's code and changes nothing in the app. openGym appears in it only as a comparison point, as the brief asked.

## Start here

| If you want to... | Read |
|---|---|
| Get the answer | [01-report/report.md](01-report/report.md): the final report (about 23,600 words, 161 sources) |
| See what was asked | [00-brief/original-brief.md](00-brief/original-brief.md): the request, verbatim |
| Know what to do next | [05-next-steps/README.md](05-next-steps/README.md): open questions, unverified claims, how to resume |
| Check a specific claim | [02-notes/README.md](02-notes/README.md): the research notes, and how the verification pass corrected them |
| Understand how it was done | [03-process/README.md](03-process/README.md): method, timeline, agents, network, limitations |
| Re-run a measurement | [04-data/README.md](04-data/README.md): scripts, tables and API metadata |

## Status

| Item | State on 2026-11-11 |
|---|---|
| Research | Finished 2026-11-07. No research was redone when archiving. |
| Report | Final. Delivered to the user on 2026-11-07. |
| Numbers (stars, commits, citation counts) | Snapshots taken on 2026-11-07. They will drift. |
| Verification | Two passes: a first pass, then a verification pass against primary sources. A short list of legal texts, licences and figures could not be reached and is marked unverified (see [05-next-steps](05-next-steps/README.md)). |
| Advice | Research only. Not legal or medical advice. |

## The answer in one page

These are the report's main conclusions. The report gives the sources and evidence strength for each.

**Delva's spec decisions (29 Oct 2026 spec)**

| Decision | Verdict | Evidence |
|---|---|---|
| Sequence-based plan, missed workouts never become debt | Supported | Moderate to strong. Flexible scheduling beat fixed time slots; rewarding a return after a missed workout was the best of 54 interventions in a 61,293-person megastudy. |
| 3, 4 or 5 starting days a week | Supported | Strong that at least 2 strength days a week and weekly volume matter; weak for this exact menu. |
| 8-week minimum in 4 chapters | Supported as a first block | Weak to moderate. It sits inside the ACSM 2026 evidence base (programs of at least 6 weeks). Median retention in app studies is 5.5 days, so chapter 1 needs smaller milestones. |
| 14 active days per chapter | Untested | No study supports or contradicts it. A pacing rule, not a training need. |
| 15 to 20 minute sessions | Supported for strength; short on aerobic | Strong. Five 20-minute sessions make 100 minutes, below the 150-minute aerobic guideline. |
| Grouping users by age and gender | Challenged | Strong. Men and women make similar relative gains; WHO gives one recommendation for all adults 18 to 64; demographic grouping adds bias and legal risk. The content cells do not use either field. |
| Credit for approved shorter versions | Supported in principle | Moderate. Keep a small visible allowance; never let the camera alone decide "done". |
| End-of-chapter check-ins | Supported | Moderate. Add a light check-in in the first week. |

**Building blocks**

- **Pose model:** MediaPipe Pose Landmarker is the one option that works on iOS and Android with Apache-2.0 code and weights.
- **Form datasets:** every public dataset with form-error labels forbids or does not permit commercial use, so Delva must collect its own consented recordings to validate against.
- **Rep counting:** the only peer-reviewed phone study found about a one-rep error on five-rep sets.
- **Feedback rules:** the classic advice to ration feedback mostly shrinks to small or no effect once publication bias is corrected. The practical limit on audio cues is false alarms.
- **Privacy:** the larger exposure is check-ins, screening answers and workout logs (likely health data under EU case law), not the camera, as long as frames never leave the phone.

## Folder map

```
delva-evidence-review/
├── README.md                    this overview
├── 00-brief/                    what was asked
│   ├── original-brief.md        the request, verbatim
│   ├── scope-and-assumptions.md how the brief was interpreted
│   └── follow-up-requests.md    later requests from the user, verbatim
├── 01-report/                   the answer
│   ├── report.md                final report
│   └── drafts/                  the writer's six draft parts
├── 02-notes/                    the evidence behind the report
│   ├── first-pass/              10 notes files, one per research track (A to K)
│   └── verification/            5 files that checked the first pass against primary sources
├── 03-process/                  how the work was done
│   ├── timeline.md              what happened, in order
│   ├── environment-and-network.md
│   ├── limitations-and-incidents.md
│   └── agents/                  16 records: each agent's prompt and final report, verbatim
├── 04-data/                     working data: scripts, tables, API metadata, manifests
└── 05-next-steps/               open questions, unverified claims, how to resume
```

Each folder has its own README.

## How the work was done, in brief

1. **First pass.** Ten research agents ran in parallel, one per area (H and K shared one). Each wrote a notes file. Many sources were out of reach because of the cloud environment's network policy and a shared search budget, so a lot of claims were tagged unverified.
2. **Network widened.** With the user's approval, a personal cloud environment was created with scholarly APIs, journal sites, SDK docs and legal texts allowed.
3. **Verification pass.** Five agents checked every paper, licence and repository against primary sources, collected citation counts (Crossref and Semantic Scholar) and repository metadata (from git history), and marked each claim CONFIRMED, CORRECTED, NOT FOUND or STILL UNVERIFIED.
4. **Synthesis.** One writer agent read all fifteen notes files, used the verified values wherever the passes disagreed, and wrote the report in the brief's six-part structure.

Full detail: [03-process/README.md](03-process/README.md).

## Where things used to be

The work was first committed under different paths. They were moved here with `git mv`, so `git log --follow` still shows their history.

| Old path (commits c6a14d8d to 16d0aedc) | New path |
|---|---|
| `reports/Vision guided home fitness evidence.md` | `01-report/report.md` |
| `research_notes/Vision guided home fitness evidence/A_pose_estimation.md` to `J_privacy_camera_health_data.md` | `02-notes/first-pass/` (same file names) |
| `research_notes/Vision guided home fitness evidence/V1_verify_ABC.md` to `V5_verify_repos_HK.md` | `02-notes/verification/` (same file names) |

File paths written inside the notes and agent records are the old ones, as they were at the time.

## What is not in this folder, and why

| Not included | Why | Where it is |
|---|---|---|
| Third-party downloads (about 122 MB: papers, PDFs, abstracts, legal texts, web pages, README copies) | Copyright, and this repository is public. All are public sources that can be fetched again. | Each file is listed with its size and SHA-256 checksum in [04-data/excluded-downloads-manifest.tsv](04-data/excluded-downloads-manifest.tsv). |
| Raw session transcripts | They contain system prompts, internal session data and third-party page text, and this repository is public. | Only in the cloud session that did the work. |
| Step-by-step source trails (every search query and URL each agent used) | Generating them from the transcripts was blocked by the session's safety classifier when archiving, because it would copy session-transcript data into a public repository. | Can be added later if the user explicitly allows it. See [03-process/limitations-and-incidents.md](03-process/limitations-and-incidents.md). |
| The agents' internal reasoning | Not part of the work product. | Not kept. |

Everything an agent concluded is in its notes file and its final report (in `03-process/agents/`), and every source is linked from the notes and the report's bibliography.
