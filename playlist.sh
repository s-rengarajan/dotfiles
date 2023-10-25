#!/bin/bash
#
# bash script to create playlist files in music subdirectories
#
# Steve Carlson (stevengcarlson@gmail.com)

find . -type d |
while read subdir
do
  rm -f "$subdir"/*.m3u
  for filename in "$subdir"/*
  do
    if [ ${filename: -4} == ".mp3" ] || [ ${filename: -5} == ".flac" ] || [ ${filename: -5} == ".loss" ] || [ ${filename: -5} == ".aiff" ] || [ ${filename: -4} == ".aif" ] || [ ${filename: -5} == ".opus" ]
    then
      readlink -f "${filename}" >> ./"$subdir"/"${subdir##*/}.m3u"
    fi
  done

done
