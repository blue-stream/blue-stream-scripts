#!/bin/bash

cd ..
for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
        git pull
        cd ..
    fi
done