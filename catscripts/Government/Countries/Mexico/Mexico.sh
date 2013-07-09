#!/bin/bash

egrep -i 'Mexique|Tijuana' newpages.txt | egrep -iv 'Nouveau Mexique' > Mexico.txt

MEXICO=`stat --print=%s Mexico.txt`

if [ $MEXICO -ne 0 ];
then
  export CATFILE="Mexico.txt"
  export CATNAME="Mexique"
  $CATEGORIZE
fi

rm Mexico.txt
