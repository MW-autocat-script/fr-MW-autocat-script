#!/bin/bash

egrep -i 'Lituanie' newpages.txt >> Lithuania.txt

LITHUANIA=`stat --print=%s Lithuania.txt`

if [ $LITHUANIA -ne 0 ];
then
  export CATFILE="Lithuania.txt"
  export CATNAME="Lituanie"
  $CATEGORIZE
fi

rm Lithuania.txt
