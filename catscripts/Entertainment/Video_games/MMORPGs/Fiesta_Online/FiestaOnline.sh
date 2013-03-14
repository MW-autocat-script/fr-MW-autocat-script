#!/bin/bash

egrep -i 'Fiesta(| )Online' newpages.txt >> FiestaOnline.txt

FIESTA=`stat --print=%s FiestaOnline.txt`

if [ $FIESTA -ne 0 ];
then
  export CATFILE="FiestaOnline.txt"
  export CATNAME="Fiesta Online"
  ./catscripts/Categorize.sh
fi

rm FiestaOnline.txt