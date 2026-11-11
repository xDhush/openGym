#!/bin/bash
# usage: measure.sh OWNER/NAME [host]
S=/tmp/claude-0/-home-user-openGym/e7749b12-3cc6-5fc0-a19a-8932ce960682/scratchpad
r="$1"; host="${2:-github.com}"; name="${r#*/}"; safe="${r//\//__}"
d=$S/repos/$safe; mkdir -p $d; cd $d || exit 1
o=$S/meta/out/$safe; mkdir -p $o
start=$(date +%s)
if timeout 900 git clone --bare --filter=tree:0 --quiet "https://$host/$r.git" "$name.git" 2> $o/clone.err; then
  g="git -C $name.git"
  emails=$($g log --format='%aE' | sort -u | wc -l)
  emails_nobot=$($g log --format='%aE|%aN' | grep -viE 'bot|\[bot\]|actions@github|noreply@github.com$' | cut -d'|' -f1 | sort -u | wc -l)
  names=$($g log --format='%aN' | sort -u | wc -l)
  commits=$($g rev-list --count HEAD)
  last=$($g log -1 --format=%cI)
  lastauthor=$($g log -1 --format=%aI)
  first=$($g log --reverse --format=%cI | head -1)
  branch=$($g rev-parse --abbrev-ref HEAD)
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$r" "$branch" "$emails" "$emails_nobot" "$names" "$commits" "$last" "$lastauthor" "$first" "$(( $(date +%s)-start ))s" > $o/row.tsv
  $g ls-tree --name-only HEAD > $o/root.txt 2>>$o/clone.err
  for f in $(grep -iE '^(licen[cs]e|copying|notice|license[-_].*|.*licen[cs]e.*\.(md|txt|pdf|doc)?)' $o/root.txt | head -6); do
    echo "===== $f" >> $o/license.txt
    timeout 120 $g cat-file -p "HEAD:$f" 2>>$o/clone.err | head -c 6000 >> $o/license.txt
    echo >> $o/license.txt
  done
  rd=$(grep -iE '^readme(\.md|\.rst|\.txt)?$' $o/root.txt | head -1)
  if [ -n "$rd" ]; then timeout 120 $g cat-file -p "HEAD:$rd" 2>>$o/clone.err | grep -n -iE 'licen|commercial|weights|checkpoint|dataset.*(term|agreement)|terms of use|copyright|©|permission|smpl|polyform|cc[- ]by' | cut -c1-400 > $o/readme_lic.txt; fi
else
  printf '%s\tCLONE_FAILED\n' "$r" > $o/row.tsv
fi
cd $S/repos && rm -rf "$d"
