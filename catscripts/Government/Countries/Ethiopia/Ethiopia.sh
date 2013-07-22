#!/bin/bash

egrep -i 'Éthiopie|Abyssinie' newpages.txt >> Ethiopia.txt

ETHIOPIA=`stat --print=%s Ethiopia.txt`

if [ $ETHIOPIA -ne 0 ];
then
  export CATFILE="Ethiopia.txt"
  export CATNAME="Éthiopie"
  $CATEGORIZE
fi

rm Ethiopia.txt
