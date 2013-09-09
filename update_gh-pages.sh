#!/bin/bash


# TODO instead get all branches with git branch -r
Branches=("2013_09_02" "asd")

#update file structure

for i in ${#Branches[@]}
do
	sh ./scripts/update_slide.sh ${Branches[$i]}
done

# creates a new index.html file by using the template indexhtml
sh ./scripts/update_indexhtml.sh Branches

git add -u
git add .
git commit -m "updated gh-pages through update script"
git push
