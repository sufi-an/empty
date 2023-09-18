

#!/bin/bash
dt="$(date)"
cd /home/d3c0d3/personal/gitBack/

date >> README.md

git add .
git commit -m'commit backup $dt'
#git push
echo "Hello World $dt" >> ~/Desktop/gitbkup.txt 
