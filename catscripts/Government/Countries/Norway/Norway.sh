#!/bin/bash

egrep -i 'Norway' newpages.txt > Norway.txt

NORWAY=`stat --print=%s Norway.txt`

if [ $NORWAY -ne 0 ];
then
  export CATFILE="Norway.txt"
  export CATNAME="Norway"
  ./catscripts/Categorize.sh
fi

rm Norway.txt