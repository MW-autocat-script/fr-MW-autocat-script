#!/bin/bash

egrep -i '\bChili\b' newpages.txt >> Chile.txt

CHILE=`stat --print=%s Chile.txt`

if [ $CHILE -ne 0 ];
then
  export CATFILE="Chile.txt"
  export CATNAME="Chili"
  $CATEGORIZE
fi

rm Chile.txt
