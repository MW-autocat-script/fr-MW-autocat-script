#!/bin/bash

egrep -i 'Macédoine' newpages.txt >> Macedonia.txt

MACEDONIA=`stat --print=%s Macedonia.txt`

if [ $MACEDONIA -ne 0 ];
then
  export CATFILE="Macedonia.txt"
  export CATNAME="Macédoine"
  $CATEGORIZE
fi

rm Macedonia.txt
