#!/bin/bash

egrep -i 'Népal' newpages.txt >> Nepal.txt

NEPAL=`stat --print=%s Nepal.txt`

if [ $NEPAL -ne 0 ];
then
  export CATFILE="Nepal.txt"
  export CATNAME="Népal"
  $CATEGORIZE
fi

rm Nepal.txt
