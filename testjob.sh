

#!/bin/bash

cd /home/d3c0d3/personal/gitBack/

date >> README.md

git add .
git commit -m'commit backup $date'
git push
echo "Hello World $date" >> ~/Desktop/gitbkup.txt 
