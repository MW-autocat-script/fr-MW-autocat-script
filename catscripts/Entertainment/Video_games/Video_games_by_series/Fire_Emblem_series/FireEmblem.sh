#!/bin/bash

egrep -i 'Fire(| )Emblem' newpages.txt >> FireEmblem.txt

EMBLEM=`stat --print=%s FireEmblem.txt`

if [ $EMBLEM -ne 0 ];
then
  export CATFILE="FireEmblem.txt"
  export CATNAME="Séries Fire Emblem"
  $CATEGORIZE
fi

rm FireEmblem.txt
  