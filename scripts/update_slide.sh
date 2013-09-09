#!/bin/bash

git checkout gh-pages
wget https://github.com/GDGBremen/slides-statusreport/archive/$1.zip
if [ -d ../slides-statusreport-$1 ]
then
   git rm -r ../slides-statusreport-$1
fi
unzip $1.zip && rm $1.zip
