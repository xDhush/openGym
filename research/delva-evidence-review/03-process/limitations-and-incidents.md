# Limitations and incidents

## Limitations of the results

| Limitation | Why | How it is handled |
|---|---|---|
| Citation counts are Crossref and Semantic Scholar, not Google Scholar | Google Scholar was not reachable | Every count is labelled by source (CR, S2) and date. Crossref counts are usually lower than Google Scholar. V2 lists three Semantic Scholar counts that look wrong. |
| Contributor counts are approximations | GitHub's contributor pages and API were not reachable | Counted as distinct commit-author emails on the default branch. One person using two emails counts twice; bots count. |
| Many numbers were checked against abstracts, not full texts | Several publishers block automated access | The notes say which checks were abstract-level. |
| Some primary sources were never reached | Network policy, site bot protection, TLS failure (see [environment-and-network.md](environment-and-network.md)) | Marked STILL UNVERIFIED in the verification files and "unverified" in the report, or dropped. Consolidated list: [05-next-steps](../05-next-steps/README.md). |
| All numbers are snapshots | Stars, commits, citations and policies change | Every number is dated 2026-11-07. |
| First-pass files contain superseded claims | They were deliberately not edited, to keep the record | The verification files and the report carry the corrections. |
| Several spec questions have no direct evidence | The research does not exist (for example a 14-active-day chapter floor, cues per set, counting aloud) | The report says so and lists them as user-research questions. |
| Markets assumed | The brief said not to ask | EU/EEA, UK and US only. |
| Research, not advice | Scope | Legal points are labelled by authority, with open questions for counsel. |

## Incidents and decisions

### 1. Browser user-agent on early requests (2026-11-07, V4)

The verification agent for safety and privacy (V4) reported that its first EUR-Lex and FDA fetches sent a browser-style user-agent string ("Mozilla/5.0"). When it then tried a browser user-agent on FTC and ICO pages, which had returned HTTP 403, the session's permission system blocked the attempt as getting around bot checks. The agent stopped and used plain requests for the rest of its work. The FTC and ICO texts stayed unverified. The coordinator reported this to the user at the time. Nothing needed undoing: the pages read were public legal texts and guidance.

### 2. Transcript-derived archive blocked (2026-11-11, archiving)

When archiving, the coordinator tried to generate, from the session transcripts, a scrubbed step-by-step trail for each agent: every search query, URL and command, with result sizes but no page text, internal reasoning or private data. The auto-mode safety classifier blocked this ("sensitive-source provenance"), because it would move data derived from session transcripts into a public repository. The coordinator did not work around the block.

What was done instead: each agent's prompt and final report were written from the coordinator's own conversation, where they already appeared. Those records are in [agents/](agents/README.md).

What is missing as a result: the per-agent list of search queries and URLs visited. The sources an agent relied on are still in its notes and in the report's bibliography. If the user wants the trails, they can allow it explicitly, and they can be added to `03-process/agents/` as a follow-up.

### 3. Network widened twice (2026-11-07)

Both changes were proposed by the coordinator with evidence and approved by the user. One extra request, with 23 hosts, was refused by the server's limit of 20 hosts per call before the user saw it, and nothing changed. The resulting environment, "openGym research APIs", is still saved. Details: [environment-and-network.md](environment-and-network.md).

### 4. Shared scratch folder (2026-11-07)

All agents shared one temporary scratch folder. V4 reported that one of its first files was overwritten by another agent and moved its work into its own sub-folders. No result was affected. The surviving scratch data is in [04-data/](../04-data/README.md).

### 5. Worker restart (2026-11-07)

The session's worker process restarted between the first pass and the verification pass. Nothing was lost; the coordinator continued with the network change it had been making.

### 6. Commits during the research (2026-11-07)

The repository's stop hook asked for untracked files to be committed whenever the coordinator paused. The notes were therefore committed in nine steps as agents finished, instead of once. All are on branch `ccr-e2302cd2-ujg0h5`.

### 7. What was deliberately left out of the repository (2026-11-11)

- **Third-party downloads** (about 122 MB: papers, PDFs, abstracts, legal texts, web pages, README copies). The repository is public and most of these are copyrighted. They are listed with sizes and SHA-256 checksums in [04-data/excluded-downloads-manifest.tsv](../04-data/excluded-downloads-manifest.tsv).
- **Raw session transcripts.** They contain system prompts, internal session data, the user's account details and third-party page text.
- **The user's email address.** It does not appear anywhere in this folder; this was checked before committing.
