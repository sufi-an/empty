

#!/bin/bash
dt="$(date)"
cd /home/d3c0d3/personal/gitBack/

date >> README.md

git add .
git commit -m'commit backup $dt' 

if git push
then
  echo "git push succeeded"
else
  echo "git push failed"
fi
# git push -u origin main
echo "Hello World $dt" >> ~/Desktop/gitbkup.txt 
