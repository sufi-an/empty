#! /bin/bash

# Date in format Day-Month-Year
date=$(date +"%Y-%m-%d %T")

# Commit message
message="script for automating code backup to github using bash and crontab. Last updated $date"
cd /home/d3c0d3/personal/gitBack
echo $message > README.md
#####

#git remote set-url origin git@github.com:sufi-an/empty.git
#git fetch
#git branch -vv
#git branch -u origin/main
#git add .;
#git commit -m"${message}";
#git push --force
#####

git add .;
git commit -m"${date}";
#git commit -am "${message}" && git push origin main
status="$(git status --branch --porcelain)";
echo $status >> ~/Desktop/cron_echo.txt;
if [ "$status" == "## main...origin/main" ]; then
  echo "IT IS CLEAN" >> ~/Desktop/cron_echo.txt;
else
  pushStatus="$(git push  --porcelain)";
  if ["$pushStatus" == *"Done"];then
    res="${pushStatus} Success"
    echo $res >> ~/Desktop/cron_echo.txt
  else
    res1="${pushStatus} Failed the job"
    echo $res1 >> ~/Desktop/cron_echo.txt
  fi
fi
