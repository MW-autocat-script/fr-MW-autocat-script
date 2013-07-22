#!/bin/bash

egrep -i 'Belgique|Belge' newpages.txt >> Belgium.txt

BELGIUM=`stat --print=%s Belgium.txt`

if [ $BELGIUM -ne 0 ];
then
  export CATFILE="Belgium.txt"
  export CATNAME="Belgique"
  $CATEGORIZE
fi

rm Belgium.txt
