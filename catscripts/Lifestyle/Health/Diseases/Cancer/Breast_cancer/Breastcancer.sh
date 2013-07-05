#!/bin/bash

egrep -i 'Cancer(| )du(| )sein' newpages.txt > Breastcancer.txt

BREASTCANCER=`stat --print=%s Breastcancer.txt`

if [ $BREASTCANCER -ne 0 ];
then
  export CATFILE="Breastcancer.txt"
  export CATNAME="Cancer du sein"
  $CATEGORIZE
fi

rm Breastcancer.txt
