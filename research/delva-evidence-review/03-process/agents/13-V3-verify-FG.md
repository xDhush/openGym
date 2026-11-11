# V3: verification of areas F, G (program design and adherence)

| Field | Value |
|---|---|
| Phase | 2, verification pass (5 tracks in parallel, after the network was widened) |
| Launched | 2026-11-07, about 08:29 UTC |
| Finished | 2026-11-07, about 08:47 UTC |
| Output | [02-notes/verification/V3_verify_FG.md](../../02-notes/verification/V3_verify_FG.md) |
| Checks | F_program_design.md, G_adherence_behaviour.md |

## Prompt sent by the coordinator (verbatim)

````text
Verify the papers, guidelines and key unverified claims in the program-design and adherence notes (Areas F and G) of a research brief.

Objective: A research brief for Delva (a commercial vision-guided home fitness app; no equipment; adults 18-64; 15-20 min sessions; 3/4/5 days a week; programs of at least 8 weeks in 4 chapters, each chapter needing its work done AND at least 14 active days; missed workouts never become debt; end-of-chapter check-ins) produced notes in /home/user/openGym/research_notes/Vision guided home fitness evidence/. The first pass had blocked hosts and an exhausted search budget, so many items are tagged unverified ([PK], [NR], "from abstract only", "citation count not verified"). Your job is a focused verification pass on F_program_design.md and G_adherence_behaviour.md — not new broad research. Read those two files first.

Key questions:
- Citation counts and bibliographic verification for EVERY paper and guideline cited in F and G (title, venue, year, DOI, design, peer-reviewed or preprint).
- Priority claim checks (confirm, correct or mark not found):
  - F: the new ACSM resistance-training position stand (Currier et al., MSSE 2026;58(4):851-872, DOI 10.1249/mss.0000000000003897): existence, title, abstract findings, and any per-goal prescription numbers available in the abstract or a PMC copy; ACSM 2009 progression-models stand novice numbers (PubMed abstract); WHO 2020 guideline numbers for adults 18-64 and the removal of the 10-minute bout (Bull et al. BJSM 2020, bjsm.bmj.com or PMC); US PAG 2018 numbers; UK CMO 2019 wording; Momma et al. 2022 BJSM (30-60 min/week); Grgic 2018; Schoenfeld 2016/2017 frequency and volume meta-analyses; Pelland et al. 2026 Sports Medicine (frequency effect for strength only?); Currier 2023 network meta-analysis; Kotarsky 2018; Kikuchi & Nakazato 2017; Calatayud 2015; Lasevicius 2018; Halperin et al. 2022 Sports Medicine (RIR accuracy ~1 rep; worse >12 reps and in novices); Bell et al. 2023 deload Delphi; Coleman et al. 2024 deload RCT; Milanovic et al. 2015 (+5.5 mL/kg/min); Weston 2014; Biddle & Batterham 2015; Konrad et al. 2024 (77 studies; dose not a moderator); Afonso et al. 2021; Thomas et al. 2018 stretching dose; Bosquet et al. 2013 detraining; Ogasawara et al. 2011 and 2013 (3-week breaks); Van Hooren & Peake 2018 cool-down; Ebben 2011 push-up load percentages; the attributions PMC5712461 (Steele et al. 2017 PeerJ?) and PMC10199130 (commentary on Momma overlap?).
  - G: Pratap et al. 2020 npj Digital Medicine (median retention 5.5 days, range 2-26); Meyerowitz-Katz et al. 2020 JMIR (pooled dropout 43%; 49% real-world, 40% RCTs; vs 47% on a preprint page); Milkman et al. 2021 Nature megastudy (61,293 members; 54 interventions; best = rewards for returning after a missed workout; share of effects persisting after 4 weeks); Beshears et al. 2021 (flexible vs fixed-window incentives); Silverman & Barasch 2023 J Consumer Research (broken streaks); Sharif & Shu 2017 (exact published title; "emergency reserves"); Lally et al. 2010 EJSP (median 66 days, range 18-254; the "missing one opportunity did not materially affect the habit formation process" finding — check the paper text); Singh et al. 2024 (59-66 days; 4-335); Kaushal & Rhodes 2015 (>=4 sessions/week for 6 weeks); Michie et al. 2009 Health Psychology (0.42 vs 0.26); Howlett et al. 2019; Laranjo et al. 2021 BJSM (~1,850 steps/day); Mazeas et al. 2022 JMIR (gamification; g = 0.15 at follow-up); Patel et al. 2019 JAMA Internal Medicine STEP UP; Klasnja et al. 2019 HeartSteps (+14% p = .06; +24%); Epton et al. 2017 venue (J Consult Clin Psychol vs Health Psychology); Dishman's "~50% drop out within 6 months" (find a primary or authoritative source, or recommend dropping); Trost et al. 2002 MSSE; Nahum-Shani et al. 2018; Hardeman et al. 2019 IJBNPA; McEwan et al. 2016; Michie et al. 2013 BCTTv1 and its terms of use; Phillips & Gardner 2016.

