#!/bin/bash

git checkout gh-pages
wget https://github.com/GDGBremen/slides-statusreport-$1/archive/$1.zip
git rm slides-statusreport-$1
unzip slides-statusreport-$1.zip && rm slides-statusreport-$1.zip
git add -u
git add .
git commit -m "updated gh-pages through update script"
git push