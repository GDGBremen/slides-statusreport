#!/bin/bash

git checkout gh-pages
wget https://github.com/GDGBremen/slides-statusreport/archive/$1.zip
pwd
if [ -d "../slides-statusreport-$1" ]; then
   echo "remove slide folder"
   git rm -r ./slides-statusreport-$1
else
   echo "no folder slides-statusreport-"$1" found"
fi
unzip $1.zip && rm $1.zip
