# V5: repository metadata for all areas, and verification of H, K

| Field | Value |
|---|---|
| Phase | 2, verification pass (5 tracks in parallel, after the network was widened) |
| Launched | 2026-11-07, about 08:29 UTC |
| Finished | 2026-11-07, about 08:46 UTC |
| Output | [02-notes/verification/V5_verify_repos_HK.md](../../02-notes/verification/V5_verify_repos_HK.md) |
| Checks | Repositories in A, B, C and HK; papers and standards in HK_exercise_libraries_open_apps.md |

## Prompt sent by the coordinator (verbatim)

````text
Verify GitHub/GitLab repository metadata for every repository cited across the notes of a research brief, and verify the papers and standards in the exercise-library / open-apps notes (Areas H and K).

Objective: A research brief for Delva (a commercial vision-guided home fitness app; reuses ideas, not code; licences matter for direct commercial use and red flags) produced notes in /home/user/openGym/research_notes/Vision guided home fitness evidence/. The brief requires, for every repository: stars, last commit date, number of contributors, organisation, licence, and date checked (2026-11-07). The first pass could not get contributor counts or some licences, and could not reach several H/K sources. Your job: (1) a complete, verified repository metadata table for all repos cited in A_pose_estimation.md, B_form_assessment.md, C_rep_counting.md and HK_exercise_libraries_open_apps.md; (2) a verification pass on the papers, standards and unverified claims in HK_exercise_libraries_open_apps.md. Read those four files first (for A, B and C you only need the repository list). Do not re-analyse openGym (github.com/DuarteSantos8/openGym); just include its metadata row as the comparison point.

Key questions:
- For each repo: full name, organisation/owner type (company, lab, individual), stars, last push date and last commit date on the default branch, archived flag, licence (SPDX from GitHub plus what the LICENSE file actually says, noting any extra terms such as "Anti 996", custom non-commercial or attribution clauses), whether model weights or data have separate licences stated in the README, and contributor count.
- Contributor counts: GitHub's API for repo internals is not available here, so use git history: for each repo run, in a fresh scratch directory under /tmp/claude-0/-home-user-openGym/e7749b12-3cc6-5fc0-a19a-8932ce960682/scratchpad/repos/, `git clone --bare --filter=tree:0 --quiet https://github.com/OWNER/NAME.git NAME.git` then `git -C NAME.git log --format='%aE' | sort -u | wc -l` (distinct author emails) and `git -C NAME.git log -1 --format=%cI` (last commit date). Label this "distinct commit-author emails on default branch (approximates GitHub's contributor count)". Also try WebFetch on https://github.com/OWNER/NAME to read GitHub's own contributor number if the page shows it; report both when available. Delete each bare clone after measuring to save disk. For GitLab (e.g., gitlab.com/enjoyingfoss/feeel) try the same git commands over https.
- Stars/push/licence: gh api -X GET search/repositories -f q='repo:OWNER/NAME' --jq '.items[0] | {full_name, stargazers_count, pushed_at, archived, license: .license.spdx_id, owner: .owner.login, owner_type: .owner.type}' (use gh only for search endpoints like this).
- H/K verification: Compendium of Physical Activities (Ainsworth et al. 2011 MSSE; 2024 Adult Compendium, Herrmann et al., J Sport Health Sci) — bibliographic details, citation counts, and terms of use if stated in the papers (PMC copies); PACO (Kim et al. 2019?) and OPE ontology papers; EXMO (Exercise Medicine Ontology) paper venue and licence; MARS app-quality scale (Stoyanov et al. 2015 JMIR mHealth uHealth); Modave et al. 2015 (content of popular fitness apps vs guidelines, JMIR mHealth uHealth?); Bondaronek et al. 2018 (quality and BCTs of physical-activity apps); OpenCap (Uhlrich et al. 2023 PLOS Comput Biol, DOI 10.1371/journal.pcbi.1011462); Pose2Sim and Sports2D JOSS papers; Apple HealthKit HKWorkoutActivityType (official developer.apple.com page — confirm what HealthKit records about exercises/sets/reps) and Android Health Connect ExerciseSegment types and the repetitions field (developer.android.com); HL7 FHIR Physical Activity IG version (try build.fhir.org / hl7.org; else STILL UNVERIFIED).
- Citation counts for every paper in HK: (1) Crossref: curl -s "https://api.crossref.org/works/<DOI>" | jq '.message | {title, "container-title", issued, "is-referenced-by-count"}', or https://api.crossref.org/works?query.bibliographic=<url-encoded title>&rows=3&select=DOI,title,container-title,issued,is-referenced-by-count. (2) Semantic Scholar via ONE batch request: curl -s -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,year,venue,citationCount" -H 'Content-Type: application/json' -d '{"ids":["DOI:10.xxxx/yyy"]}' — on HTTP 429, wait 15-30 s and retry up to 6 times. Label counts by source and date. Never estimate. Do not put any email address in API requests.

