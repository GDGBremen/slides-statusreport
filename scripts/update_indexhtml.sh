#!/bin/bash

$CONTENT = "nix";

sed -e "s;%DIR%;$CONTENT;" indexhtml > index.html