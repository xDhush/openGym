#!/bin/bash
# usage: cr.sh file ; outputs TSV
while IFS='|' read -r area name doi; do
  r=$(curl -s --max-time 30 "https://api.crossref.org/works/$doi")
  if echo "$r" | jq -e . >/dev/null 2>&1; then
    echo "$r" | jq -r --arg a "$area" --arg n "$name" --arg d "$doi" '.message | [$a,$n,$d,(.title[0]//""),((.["container-title"][0])//""),((.issued["date-parts"][0]|map(tostring)|join("-"))//""),(.volume//""),(.issue//""),(.page//""),(.type//""),((.["is-referenced-by-count"])|tostring), ((.author//[])|map(.family)|.[0:3]|join(";"))] | @tsv'
  else
    echo -e "$area\t$name\t$doi\tNOT_FOUND\t$(echo $r | head -c 80)"
  fi
done < "$1"
