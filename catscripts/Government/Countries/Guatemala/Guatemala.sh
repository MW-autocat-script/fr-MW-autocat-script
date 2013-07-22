#!/bin/bash

egrep -i 'Guat(e|é|a)mala' newpages.txt >> Guatemala.txt

GUATEMALA=`stat --print=%s Guatemala.txt`

if [ $GUATEMALA -ne 0 ];
then
  export CATFILE="Guatemala.txt"
  export CATNAME="Guatemala"
  $CATEGORIZE
fi

rm Guatemala.txt
