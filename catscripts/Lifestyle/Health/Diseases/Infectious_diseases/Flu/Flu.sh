#!/bin/bash

egrep -i 'grippe\b' newpages.txt | egrep -iv 'H1N1|grippe porcine' >> Flu.txt
egrep -i 'H1N1|grippe porcine' newpages.txt >> SwineFlu.txt

FLU=`stat --print=%s Flu.txt`
SWINE=`stat --print=%s SwineFlu.txt`

if [ $FLU -ne 0 ];
then
  export CATFILE="Flu.txt"
  export CATNAME="Grippe"
  $CATEGORIZE
fi

if [ $SWINE -ne 0 ];
then
  export CATFILE="SwineFlu.txt"
  export CATNAME="Grippe porcine"
  $CATEGORIZE
fi

rm Flu.txt
rm SwineFlu.txt
