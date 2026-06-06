#!/bin/bash
# 執行這個腳本，自動掃描同目錄下所有 .md 並更新 cards.json
# 用法：bash gen-cards.sh

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

shopt -s nullglob
files=(*.md)

if [ ${#files[@]} -eq 0 ]; then
  echo "[]" > cards.json
  echo "沒有找到 .md 檔案"
  exit 0
fi

json="["
first=1
for f in "${files[@]}"; do
  if [ $first -eq 0 ]; then json="$json, "; fi
  escaped=${f//\\/\\\\}
  escaped=${escaped//\"/\\\"}
  json="$json\"$escaped\""
  first=0
done
json="$json]"

echo "$json" > cards.json
echo "已更新 cards.json："
echo "$json"
