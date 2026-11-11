# V2: verification of areas D, E (feedback and grouping)

| Field | Value |
|---|---|
| Phase | 2, verification pass (5 tracks in parallel, after the network was widened) |
| Launched | 2026-11-07, about 08:29 UTC |
| Finished | 2026-11-07, about 08:45 UTC |
| Output | [02-notes/verification/V2_verify_DE.md](../../02-notes/verification/V2_verify_DE.md) |
| Checks | D_feedback_motor_learning.md, E_personalisation_grouping.md |

## Prompt sent by the coordinator (verbatim)

````text
Verify the papers and key unverified claims in the motor-learning feedback and personalisation notes (Areas D and E) of a research brief.

Objective: A research brief for Delva (a commercial vision-guided home fitness app: phone-camera form tracking, real-time audio feedback, rep counting, programs grouped by age, gender, level, goal and days; no equipment; adults 18-64) produced notes in /home/user/openGym/research_notes/Vision guided home fitness evidence/. The first pass had blocked hosts and an exhausted search budget, so many items are tagged unverified ([PK], [NR], "V-excerpt", "from abstract only", "citation count not verified"). Your job is a focused verification pass on D_feedback_motor_learning.md and E_personalisation_grouping.md — not new broad research. Read those two files first.

Key questions:
- Citation counts and bibliographic verification for EVERY paper cited in D and E (title, venue, year, DOI, peer-reviewed or preprint).
- Priority claim checks (confirm, correct or mark not found):
  - D: McKay et al. 2022 (Psychology of Sport and Exercise) on reduced feedback frequency; McKay et al. 2022 Meta-Psychology on self-controlled practice (g = .44 falling to .107 after bias correction); St. Germain et al. 2023 (N = 228); Weakley et al. 2023 Sports Medicine meta-analysis of feedback in resistance training (20 studies; g = 0.63; ~8.4% velocity; visual g = 1.11 vs verbal g = 0.47; every-rep feedback best); Chua et al. 2021 Psychological Bulletin (external focus g 0.26-0.58); McKay et al. 2024 Psychological Bulletin re-analysis (g 0.01-0.15); Grgic et al. 2021 and 2022 (external focus and strength / muscular endurance, SMD 0.34); Schoenfeld et al. 2018 (internal focus and hypertrophy, n = 30); McKay et al. 2025 (Int Rev Sport Exerc Psychol) on OPTIMAL-theory motivational effects and 6% median power; Sigrist et al. 2013 (Psychon Bull Rev); Schaffert et al. 2019 (sonification review); the 2017 vibrotactile feedback review; YouMove (UIST 2013); the action-sound latency study reporting ~180 ms (SD 104) for non-musicians vs ~102 ms for musicians — find the exact paper; Buszard et al. 2017 (working memory and instructions); the alarm-fatigue review with 72-99% false/non-actionable ICU alarms; Eyes-Free Yoga (Rector et al., ASSETS 2013; 16 participants); foundational: Salmoni, Schmidt & Walter 1984 (Psychological Bulletin), Winstein & Schmidt 1990, Sherwood 1988, Lee & Carnahan 1990, Chiviacowsky & Wulf 2007.
  - E: Roberts et al. 2020 J Strength Cond Res (hypertrophy ES 0.07, P = 0.31; upper-body strength ES -0.60); Refalo et al. 2025 PeerJ Bayesian meta-analysis (29 studies; SMD 0.19); Jones et al. 2021 Sports Medicine (older adults); McNulty et al. 2020 Sports Medicine (menstrual cycle); Colenso-Semple et al. 2023 umbrella review; Diaz-Canestro & Montero 2019 (VO2max sex difference; 8 studies, 175 people); Phillips et al. 2017 (midlife lean-mass gains 1.1% vs 5.2%); Ross et al. 2019 BJSM consensus on inter-individual response; Hunter's fatigability reviews; Ekkekakis/Oliveira 2015 on self-selected intensity; Noar et al. 2007 (r = .074); Lustria et al. 2013 (d = .139); De Croon et al. 2021 JMIR (73 studies); Hors-Fraile et al. 2018 (19 papers); Brons et al. 2024; Galesic & Bosnjak 2009; Obermeyer et al. 2019 Science; Wilcox et al. CHI 2023; Cifor & Garcia (DOI 10.1145/3364685) venue; WHO 2020 recommendation for adults 18-64 (Bull et al. BJSM 2020); EU Directive 2004/113/EC Art. 4(5) wording and Test-Achats C-236/09 (eur-lex.europa.eu); GDPR Art. 22 wording.

Suggested sources:
- api.crossref.org, api.semanticscholar.org, eutils.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, link.springer.com, bjsm.bmj.com, www.jmir.org, mhealth.jmir.org, www.frontiersin.org, www.mdpi.com, journals.plos.org, arxiv.org, eur-lex.europa.eu

