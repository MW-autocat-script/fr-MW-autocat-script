#!/bin/bash

egrep -i 'New(| )Mexico|New(| )Mexican|Nouveau(-| )Mexique' newpages.txt >> NewMexico.txt

NEWMEXICO=`stat --print=%s NewMexico.txt`

if [ $NEWMEXICO -ne 0 ];
then
  export CATFILE="NewMexico.txt"
  export CATNAME="Nouveau-Mexique"
  $CATEGORIZE
fi

rm NewMexico.txt
