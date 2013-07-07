#!/bin/bash

egrep -i '\bInde\b' newpages.txt >> India.txt

INDIA=`stat --print=%s India.txt`

if [ $INDIA -ne 0 ];
then
  export CATFILE="India.txt"
  export CATNAME="Inde"
  $CATEGORIZE
fi

rm India.txt
