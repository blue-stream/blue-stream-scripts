#!/bin/bash
echo "------------------------------Saving images--------------------------------"
docker save $(docker images | sed '1d' | awk '{print $1 ":" $2}' | grep blue-stream/) -o blue-stream-v1.1.3.tar