Suggested sources:
- github.com (git over https and web pages), gitlab.com, raw.githubusercontent.com, api.crossref.org, api.semanticscholar.org, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, journals.plos.org, www.jmir.org, mhealth.jmir.org, developer.apple.com, developer.android.com

Constraints:
- Network: these hosts are allowed for curl (Bash) and WebFetch: github.com, raw.githubusercontent.com, api.crossref.org, api.semanticscholar.org (rate-limited), export.arxiv.org, eutils.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, arxiv.org, www.jmir.org, mhealth.jmir.org, link.springer.com, bjsm.bmj.com, www.mdpi.com, www.frontiersin.org, journals.plos.org, developer.apple.com, developer.android.com, developers.google.com, ai.google.dev. api.github.com is reachable but refuses repos not attached to this session — don't use it. api.openalex.org has no budget left. Other hosts (wger.de, wger.readthedocs.io, f-droid.org, pacompendium.com, bioportal.bioontology.org, joss.theoj.org) may be blocked — try once, then mark STILL UNVERIFIED. WebSearch may have a small budget: prefer direct fetches and git/gh commands.
- Today is 2026-11-07. Never invent a repo, number or licence; every row needs a URL. If something cannot be verified, say so. Do not edit the original notes files. Clean up the scratch clones when done.
- Output format (this overrides the researcher.md notes template where they differ). Keep it concise, mostly tables, under about 6,000 words: (1) Repository metadata table: repo URL | notes file(s) | owner/org and type | stars | last push | last commit | archived | contributors (git-email count; GitHub page count if seen) | code licence (SPDX + extra terms) | weights/data/media licence if stated | meets credibility bar? (>=1,000 stars or lab/company + peer-reviewed paper; active since May 2025 or archived-but-influential) | date checked. (2) Citation table for HK papers: short ref | DOI | verified title/venue/year | Crossref cited-by | Semantic Scholar count. (3) Claim checks for HK: claim | verdict CONFIRMED / CORRECTED / NOT FOUND / STILL UNVERIFIED | primary-source URL. (4) Licence red flags discovered or corrected.

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/V5_verify_repos_HK.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I verified the metadata for all 72 cited repos (71 on GitHub plus Feeel on GitLab) and checked the H/K papers and standards. The notes are saved at `/home/user/openGym/research_notes/Vision guided home fitness evidence/V5_verify_repos_HK.md`. They come to about 6,300 words, slightly over the 6,000 target; most of the excess is URLs. The original notes were not edited, and every scratch clone was deleted.

**What is in the file**
1. **Repository table**, split into A, B, C and H/K. Each row has stars, last push, last commit on the default branch, archived flag, contributors, the GitHub licence plus what the licence file actually says, any weights/data/media licence the repo states, a credibility-bar verdict and the date checked (2026-11-07).
   - Contributor counts are distinct commit-author emails, labelled as approximating GitHub's count.
   - GitHub's own contributor number could not be read: the proxy blocks github.com web pages (403), and WebFetch showed the "Contributors" heading with no number. The commit count WebFetch did show for wger (9,769) matches the git count exactly.
2. **Citation table** for 15 papers, with Crossref and Semantic Scholar counts (Semantic Scholar answered on the 4th try after rate-limit errors). Examples: Compendium 2011 has 5,699 / 5,736; MARS 2,165 / 2,128; OpenCap 436 / 435; EXMO 8 / 6; QEVD 6 / 31.
3. **About 40 claim checks**, each marked CONFIRMED, CORRECTED, NOT FOUND or STILL UNVERIFIED, with a primary-source URL.
4. **Licence red flags.**

