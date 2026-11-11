#!/bin/bash
cd "$1"
for i in 1 2 3 4 5 6; do
 code=$(curl -s -o s2_v4ij.json -w "%{http_code}" -X POST "https://api.semanticscholar.org/graph/v1/paper/batch?fields=title,year,venue,citationCount,externalIds" -H 'Content-Type: application/json' -d @s2ids.json)
 echo "$(date -u +%H:%M:%S) attempt $i: $code" >> s2log.txt; [ "$code" = "200" ] && break; sleep 30; done
