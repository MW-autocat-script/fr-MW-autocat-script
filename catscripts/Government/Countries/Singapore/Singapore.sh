#!/bin/bash

egrep -i 'Singapour' newpages.txt >> Singapore.txt

SINGAPORE=`stat --print=%s Singapore.txt`

if [ $SINGAPORE -ne 0 ];
then
  export CATFILE="Singapore.txt"
  export CATNAME="Singapour"
  $CATEGORIZE
fi

rm Singapore.txt