**New red flags (from reading the licence files)**
- **Fitness-AQA dataset:** CC BY-NC 4.0, and it explicitly may "not be included as part of any commercial software package or product". The code has no licence at all.
- **EgoExo-Fitness dataset:** the licence agreement bans "Testing commercial systems" and must be signed by an advisor or professor. Delva cannot use it even for internal benchmarking.
- **FLEX (area B):** the repo was renamed to HaoYin116/MyoMechanix. Its README says the dataset is for research only, with no commercial use and no redistribution.
- **AlphaPose:** GitHub shows NOASSERTION, but the licence file is non-commercial research only, the same as OpenPose.
- **Pose2Sim:** the README says its Whole_body model is non-commercial "due to one of its training datasets".
- **MMPose:** the EDPose component is under "IDEA License 1.0", with a warning about commercial use.
- **TransRAC:** the licence file is Apache-2.0, but the README badge says "Anti 996".
- **Bodyweight Fitness:** the licence is CPAL-1.0 (copyleft with an attribution requirement), not NOASSERTION.

**Corrections that loosen or clarify earlier findings**
- **Microsoft wearable dataset (area C):** the licence is CDLA-Permissive-2.0, which allows commercial use, not NOASSERTION.
- **EXMO:** the ontology file itself declares CC BY 4.0, so the earlier "licence mismatch" was only GitHub's missing licence file. The GitHub account is a personal account, not an organisation.
- **OpenCap:** the pipeline supports HRNet as well as OpenPose. The paper discloses that two authors co-founded Model Health, Inc., which handles commercial use.

**H/K verification results**
- **Compendium:** 2011 and 2024 papers confirmed. The 2024 edition has 22 major headings and 1,114 activity codes. Its terms of use are STILL UNVERIFIED because pacompendium.com did not respond.
- **PACO:** confirmed, *J Med Internet Res* 21(4):e12776 (2019); 225 classes; listed on BioPortal.
- **OPE:** now identified as the "Ontology of Physical Exercises" on BioPortal, described in the EXMO paper (634 classes, none with definitions). No paper of its own was found.
- **EXMO:** published in *Scientific Data* 11:1349 (2024); 434 classes. It has no structured contraindications or progression chains.
- **MARS, Modave 2015, Bondaronek 2018:** confirmed, with their key figures quoted in the notes.
- **OpenCap:** the paper is 2023, not the 2022 shown in the repo README.
- **HealthKit:** the official page confirms 84 activity types and no sets or reps data. It also has an eighth event type, `pauseOrResumeRequest`, that the earlier notes missed.
- **Health Connect:** 68 segment types and the repetitions field confirmed. The weight, set-index and effort-rating fields arrived in connect-client 1.2.0-alpha03 (March 2026). The latest stable release, 1.1.0, does not have them.
- **HL7 FHIR Physical Activity IG:** version 1.0.1 (STU1) is confirmed from the GitHub repo only. The published version and its licence are STILL UNVERIFIED because hl7.org and build.fhir.org did not respond.

**Activity corrections**
- **Feeel:** the last commit is 2024-12-26. The 2026-08-25 date in the earlier notes is GitLab "activity", which counts things other than commits, so Feeel is stale.
- **Everkinetic:** last commit 2022-02-20.
- **HL7 physical-activity repo:** last commit 2024-03-12.
- **Young repos with high stars:** exercises-dataset (23,604 stars, 12 commits, created 2026-03-18), workout-guide and GymMane. Their stars say nothing about maintenance or where the data came from.

**Still unverified:** the PACO and OPE pages on BioPortal, the QEVD dataset licence, ExerciseDB's terms of use, Gym visual's terms, Feeel's F-Droid listing, wger.de exercise counts and the ExpertAF venue. Five apps named in the earlier notes without an owner (SparkyFitness, OpenNutriTracker, Endurain, Dreeve, open-wearables) were not looked up.
````

## Note

The per-repository measurements behind the table (one row and the licence file per repository, plus the search and clone summaries) are kept in [04-data/tables/](../../04-data/README.md), with names starting `meta__`.
