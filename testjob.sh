#! /bin/bash

# Date in format Day-Month-Year
date=$(date +"%Y-%m-%d %T")

# Commit message
message="Commit for $date"
cd /home/d3c0d3/personal/gitBack
git add .
git commit -m"${message}"
status="$(git status --branch --porcelain)"
echo $status >> ~/Desktop/cron_echo.txt
if [ "$status" == "## main...origin/main" ]; then
  echo "IT IS CLEAN" >> ~/Desktop/cron_echo.txt
else
  pushStatus="$(git push -u origin main --porcelain)"
  if ["$pushStatus"!="Done"];then
    echo "Failed" >> ~/Desktop/cron_echo.txt
  else
    echo $pushStatus >> ~/Desktop/cron_echo.txt
  fi
fi
