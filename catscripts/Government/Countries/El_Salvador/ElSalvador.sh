#!/bin/bash

egrep -i 'Salvador' newpages.txt >> ElSalvador.txt

ELSALVADOR=`stat --print=%s ElSalvador.txt`

if [ $ELSALVADOR -ne 0 ];
then
  export CATFILE="ElSalvador.txt"
  export CATNAME="Salvador"
  $CATEGORIZE
fi

rm ElSalvador.txt
