#!/bin/bash

egrep -i 'physics' newpages.txt >> Physics.txt
egrep -i 'conduction de( |)(la|) chaleur' newpages.txt >> Physics.txt

PHYSICS=`stat --print=%s Physics.txt`

if [ $PHYSICS -ne 0 ];
then
  export CATFILE="Physics.txt"
  export CATNAME="Physiques"
  $CATEGORIZE
fi

rm Physics.txt
