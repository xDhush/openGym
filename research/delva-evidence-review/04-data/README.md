# 04-data: working data

What the research agents produced while working, apart from their notes: their scripts, the tables they built, the citation and repository metadata they collected, and a manifest of everything they downloaded but which is not committed.

All files were copied from the session's temporary scratch folder on 2026-11-11. A file's name here is its scratch path with `/` replaced by `__` (for example `meta/out/google-ai-edge__mediapipe/row.tsv` became `meta__out__google-ai-edge__mediapipe__row.tsv`). [included-files-map.tsv](included-files-map.tsv) maps every committed file back to its scratch path.

## Contents

| Folder or file | What it holds | Mainly used by |
|---|---|---|
| [scripts/](scripts/) | 14 small helper scripts (shell and Python), unchanged | V1 to V5 |
| [tables/](tables/) | 223 tables and lists the agents produced (see below) | V2, V3, V4, V5 |
| [api-metadata/](api-metadata/) | 16 responses from the Crossref, Semantic Scholar and PubMed E-utilities APIs. **Abstract fields were removed**, since abstracts belong to their publishers. | V1 to V5 |
| [included-files-map.tsv](included-files-map.tsv) | Scratch path to committed path, one row per committed file | |
| [excluded-downloads-manifest.tsv](excluded-downloads-manifest.tsv) | Every file left out: scratch path, size in bytes, SHA-256, reason | |

The writer's six draft parts are in [01-report/drafts/](../01-report/drafts/), not here.

### Scripts

| Script | What it does |
|---|---|
| `scripts__search.sh` | Reads a list of repositories and records stars, push date, archived flag, licence and owner through `gh` repository search (`meta__search.tsv`) |
| `scripts__measure.sh` | For one repository: treeless bare clone, distinct commit-author emails, last commit date, licence and root files (`meta__out__*` and `meta__clone.tsv`) |
| `scripts__s2retry.sh`, `scripts__s2last.sh`, `v4ij_dl__s2run.sh`, `v4ij_dl__s2q.sh` | One Semantic Scholar batch or title request, retried up to 6 times on HTTP 429 |
| `v3__cr.sh` | Crossref lookup for a list of DOIs, output as TSV |
| `scripts__parse_arxiv.py` | Reads an arXiv API response and prints titles, dates and identifiers |
| `v2__scripts__parse.py` | Reads a PubMed E-utilities response and prints PMID, title and journal |
| `scripts__h2t.py`, `v4ij_bin__h2t.py`, `v2__scripts__txt.py` | Turn a downloaded web page into plain text for reading |
| `v3__body.py`, `v3__show.py` | Print stored abstracts by identifier (the abstract file itself is not committed) |

The scripts still contain the old scratch path (`/tmp/claude-0/...`); change it before re-running.

### Tables

| Files | Contents |
|---|---|
| `meta__search.tsv`, `meta__clone.tsv` | One row per cited repository: stars, push date, archived, licence, owner, default branch; commit counts, distinct authors, first and last commit |
| `meta__out__<owner>__<repo>__row.tsv`, `__license.txt`, `__root.txt` | Per repository (71 of them): the measurement row, the licence file as read, and the list of root files |
| `meta__repos.txt`, `meta__found.txt`, `meta__list1.txt` | Repository lists with the notes file(s) that cite each |
| `meta__es_types.txt` | Android Health Connect exercise segment types, as listed in the official documentation |
| `meta__pmids.txt`, `v3__pmids.tsv` | PubMed identifiers looked up |
| `crossref.txt`, `v2__data__crossref_doi*.tsv`, `v3__cr_out.tsv`, `v3__cr_extra.tsv` | Crossref results: DOI, title, venue, year, type, cited-by count |
| `dois.txt`, `v2__scripts__dois*.txt`, `v3__dois.txt`, `*s2ids.json`, `v3__ids.json` | Identifier lists sent to the APIs |
| `meta__s2.log`, `v4ij_dl__s2log.txt` | Semantic Scholar retry logs (HTTP 429 until success) |

## What is not committed, and why

357 files (about 122 MB) are listed in [excluded-downloads-manifest.tsv](excluded-downloads-manifest.tsv) instead of being committed:

| Reason (as in the manifest) | Files |
|---|---|
| Text extracted from a third-party page or paper | 154 |
| Third-party data file or empty log (for example documentation indexes) | 75 |
| Third-party web page, full text or licence page | 65 |
| Third-party PDF (paper, guidance or model card) | 25 |
| Third-party README or licence page copy | 23 |
| Other working file (copies of sample code and licence pages from repositories) | 12 |
| Abstracts from publishers | 2 |
| Binary licence agreement file | 1 |

This repository is public, and most of these are copyrighted (papers, abstracts, web pages) or are large PDFs. All are public sources: the notes and the report link to each one, and the manifest's SHA-256 lets anyone confirm that a re-downloaded file is the same version the agents read.

The licence files read from code repositories (`meta__out__*__license.txt`) are kept, because licence texts are meant to be copied and they are the evidence behind the licence findings.
