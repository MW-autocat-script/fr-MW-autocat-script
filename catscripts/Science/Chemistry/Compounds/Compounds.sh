#!/bin/bash

##Carbon compounds

egrep -i 'Dioxyde(| )(de|)(| )carbon(e|)' newpages.txt >> CarbonDioxide.txt
egrep -i 'Monoxyde(| )(de|)(| )carbon(e|)' newpages.txt >> CarbonMonoxide.txt

CO=`stat --print=%s CarbonMonoxide.txt`
COTWO=`stat --print=%s CarbonDioxide.txt`

if [ $CO -ne 0 ];
then
  export CATFILE="CarbonMonoxide.txt"
  export CATNAME="Monoxyde de carbone"
  $CATEGORIZE
fi

if [ $COTWO -ne 0 ];
then
  export CATFILE="CarbonDioxide.txt"
  export CATNAME="Dioxyde de carbone"
  $CATEGORIZE
fi

rm CarbonMonoxide.txt
rm CarbonDioxide.txt
