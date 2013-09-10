#!/bin/bash
content="";

cd ..

# TODO instead get all branches with git branch -r
Branches[0]="2013_09_02"
index=0

git branch -r > branches.txt

while read line; 
do 
replacement=""
case1="origin/"
case2=" -> origin/master"
line=${line/$case1/$replacement}
line=${line/$case2/$replacement}
if [[ "$line" != "HEAD" && "$line" != "gh-pages" && "$line" != "master" ]]; then
  Branches[$index]=$line
  index+=1  
fi
done < branches.txt

rm -rf branches.txt

#update file structure
for i in ${Branches[@]}
do
scripts/update_slide.sh $i
done

# generate new index.html
for j in ${Branches[@]}
do
content+="<li><a href=\slides-statusreport-'$j/template.html\'>$j</a></li>"
done

sed -e "s;%CONTENT%;$content;" ./indexhtml > ./index.html

git add -u
git add .
git commit -m "updated gh-pages through update script"
git push
