#!/bin/sh
PATHTOUNITS="/home/srengarajan/Documents/Metadata_Extensions/math/otis/units"
CATEGORY=$2
NAME=$(echo $1 | cut -d "." -f 1)
pt1=$(echo $NAME | cut -d "-" -f 1)
pt2=$(echo $NAME | cut -d "-" -f 2)
newname=$(echo "${pt2}_${pt1}.pdf")
foldername=$(echo "${pt2}_${pt1}")
mkdir "${PATHTOUNITS}/${CATEGORY}/${foldername}"
find . -type f |
while read subdir
do
	subdir=$(echo $subdir | cut -d "/" -f 2)
	if [ $subdir = $1 ]
	then
		filepath=$(find -name "$subdir" -exec readlink -f {} \;)
		mv $filepath "${PATHTOUNITS}/${CATEGORY}/${foldername}/${newname}"
	elif [ $subdir = $(echo "${pt1}-tex-${pt2}.tex") ]
	then
		filepath=$(find -name "$subdir" -exec readlink -f {} \;)
		mv $filepath $(echo "${PATHTOUNITS}/${CATEGORY}/${foldername}/${pt2}_${pt1}_sol.tex")
	fi
done
