#!/bin/bash

cd ..

git checkout gh-pages
wget https://github.com/GDGBremen/slides-statusreport-$1/archive/$1.zip
if [ -d ./slides-statusreport-$1];
then
   git rm slides-statusreport-$1
fi
unzip slides-statusreport-$1.zip && rm slides-statusreport-$1.zip