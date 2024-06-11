#! /usr/bin/env bash

timestamp=$(date '+%Y-%m-%d %H:%M')
zet_cnt=$(expr $(find ../docs/zet/* -maxdepth 1 -type d | wc -l) + 1)
filepath="../docs/zet/$zet_cnt/"
mkdir $filepath
 
echo -e "---\ndate: $timestamp\n---" > $filepath/index.md 
echo -e "* $timestamp: [$zet_cnt]($zet_cnt/index.md)" | cat - ../docs/zet/index.md > temp && mv temp ../docs/zet/index.md
