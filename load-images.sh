#!/bin/bash
echo "------------------------------Load images--------------------------------"
cd ../docker-images
for F in *; do
    echo "------------------------------"$F"--------------------------------"
    docker load --input "$F"
done