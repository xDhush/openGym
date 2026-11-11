#!/bin/bash
D=$1
for i in 1 2 3 4 5 6; do code=$(curl -s -o $D/s2d.json -w "%{http_code}" --max-time 60 -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,venue,year,citationCount" -H 'Content-Type: application/json' -d '{"ids":["ARXIV:2406.08877","PMID:35988434","PMID:36198251","ARXIV:2005.08465","ARXIV:2608.26094"]}'); echo "last $i $code"; [ "$code" = 200 ] && break; sleep 30; done