Constraints:
- Network: these hosts are now allowed for both curl (Bash) and WebFetch: api.crossref.org, api.semanticscholar.org (rate-limited), export.arxiv.org, eutils.ncbi.nlm.nih.gov, pmc.ncbi.nlm.nih.gov, pubmed.ncbi.nlm.nih.gov, arxiv.org, openaccess.thecvf.com, www.jmir.org, mhealth.jmir.org, link.springer.com, bjsm.bmj.com, www.mdpi.com, www.frontiersin.org, journals.plos.org, ai.google.dev, developers.google.com, support.google.com, eur-lex.europa.eu, edpb.europa.eu, ico.org.uk, www.ftc.gov, www.fda.gov, www.ilga.gov, plus github.com, developer.apple.com, developer.android.com. api.openalex.org is allowed but its daily budget is exhausted — don't rely on it. Other hosts (e.g., peerj.com, dl.acm.org, sciencedirect.com, tandfonline.com, journals.lww.com) are probably blocked; for those use Crossref/PubMed records and PMC copies. WebSearch may have a small budget: prefer direct fetches and API calls (PubMed esearch/esummary/efetch abstracts via eutils are a good way to check numbers in abstracts).
- Citation counts method: (1) Crossref: curl -s "https://api.crossref.org/works/<DOI>" | jq '.message | {title, "container-title", issued, "is-referenced-by-count"}', or search with https://api.crossref.org/works?query.bibliographic=<url-encoded title>&rows=3&select=DOI,title,container-title,issued,is-referenced-by-count (this also verifies title, venue, year, DOI). (2) Semantic Scholar via ONE batch request: curl -s -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,year,venue,citationCount" -H 'Content-Type: application/json' -d '{"ids":["DOI:10.xxxx/yyy"]}' — on HTTP 429, wait 15-30 s and retry, up to 6 attempts; if it never succeeds, say so. Label each count by source and date ("Crossref cited-by, 2026-11-07" / "Semantic Scholar, 2026-11-07"). Never estimate a count. Do not put any email address in API requests.
- Today is 2026-11-07. Never invent a paper, number or quote; every verdict needs a primary-source URL. If you cannot verify something, say "STILL UNVERIFIED" and why. Do not edit the original notes files.
- Output format (this overrides the researcher.md notes template where they differ). Keep it concise, mostly tables, under about 6,000 words: (1) Citation table: short ref | DOI | verified title/venue/year (yes / corrected: ...) | design (SR/MA/RCT/other) | Crossref cited-by | Semantic Scholar count | notes file. (2) Claim checks: claim (brief quote of the notes' wording) | notes file | verdict: CONFIRMED / CORRECTED (give the correct value) / NOT FOUND (recommend dropping) / STILL UNVERIFIED | primary-source URL. (3) New facts that close gaps listed in the notes, each with a link and an evidence label (strong / weak / opinion-or-industry practice).

Save your output notes to /home/user/openGym/research_notes/Vision guided home fitness evidence/V2_verify_DE.md

**As a first step, you must read /root/.claude/skills/synced/537bc530-8c6c-4e03-8f60-2411fb8df69b_c453d061-3e90-4b7a-a2db-2164bd51b4b5/deep-research/references/researcher.md for instructions on how to conduct research.**
````

## Final report handed back to the coordinator (verbatim)

This is the agent's own summary of its work. It is model output, not a user message. Paths in it are the paths at the time; the notes now live under `02-notes/`.

````text
I verified every paper cited in D and E and ran the priority claim checks; the notes are at `/home/user/openGym/research_notes/Vision guided home fitness evidence/V2_verify_DE.md`. All the priority numbers that could be checked held, and nothing needs dropping as not found. Two blocks stay STILL UNVERIFIED: the EU legal wording, and a handful of numbers that only exist on ACM DL or OUP pages.

**What was checked**
- **Citation counts:** about 80 items have Crossref cited-by and Semantic Scholar counts, both labelled 2026-11-07. Semantic Scholar answered the main batch on its 5th try after 429s; only the Meta-Psychology paper came back null.
- **Three Semantic Scholar counts look wrong:** Wulf & Lewthwaite 2016 (62 vs 1,107 on Crossref), Sigrist 2015 (6 vs 145) and HaptStarter (2 vs 6). Use Crossref for those.
- **Numbers:** checked against PubMed abstracts (42 records), Crossref abstracts including the PsyArXiv preprints linked to the journal articles, and PMC or Frontiers full text for Bull 2020, Phillips 2017, Hunter 2009 and Chromik 2022.

**Confirmed (exact numbers)**
- **Area D:**
  - Weakley 2023: 20 studies, g = 0.63, about 8.4% velocity, visual 1.11 vs verbal 0.47, every-rep feedback best.
  - Chua 2021 and McKay 2024: all effect sizes as written.
  - Meta-Psychology self-controlled meta-analysis: g = .44 falling to .107.
  - St. Germain 2023: N = 228 (journal DOI 10.3758/s13423-022-02170-5, which the notes lacked).
  - McKay IRSEP: 6% average power.
  - McKay 2022 PSE: "no significant effect at any time point"; now with 61 papers, k = 75, N = 2,228.
  - Grgic 2021: SMD 0.34. Schoenfeld 2018: n = 30.
  - The latency paper is van Vugt & Tillmann 2014, PLoS ONE 9(2):e87176: 180 ± 104 ms for non-musicians vs 102 ± 65 ms for musicians.
  - All five foundational papers are bibliographically confirmed.
- **Area E:**
  - Roberts 2020, Refalo 2025, Jones 2021, McNulty 2020, Colenso-Semple 2023, Diaz-Canestro 2019 (8 studies, 175 people), Ross 2019.
  - Phillips 2017: 5.24% vs 1.12% lean-mass gain, from full text.
  - Noar 2007: r = .074. Lustria 2013: d = .139. De Croon 2021: 73 studies. Hors-Fraile 2018: 19 papers. Brons 2024.
  - Obermeyer 2019: 17.7% to 46.5%.
  - WHO 2020 adult wording for 18-64, confirmed in the PMC full text of Bull et al.

**Corrections**
- **72-99% alarm figure:** it is a background sentence in Chromik et al. 2022 citing Sendelbach & Funk 2013, not a finding of that review.
- **BMC Nursing 2025 quote:** the abstract's wording differs from what the notes quote.
- **"Scoping review of 49 studies":** this is Ketelhut et al., IJSPP 2025, and only 12% of those studies were about verbal encouragement.
- **Grgic 2021:** the 10 studies are the whole review, not the acute analysis alone.
- **Wilcox CHI 2023:** the notes leave out the second author, Renee Shelby.
- **Peer review status:**
  - The bioimpedance "Smacks of Gender" paper was peer-reviewed at ACM FAccT 2021, not a preprint.
  - Semantic Scholar lists UbiPhysio in the IMWUT journal, so "not peer-reviewed" is probably wrong (DOI not checked).
  - Said 2025 is a RecSys workshop paper.
- **Cifor & Garcia venue:** confirmed as ACM Transactions on Social Computing 2(4), 2019.
- **Wrong source labels:** PMC4578294 is Jensen 2012, a primary mediation analysis, not "a later review". PMC12965823 is the 2026 ACSM Position Stand (Currier et al.), which formally updates the 2009 stand.
- **Smaller fixes:** the Senefeld comment's page numbers, the HaptStarter year (2024 issue), the McKay IRSEP full title, the Midgley venue (Clin Physiol Funct Imaging 2018), and the Kaia paper's title.

**Gaps closed**
- Kaia Motion Coach agreement: 0.828 for the app vs physiotherapists and 0.833 between physiotherapists, n = 24.
- Grgic & Mikulic 2022 endurance effect: d = 0.58.
- Jones 2021's "older adults" means older than 50.
- Hunter 2009 confirms the sex difference in fatigability narrows with age.
- Lustria follow-up: d = .158.
- The Eyes-Free Yoga follow-up is now verified at its primary source (TACCESS 2017), with the correction that the home deployment had only n = 4.
- Two bandwidth-feedback findings: Sherwood 1988 and Lee & Carnahan 1990.
- St. Germain 2023 found binary right/wrong feedback produced no learning, while graded feedback did. That bears on how Delva words its cues.
- The 2026 ACSM stand found training to failure did not consistently change outcomes.

**Still unverified, and why**
- **EU and UK legal texts:** Directive 2004/113/EC Art. 4(5), Test-Achats C-236/09, GDPR Art. 22 and the UK GDPR Arts 22A-22D. EUR-Lex returned an empty bot-check response to curl, and I did not try to get around it. WebFetch could not resolve the host, ICO returned 403 and EDPB did not connect. eur-lex.europa.eu needs to be allowed in the session's network settings to finish these.
- **ACM DL / OUP numbers:** YouMove's "factor of 2", Eyes-Free Yoga's 12/4 participant split and "13 of 16", Wilcox's 64 participants, the Audio Mostly 2024 latency numbers, and Galesic & Bosnjak's 75% vs 65%.
- **Not in the abstracts:** the Weakley 2023 moderator list, the Sigrist 2013 quote on concurrent feedback, Jones 2021's intensity-vs-volume sub-analysis, the direction of Noar's demographic moderator, and Hunter's calcium-handling mechanism.
- **No DOI or record found:** Marschall, Bund & Wiemeyer 2007, and the imec explanation-modality study.

The file runs to about 6,900 words by `wc`, slightly over your ~6,000 target; the DOIs and URLs in the tables account for much of that.
````
