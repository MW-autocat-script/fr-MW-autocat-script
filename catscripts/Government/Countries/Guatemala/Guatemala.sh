#!/bin/bash

egrep -i 'Guat(e|é)mala|Guatamala' newpages.txt >> Guatemala.txt

GUATEMALA=`stat --print=%s Guatemala.txt`

if [ $GUATEMALA -ne 0 ];
then
  export CATFILE="Guatemala.txt"
  export CATNAME="Guatémala"
  $CATEGORIZE
fi

rm Guatemala.txt
