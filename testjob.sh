

#!/bin/bash
dt="$(date)"
cd /home/d3c0d3/personal/gitBack/

date >> README.md

git add .
git commit -m'commit backup $dt' 

if [[ "$(git push --porcelain)" == *"Done"* ]]
then
  echo "git push succeeded $dt" >> ~/Desktop/gitbkup.txt
else
  echo "git push failed $dt" >> ~/Desktop/gitbkup.txt
fi
# git push -u origin main
#echo "Hello World $dt" >> ~/Desktop/gitbkup.txt 
