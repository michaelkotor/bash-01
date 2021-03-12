#!/bin/bash
dir=~/HouseKeepingScripts
mkdir -p $dir

for (( i = 0; i < 24; i++ )); do
    dateName=$(date '+%d-%m-%Y')
    folder=$dir/$i"h"
    mkdir -p $folder

    fileName=$dateName.txt

    realpath $fileName > $folder/$fileName
done


