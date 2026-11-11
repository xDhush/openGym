#!/bin/bash
S=/tmp/claude-0/-home-user-openGym/e7749b12-3cc6-5fc0-a19a-8932ce960682/scratchpad
out=$S/meta/search.tsv; : > $out
mapfile -t R < <(awk '{print $1}' $S/meta/repos.txt)
for ((i=0;i<${#R[@]};i+=5)); do
  q=""; for r in "${R[@]:i:5}"; do q="$q repo:$r"; done
  gh api -X GET search/repositories -f q="${q# }" -f per_page=10 --jq '.items[] | [.full_name, .stargazers_count, .forks_count, .pushed_at, .archived, (.license.spdx_id // "null"), .owner.login, .owner.type, .default_branch, .created_at] | @tsv' >> $out 2>>$S/meta/search.err
  sleep 2.5
done
wc -l $out
