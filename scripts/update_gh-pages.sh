#!/bin/bash

# TODO call this script for all branches
sh ./update_slide.sh $1

# creates a new index.html file by using the template indexhtml
sh ./update_indexhtml.sh