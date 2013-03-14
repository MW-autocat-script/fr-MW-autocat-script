#!/bin/bash

egrep -i 'Flyff' newpages.txt >> Flyff.txt

FLYFF=`stat --print=%s Flyff.txt`

if [ $FLYFF -ne 0 ];
then
  export CATFILE="Flyff.txt"
  export CATNAME="Flyff"
  ./catscripts/Categorize.sh
fi

rm Flyff.txt