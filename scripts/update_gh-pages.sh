#!/bin/bash
content="";

cd ..

# TODO instead get all branches with git branch -r
Branches[0]="2013_09_02"

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
