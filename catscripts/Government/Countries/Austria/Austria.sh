#!/bin/bash

egrep -i 'Austrie' newpages.txt >> Austria.txt

AUSTRIA=`stat --print=%s Austria.txt`

if [ $AUSTRIA -ne 0 ];
then
  export CATFILE="Austria.txt"
  export CATNAME="Austrie"
  $CATEGORIZE
fi

rm Austria.txt
