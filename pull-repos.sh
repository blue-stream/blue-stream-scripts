#!/bin/bash

cd ..
for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
        echo "------------------------------"+$D+"--------------------------------"
		git checkout master
        git pull
        cd ..
    fi
done