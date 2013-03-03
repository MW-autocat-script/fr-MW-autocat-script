#!/bin/bash

egrep -i '\bSikh' newpages.txt >> Sikhism.txt

SIKHISM=`stat --print=%s Sikhism.txt`

if [ $SIKHISM -ne 0 ];
then
  export CATFILE="Sikhism.txt"
  export CATNAME="Sikhism"
  ./catscripts/Categorize.sh
fi

rm Sikhism.txt