# 03-process: how the work was done

| File | Contents |
|---|---|
| [timeline.md](timeline.md) | What happened, in order, with times (UTC) and commits |
| [environment-and-network.md](environment-and-network.md) | The cloud environment, what the network blocked, what was allowed and when, rate limits |
| [limitations-and-incidents.md](limitations-and-incidents.md) | Known limits of the results, and everything that went wrong or needed a decision |
| [agents/](agents/README.md) | All 16 agents: prompts and final reports verbatim, with a roster |

## Method

The work used Claude Code's deep-research skill in a cloud session. One coordinating session planned the work, wrote every prompt, launched agents, managed the network and commits, and delivered the report. It did not research directly; the agents did.

### Phase 1: first pass (10 agents in parallel)

- The brief's eleven areas were split into ten tracks: one per area, with H (exercise libraries) and K (comparable open-source projects) combined because both are repository-heavy.
- Every prompt carried the same Delva context, the brief's credibility bar and rules, tooling tips for the restricted network, and a fixed notes format matching the report's table columns.
- Prompts also assigned the spec questions: 8 weeks and chapters to F and G; 14 active days to G; 3/4/5 days to F and G; session length to F and G; age and gender grouping to E; missed workouts to F and G.
- Assumed markets (EU/EEA, UK, US) were set because the brief said not to ask questions.

### Between phases: widening the network

- All ten first-pass agents reported the same problem: publisher, legal and API hosts were blocked, and the shared web-search budget ran out. None could collect citation or contributor counts.
- The coordinator proposed two network changes, and the user approved both: a new personal environment with six scholarly and code APIs, then twenty more journal, SDK-doc and legal-text hosts. Details: [environment-and-network.md](environment-and-network.md).

### Phase 2: verification (5 agents in parallel)

- **V1 to V4** each took two or three first-pass files. They checked every paper (title, venue, year, DOI, peer review), collected citation counts, and gave every priority claim a verdict with a primary-source link: CONFIRMED, CORRECTED, NOT FOUND or STILL UNVERIFIED.
- **V5** measured all 72 cited repositories (stars, last commit, contributor count from git history, and what each licence file actually says) and checked the H and K papers and standards.
- None of them edited the first-pass files. They wrote separate verification files.

### Phase 3: synthesis (1 agent)

- The writer read the verification files first and then the first-pass notes.
- It applied the rule "verification wins": corrected values were used, NOT FOUND claims were dropped, and unverified claims were labelled.
- It wrote the report in the brief's six-part structure, without adding any source not in the notes.

### Phase 4: archive (2026-11-11)

At the user's request, everything was moved into this folder and documented. No research was redone.

## Numbers

| Measure | Value |
|---|---|
| Agents | 16 (10 first pass, 5 verification, 1 writer) |
| Agent tool calls | 801 |
| Agent model tokens | about 3.96 million |
| Notes written | 15 files, about 110,000 words |
| Report | about 23,600 words, 161 sources |
| Repositories measured | 72 (71 GitHub, 1 GitLab) |
| Papers with citation counts | more than 200 across V1 to V5 (V1 about 85, V2 about 80, V4 27, V5 15, V3 every cited DOI) |
| Elapsed time, brief to report | about 1 hour 20 minutes (07:53 to 09:14 UTC, 2026-11-07) |
