#!/bin/bash
cd "$1"
for q in "Validation of the PAR-Q+ and ePARmed-X+" "2023 PAR-Q+ Physical Activity Readiness Questionnaire for Everyone Health Fitness Journal of Canada"; do
 for i in 1 2 3 4 5 6; do
  code=$(curl -s -G -o "s2q_$(echo $q | md5sum | cut -c1-6).json" -w "%{http_code}" "https://api.semanticscholar.org/graph/v1/paper/search" --data-urlencode "query=$q" --data-urlencode "limit=5" --data-urlencode "fields=title,year,venue,citationCount,externalIds,abstract,openAccessPdf")
  echo "$(date -u +%H:%M:%S) $q attempt $i: $code" >> s2qlog.txt; [ "$code" = "200" ] && break; sleep 25; done; sleep 5; done
