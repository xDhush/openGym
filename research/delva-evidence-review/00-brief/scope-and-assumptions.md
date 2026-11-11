# Scope and assumptions

The brief said: "Do not ask me clarifying questions. State your assumptions and continue." These are the assumptions and interpretations used, so a reader can see where the report could have gone differently.

## Assumptions made without asking

| Topic | Assumption | Effect |
|---|---|---|
| Launch markets | EU/EEA, UK and US. Switzerland noted only where cheap to check. | Privacy, discrimination and medical-device sections cover GDPR, UK GDPR, EU AI Act, EU MDR, FDA, FTC and US state laws (Illinois, Texas, Washington and others). Other markets are not covered. |
| Date | All checks dated 2026-11-07. | Stars, commit dates and citation counts are snapshots and will drift. |
| openGym | Used only as a comparison point (AGPL-3.0, 20,026 stars, last push 2026-11-06, checked 2026-11-07), as the brief asked. | No section analyses openGym. |
| "Group" in the spec | Read as the spec's content cell: program x starting level x 3/4/5 days, with age and gender as onboarding inputs. | Area E found that the content cells do not actually use age or gender. |
| Exercises in scope | Bodyweight moves typical of the spec: squats, lunges, push-ups and their regressions, planks, side planks, glute bridges, dead bugs, bird dogs, mountain climbers, jumping jacks, floor mobility. | Areas A to C judged accuracy and error taxonomies against these. |
| Usage setting | Novices training alone at home, phone on the floor or propped up, often several metres away, unable to read the screen mid-set. | Area D weighted audio and eyes-free evidence. |
| Legal status | Research, not legal or medical advice. | Legal findings are labelled by authority (binding law, official guidance, case law, industry practice, opinion), and open legal questions are listed for counsel. |

## How the credibility bar was applied

The brief's bar was applied as written. Where the environment prevented it, the gap is labelled rather than filled with a guess.

| Brief's requirement | How it was met | Gap |
|---|---|---|
| Repositories: 1,000+ stars, or company/lab with a peer-reviewed paper; active in 18 months or "archived but influential"; licence file | Checked for all 72 cited repositories in [V5](../02-notes/verification/V5_verify_repos_HK.md), including what each licence file actually says (not just GitHub's label). | None material. Exceptions (for example small official code of a key paper) are stated per row. |
| Report contributors per repository | Counted as distinct commit-author emails in each repository's git history. | GitHub's own contributor pages were not reachable, so counts are labelled as approximations. |
| Citation counts from Google Scholar or Semantic Scholar | Semantic Scholar counts where its API answered; Crossref "cited-by" counts for every paper with a DOI; both labelled by source and date. | Google Scholar was not reachable. Some Semantic Scholar requests were rate-limited and left blank. |
| Prefer systematic reviews, meta-analyses and RCTs for health claims | Each finding carries an evidence label: strong evidence, weak evidence, or opinion or industry practice. | Several spec questions (for example 14 active days, number of audio cues per set) have no direct evidence at all; the report says so. |
| Preprints only if highly cited, and labelled | Labelled. The verification pass found several "preprints" had since been published and relabelled them. | None. |
| Verify everything live; never invent | Claims were checked against primary sources where reachable. Anything that could not be checked is marked unverified or was dropped. | A short list remains unverified; see [05-next-steps](../05-next-steps/README.md). |
| Licences separately for code, weights and data | Done for every model, dataset and repository cited. | Some model weights and datasets state no licence at all; those are flagged as red flags, not assumed open. |
| At most 5 to 10 items per area | Each area table in the report has 9 or 10 items. | None. |

## What "verified" means here

- **Verified** means the claim was checked against a primary source the agent could open (the paper's abstract or full text, the licence file, the legal text, the official documentation), and the source is linked.
- **Abstract-level** checks are common: many numbers were confirmed in PubMed or publisher abstracts, not full texts. The notes say which.
- **Unverified** means the primary source could not be reached. Such claims are either labelled "unverified" in the report or left out.
