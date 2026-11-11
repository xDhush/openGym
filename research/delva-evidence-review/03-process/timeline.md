# Timeline

All times are UTC. 2026-11-07 times come from commit timestamps, file times and the session's notifications. Plain times are accurate to about a minute; times marked "about" are estimates from the order of events. Branch: `ccr-e2302cd2-ujg0h5` on `xDhush/openGym`.

## 2026-11-07: research

| Time | Event |
|---|---|
| 07:53 | Brief received. The coordinator loads the deep-research skill. |
| 07:54 | Tooling checks. GitHub repository search works through `gh`. Direct calls to the Semantic Scholar API and the GitHub REST API are refused by the network proxy (HTTP 403). The proxy status shows a limited network with no extra hosts allowed. |
| 07:56 | Folders created: `research_notes/Vision guided home fitness evidence/` and `reports/`. Title chosen: "Vision guided home fitness evidence". |
| 08:00 | Ten first-pass agents launched in parallel (R-A to R-J, see [agents](agents/README.md)). |
| 08:07 | R-D (feedback) finishes first. Every finished agent reports blocked hosts and an exhausted shared search budget. |
| 08:08 | The repository's stop hook asks for untracked files to be committed. Commit `c6a14d8d` (area D notes), pushed; branch created on the remote. |
| 08:08 | R-B (form assessment) finishes. The coordinator checks the cloud environment (Default, limited network, no extra hosts) and reads the network documentation. |
| about 08:09 | **Environment created** with the user's approval: "openGym research APIs" (personal), with six API hosts. This session switches to it. Tests: Crossref answers; Semantic Scholar and OpenAlex answer "rate limit"; the GitHub API refuses repositories not attached to the session; `git ls-remote` works on public repositories. |
| 08:09 to 08:13 | R-G, R-I, R-E, R-C, R-J, R-F, R-A and R-HK finish. |
| 08:11 | Commit `dc079ba9` (B, C, E, G, I notes), after the stop hook asks again. |
| 08:12 | Commit `fdcff618` (F notes). |
| about 08:15 | Probe: arXiv, PubMed Central, Google AI docs, JMIR and EUR-Lex are refused by the proxy; Apple and Android developer sites are allowed. This confirms the agents' page fetches go through the same proxy. |
| about 08:20 | First request to add 23 hosts is refused by the server before reaching the user (limit of 20 hosts per call). Nothing changed. |
| about 08:20 | **Session worker restarted.** The coordinator resumes where it left off. |
| about 08:21 | **Twenty hosts added** to the environment with the user's approval (journals, Google SDK docs, Google Play help, EUR-Lex, EDPB, ICO, FTC, FDA, Illinois legislature). Test: arXiv, PMC, Google AI docs and EUR-Lex now load. |
| 08:26 | Commit `96f25e1c` (A, H/K notes). |
| 08:29 | Five verification agents launched in parallel (V1 to V5). |
| 08:43 | V4 (safety and privacy) finishes. It reports that it sent a browser-style user-agent on a few early requests, and was then blocked by the permission system when it tried that on FTC and ICO pages (see [limitations-and-incidents.md](limitations-and-incidents.md)). |
| 08:44 | Commit `51838cff` (V4). |
| 08:45 to 08:47 | V2, V5 and V3 finish. Commits `dc3eea2c` (V2) and `80cc16b8` (V5, with V3). |
| 08:50 | V1 (pose, form, counting) finishes, last of the verification pass. |
| 08:51 | Commit `a9334e8e` (V1). Report writer (W) launched. |
| 09:14 | Report finished, checked by the coordinator, committed (`16d0aedc`), pushed and sent to the user with a summary. |

## 2026-11-11: archive

| Event |
|---|
| The user asks for everything to be committed to a new folder with sub-folders, index, explanation docs and overview, with no context lost. |
| The repository is confirmed to be public (`xDhush/openGym`, a fork). |
| Notes and report moved with `git mv` to `research/delva-evidence-review/`. |
| The agents' own scratch data (scripts, tables, API metadata, licence files read from repositories, the writer's draft parts) copied in; 356 third-party downloads (about 122 MB) listed in a checksum manifest instead of committed. One binary licence agreement found among the tables was moved to the manifest as well. |
| An attempt to generate the step-by-step source trails from the session transcripts is **blocked by the auto-mode safety classifier** ("sensitive-source provenance"). Not worked around. The agent prompts and final reports are written from the coordinator's own conversation instead. |
| Index, overview and explanation documents written; everything committed and pushed. |
