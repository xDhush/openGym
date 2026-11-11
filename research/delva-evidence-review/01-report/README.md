# 01-report: the answer

| File | Contents |
|---|---|
| [report.md](report.md) | The final report, 2026-11-07. About 23,600 words, 161 numbered sources, all access dates 2026-11-07. Title: "Measure the user, not the demographic". |
| [drafts/](drafts/) | The writer's six draft parts (p1 to p6), kept as working material. The final report was assembled from them and then edited; if a draft and the report differ, the report is the final word. |

## Section map

The report follows the brief's six-part "Output format" exactly, with a summary paragraph and a "Scope, assumptions and method" note at the top.

| Section | What it answers | Draft part |
|---|---|---|
| Summary paragraph and scope note | The headline answer; markets, dates, citation and contributor-count method; labels used | p1 |
| 1. Executive summary | One finding per area with its evidence strength; top 10 must-reads | p1 |
| 2. Area-by-area evidence, A to K | A table per area (name, type, what it is, why it matters for Delva, credibility, licence, ideas to borrow, limitations), then evidence strength and takeaways | p2 (A to C), p3 (D to F), p4 (G to K) |
| 3. Licence red flags | What Delva must not use directly in a commercial app, by code, weights, datasets, media and questionnaires | p5 |
| 4. Evidence on Delva's decisions | Verdicts on the 8-week minimum and four chapters, 14 active days, 3/4/5 days, 15 to 20 minute sessions, grouping by age and gender, sequence-based missed workouts, credit for shorter versions, chapter check-ins | p5 |
| 5. Gaps | Where no credible source exists; open questions for Delva's own user research | p5 |
| 6. Bibliography | 161 entries grouped by area, with links and access dates | p6 |

## How to read the labels in the report

- **Strong evidence**: systematic review or meta-analysis of trials, large RCT or megastudy, official guideline, binding legal text, or official product documentation for a fact about that product.
- **Weak evidence**: single or small study, preprint, observational or lab study far from Delva's setting, narrative review.
- **Opinion or industry practice**: consensus without systematic grading, store or vendor practice, commentary, or the report's own inference.
- **CR** and **S2**: citation counts from Crossref ("cited-by") and Semantic Scholar, both checked 2026-11-07. "S2 not obtained" means the Semantic Scholar API was rate-limited.
- **~N contributors**: distinct commit-author emails in the repository's git history, an approximation of GitHub's contributor count.
- **unverified**: the primary source could not be reached; the claim is reported but not asserted.

## How the report was built

The writer read the five verification files first and let them override the first-pass notes: corrected values were used, claims marked NOT FOUND were dropped, and claims still unverified were kept only with an explicit label. It was told not to add any source, number or quote that was not in the notes, and to write in plain English without em dashes. Its full prompt and its own summary of the result are in [03-process/agents/16-W-report-writer.md](../03-process/agents/16-W-report-writer.md).
