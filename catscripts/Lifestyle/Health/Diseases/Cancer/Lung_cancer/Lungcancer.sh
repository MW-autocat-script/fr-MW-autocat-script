#!/bin/bash

egrep -i 'Cancer(| )(du|de|)(| )poumon(s|)' newpages.txt > Lungcancer.txt

LUNGCANCER=`stat --print=%s Lungcancer.txt`

if [ $LUNGCANCER -ne 0 ];
then
  export CATFILE="Lungcancer.txt"
  export CATNAME="Cancer du poumon"
  $CATEGORIZE
fi

rm Lungcancer.txt