Suggested sources:
- api.crossref.org, api.semanticscholar.org, eutils.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, bjsm.bmj.com, link.springer.com, www.jmir.org, mhealth.jmir.org, www.frontiersin.org, www.mdpi.com, journals.plos.org

Constraints:
- Network: these hosts are now allowed for both curl (Bash) and WebFetch: api.crossref.org, api.semanticscholar.org (rate-limited), export.arxiv.org, eutils.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, arxiv.org, openaccess.thecvf.com, www.jmir.org, mhealth.jmir.org, link.springer.com, bjsm.bmj.com, www.mdpi.com, www.frontiersin.org, journals.plos.org, ai.google.dev, developers.google.com, support.google.com, eur-lex.europa.eu, edpb.europa.eu, ico.org.uk, www.ftc.gov, www.fda.gov, www.ilga.gov, plus github.com, developer.apple.com, developer.android.com. api.openalex.org is allowed but its daily budget is exhausted — don't rely on it. Other hosts (e.g., journals.lww.com, nature.com, who.int, sciencedirect.com, tandfonline.com, jamanetwork.com) are probably blocked; for those use Crossref/PubMed records and PMC copies. WebSearch may have a small budget: prefer direct fetches and API calls (PubMed esearch/esummary/efetch abstracts via eutils are a good way to check numbers in abstracts).
- Citation counts method: (1) Crossref: curl -s "https://api.crossref.org/works/<DOI>" | jq '.message | {title, "container-title", issued, "is-referenced-by-count"}', or search with https://api.crossref.org/works?query.bibliographic=<url-encoded title>&rows=3&select=DOI,title,container-title,issued,is-referenced-by-count (this also verifies title, venue, year, DOI). (2) Semantic Scholar via ONE batch request: curl -s -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,year,venue,citationCount" -H 'Content-Type: application/json' -d '{"ids":["DOI:10.xxxx/yyy"]}' — on HTTP 429, wait 15-30 s and retry, up to 6 attempts; if it never succeeds, say so. Label each count by source and date ("Crossref cited-by, 2026-11-07" / "Semantic Scholar, 2026-11-07"). Never estimate a count. Do not put any email address in API requests.
- Today is 2026-11-07. Never invent a paper, number or quote; every verdict needs a primary-source URL. If you cannot verify something, say "STILL UNVERIFIED" and why. Do not edit the original notes files.
- Output format (this overrides the researcher.md notes template where they differ). Keep it concise, mostly tables, under about 6,000 words: (1) Citation table: short ref | DOI | verified title/venue/year (yes / corrected: ...) | design (guideline/SR/MA/RCT/other) | Crossref cited-by | Semantic Scholar count | notes file. (2) Claim checks: claim (brief quote of the notes' wording) | notes file | verdict: CONFIRMED / CORRECTED (give the correct value) / NOT FOUND (recommend dropping) / STILL UNVERIFIED | primary-source URL. (3) New facts that close gaps listed in the notes or bear on Delva's spec decisions (8-week minimum and 4 chapters, 14 active days, 3/4/5 days, 15-20 min sessions, sequence-based missed workouts), each with a link and an evidence label (strong / weak / opinion-or-industry practice).

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/V3_verify_FG.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I verified every paper and guideline cited in F and G, and the notes are saved. Semantic Scholar counts could not be collected: the single batch request got HTTP 429 on all 6 attempts. Crossref cited-by counts (2026-11-07) are in for every item that has a DOI. Several citations needed correcting.

Saved to: `/home/user/openGym/research_notes/Vision guided home fitness evidence/V3_verify_FG.md`. It runs about 7,000 words by `wc`, mostly tables, URLs and DOIs, so a bit over your 6,000 target. The original notes were not edited.

**Bibliographic corrections:**
- **WHO 2020 (Bull et al.)** is PMC7719906. The notes' PMC7719905 is a different paper (Troiano et al. 2020, on surveillance).
- **Epton 2017**: the notes' DOI 10.1037/ccp0000223 points to an unrelated paper. The correct DOI is 10.1037/ccp0000260. The venue, J Consult Clin Psychol 85(12):1182-1198, is confirmed, and d = .34.
- **Amir & Ariely 2008**: the DOI is 10.1037/a0012857.
- **Šarić** is 2019, not 2018.
- **Pelland** is published: Sports Med 2026;56(2):481-505, DOI 10.1007/s40279-025-02344-w.
- **Xu & Smit 2023** title corrected.
- **Jenkins 2023**: corrected title (the paper is about people living with and beyond cancer).
- **BCT Ontology** is published in Wellcome Open Research under CC BY 4.0.
- **PMC10199130** is a short review by Burtscher, Strasser & D'Antona (JSHS 2023), not a commentary on Momma. It does state the 8-study overlap between Momma 2022 and Shailendra 2022.
- **PMC5712461** is confirmed as Steele et al. 2017, PeerJ.

**Claims that were wrong:**
- **Schoenfeld 2016** did not find "no frequency effect when volume is equated". It found training twice a week beat once a week. The no-effect finding is Schoenfeld, Grgic & Krieger 2019.
- **Halperin 2022** found that training status did not affect how accurately people judge reps left in reserve (RIR). So "worse in novices" is wrong. The ~1 rep error (0.95) and the worse accuracy above 12 reps are confirmed.
- **"2-3 RIR" in ACSM 2026** is mentioned as one way to reach enough effort. The stand also says there is insufficient evidence to set exact RIR targets.
- **Dishman "~50% drop out in 6 months"**: no checkable Dishman 1988 source. Rhodes & Sui 2021 (PMC8450373) attribute ">50% dropout within 6 months" to 1980s studies (Oldridge 1984; Dishman, Sallis & Orenstein 1985; Sallis et al. 1986). Cite that review or drop the number.
- **Thomas 2018** says ≥5 min per week of stretching, not per muscle. It conflicts with Konrad 2024 on stretching frequency.
- **Calatayud 2015** was a 5-week study in 30 students with advanced training experience.

**Gaps now closed:**
- **ACSM 2026 per-goal numbers** are in the abstract:
  - Strength: ≥80% 1RM, full range of motion, 2-3 sets per session, at the start of the session, ≥2 sessions a week.
  - Muscle growth: ≥10 sets a week, plus eccentric overload.
  - Power: 30-70% 1RM, ≤24 reps × sets.
  - The stand is open access (CC BY-NC-ND 4.0, PMC12965823).
- **ACSM 2009**: 8-12 RM and 2-3 days a week for novices are confirmed. 60-70% 1RM, 1-3 sets and rest times are not in the abstract.
- **Guideline numbers**: WHO 2020 and US PAG 2018 numbers and the removal of the 10-minute bout are confirmed in the full texts.
- **Licences**: Bull 2020 and Momma 2022 are CC BY 4.0.
- **Lally 2010**: the "Missing one opportunity... did not materially affect the habit formation process" line is verbatim in the abstract.
- **Meyerowitz-Katz** dropout figures (43% pooled, 49% real-world, 40% RCTs) are confirmed. The "47%" is the share of included studies that were observational, not a dropout rate.
- **Mazeas**: the main effect g = 0.42 is in the published abstract.
- **Milkman 2021**: the best intervention was a US$0.09 bonus for returning after a missed workout, worth +27% weekly visits. The authors say this estimate is probably inflated.
- **Every other priority number in both lists checked out**, among them Pratap, Beshears, Silverman & Barasch, Singh, Kaushal & Rhodes, Michie 2009, Howlett, Laranjo, Patel, Klasnja, Grgic 2018, Pelland, Currier 2023, Momma, Milanović, Weston, Konrad, Bosquet and Ogasawara.

**New facts for Delva's spec:**
- **Bodyweight training**: ACSM 2026 says bodyweight training was not studied on its own (only the Nordic hamstring curl), so the evidence for a pure bodyweight program is indirect.
- **Program length**: ACSM 2026 included only programs of at least 6 weeks with at least 12 sessions. An 8-week program sits inside that evidence; a 14-day chapter does not, so chapters are motivational checkpoints rather than physiological units.
- **Days per week**: in Perri 2002 (379 adults), prescribing 5-7 days instead of 3-4 raised total exercise without lowering adherence. Prescribing higher intensity did lower adherence.
- **Frequency choice**: Schoenfeld 2019 says that for a given volume, people can pick their weekly frequency by preference.
- **Weekly strength time**: in observational data summarised by Burtscher, the mortality benefit fades by about 150 min a week of resistance exercise. Delva's maximum of 100 min stays below that.
- **Sample bias**: Pelland's sample was 79% men and Laranjo's only 28% women.

**Still unverified:**
- UK CMO 2019 wording (gov.uk was unreachable).
- Ebben 2011 push-up percentages and Garber's 10-30 s holds (full texts blocked).
- The BCTTv1 numbering and its terms of use.
- Sharif & Shu's "7 days with 2 skips" example.
- Cochran & Tesser 1996.
- Trost 2002 calling lack of time the "most consistent" barrier.
- The three 2025 meta-analyses and reviews mentioned only in blogs or press.

Scratch data (Crossref tables, abstracts) is in `/tmp/claude-0/-home-user-openGym/e7749b12-3cc6-5fc0-a19a-8932ce960682/scratchpad/v3/`.
````

## Note

The scratch folder named in the last line was not kept: it lived in the session's temporary scratchpad. Its own tables and scripts are now in [04-data/](../../04-data/README.md); third-party abstracts and full texts from it are listed, with checksums, in `04-data/excluded-downloads-manifest.tsv`.
