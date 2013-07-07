#!/bin/bash

egrep -i 'Arm(é|e)nie' newpages.txt >> Armenia.txt

ARMENIA=`stat --print=%s Armenia.txt`

if [ $ARMENIA -ne 0 ];
then
  export CATFILE="Armenia.txt"
  export CATNAME="Arménie"
  $CATEGORIZE
fi

rm Armenia.txt
