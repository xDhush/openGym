# Environment and network

The research ran in a Claude Code cloud session: an ephemeral container with a clone of this repository, whose outbound traffic goes through a proxy that enforces the environment's network policy. Most of the project's verification gaps come from that policy, so it is recorded here in full.

## Starting point

| Setting | Value |
|---|---|
| Environment | "Default" (personal) |
| Network | Limited: package registries and MCP servers allowed, no extra hosts |
| Effect | GitHub (through `gh` search and git), Apple and Android developer sites and package registries worked. Publisher sites, PubMed, arXiv, EUR-Lex, regulators and citation APIs did not. Web search worked but has a shared budget. |

## Changes made (both approved by the user)

| When (2026-11-07) | Change | Why |
|---|---|---|
| about 08:09 | New personal environment **"openGym research APIs"** for repository `xDhush/openGym`, network limited, package registries and MCP servers allowed, plus: `api.openalex.org`, `api.semanticscholar.org`, `api.crossref.org`, `export.arxiv.org`, `eutils.ncbi.nlm.nih.gov`, `api.github.com`. This session was switched to it (network only). The Default environment was not changed. | Every first-pass agent lacked citation counts and contributor counts; the proxy had refused `api.semanticscholar.org` directly. |
| about 08:21 | Added 20 hosts to that environment: `pmc.ncbi.nlm.nih.gov`, `pubmed.ncbi.nlm.nih.gov`, `arxiv.org`, `openaccess.thecvf.com`, `www.jmir.org`, `mhealth.jmir.org`, `link.springer.com`, `bjsm.bmj.com`, `www.mdpi.com`, `www.frontiersin.org`, `journals.plos.org`, `ai.google.dev`, `developers.google.com`, `support.google.com`, `eur-lex.europa.eu`, `edpb.europa.eu`, `ico.org.uk`, `www.ftc.gov`, `www.fda.gov`, `www.ilga.gov`. | A probe showed the agents' page fetches go through the same proxy, and that these primary sources were refused. An earlier request with 23 hosts was refused by the server's 20-hosts-per-call limit before reaching the user; `journals.lww.com`, `curia.europa.eu` and `app.leg.wa.gov` were dropped to fit. |

**The environment still exists.** It is saved for future sessions on `xDhush/openGym`. To remove it, or to remove hosts from it, use the cloud environment settings in the session's title bar (Edit), or ask a session to propose the change.

## What worked after the changes

| Source | Result |
|---|---|
| Crossref API | Worked throughout. Used for "cited-by" counts and to verify title, venue, year and DOI. |
| Semantic Scholar API | Rate-limited (HTTP 429) for unauthenticated use. Batch requests usually succeeded after 2 to 5 retries; V3's batch failed all 6 attempts. |
| OpenAlex API | Its free daily budget for the shared IP address was already used up. Not used. |
| GitHub REST API | Reachable, but refuses repositories not attached to the session. Not used. Contributor counts came from git history instead (`git clone --bare --filter=tree:0`, then distinct author emails). |
| PubMed E-utilities, PMC, arXiv, CVF open access, JMIR, MDPI, Frontiers, PLOS, Springer | Worked (some full texts, mostly abstracts and records). |
| EUR-Lex | Worked for the GDPR, the AI Act, Regulation (EU) 2026/1744 and the CJEU judgments. Some plain requests got an empty bot-check response or HTTP 202 (for example the MDR). |
| FDA | Worked: the 2026 General Wellness guidance and 2022 software policy PDFs. |
| Google AI and developer docs, Google Play help | Worked. |

## Still blocked or failing after the changes

| Host | What happened |
|---|---|
| `ico.org.uk`, `www.ftc.gov`, `bjsm.bmj.com` | HTTP 403 from the site (bot protection), although allowed by the proxy |
| `edpb.europa.eu` | Redirects to `www.edpb.europa.eu`, which was not on the list |
| `www.ilga.gov` | TLS verification failed even with the proxy's certificate bundle |
| `github.com` web pages | 403 for direct requests; page fetches showed the contributor heading without the number |
| Never allowed | `journals.lww.com` (MSSE), `curia.europa.eu`, `app.leg.wa.gov`, `health.ec.europa.eu`, `gov.uk`, `csep.ca`, `eparmedx.com`, `hfjc.library.ubc.ca`, `pacompendium.com`, `wger.de`, `wger.readthedocs.io`, `f-droid.org`, `bioportal.bioontology.org`, `build.fhir.org`, `hl7.org`, `nature.com`, `who.int`, `sciencedirect.com`, `tandfonline.com`, `jamanetwork.com`, `peerj.com`, `dl.acm.org`, `sites.google.com`, `kaggle.com`, `fit3d.imar.ro`, `qualcomm.com`, `federalregister.gov`, `ecfr.gov`, `texasattorneygeneral.gov` |

These are the reasons behind most STILL UNVERIFIED items. [05-next-steps](../05-next-steps/README.md) lists which hosts would close which gaps.

## Web search budget

Web search had a shared budget of about 200 searches per coordinator turn, across all agents. The ten first-pass agents ran in one turn and used it up; several reported running out after 7 to 37 searches. The verification pass ran in a later turn and leaned on direct API calls and page fetches instead.
