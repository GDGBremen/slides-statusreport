#!/bin/bash

BRANCHES = $1
CONTENT = "";

for i in ${BRANCHES[@]}
do
	$CONTENT+='<li><a href="'
	$CONTENT+=${BRANCHES[i]}
	$CONTENT+='/template.html">'
	$CONTENT+=${BRANCHES[i]}
	$CONTENT+='</a></li>'
done

sed -e "s;%DIR%;$CONTENT;" ../indexhtml > ../index.html
