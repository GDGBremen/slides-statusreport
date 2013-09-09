#!/bin/bash

declare -a array
# TODO instead get all branches with git branch -r
array[0] = "2013_09_02"

#update file structure

for i in ${#array[@]}
do
	sh ./scripts/update_slide.sh ${array[$i]}
done

# creates a new index.html file by using the template indexhtml
sh ./scripts/update_indexhtml.sh array

git add -u
git add .
git commit -m "updated gh-pages through update script"
git push