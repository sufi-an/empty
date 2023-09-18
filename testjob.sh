#! /bin/bash

# Date in format Day-Month-Year
date=$(date +"%Y-%m-%d %T")

# Commit message
message="Commit for $date"
cd /home/d3c0d3/personal/gitBack
echo $date >> README.md
#git add .;
#git commit -m"${message}";
git commit -am "${message}" && git push origin main
#status="$(git status --branch --porcelain)";
#echo $status >> ~/Desktop/cron_echo.txt;
#if [ "$status" == "## main...origin/main" ]; then
#  echo "IT IS CLEAN" >> ~/Desktop/cron_echo.txt;
#else
#  pushStatus="$(git push  --porcelain)";
#  if ["$pushStatus" == *"Done"*];then
#    res="${pushStatus} Success"
#    echo $res >> ~/Desktop/cron_echo.txt
#  else
#    res1="${pushStatus} Failed"
#    echo $res1 >> ~/Desktop/cron_echo.txt
#  fi
#fi
