#!/bin/bash

egrep -i 'Nouvelle(-| |)Zélande' newpages.txt >> NewZealand.txt
egrep -i ' NZ\b' newpages.txt >> NewZealand.txt

NEWZEALAND=`stat --print=%s NewZealand.txt`

if [ $NEWZEALAND -ne 0 ];
then
  export CATFILE="NewZealand.txt"
  export CATNAME="Nouvelle-Zélande"
  $CATEGORIZE
fi

rm NewZealand.txt
