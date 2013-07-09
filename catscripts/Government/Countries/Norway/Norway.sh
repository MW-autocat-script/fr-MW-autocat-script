#!/bin/bash

egrep -i 'Norvège' newpages.txt > Norway.txt

NORWAY=`stat --print=%s Norway.txt`

if [ $NORWAY -ne 0 ];
then
  export CATFILE="Norway.txt"
  export CATNAME="Norvège"
  $CATEGORIZE
fi

rm Norway.txt
