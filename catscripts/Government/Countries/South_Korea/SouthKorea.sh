#!/bin/bash

egrep -i 'Corée du Sud' newpages.txt >> SouthKorea.txt
egrep -i 'Corée\b' newpages.txt | egrep -iv 'Corée du Nord' >> SouthKorea.txt #Questions that ask about "Korea" are probably referring to South Korea

SKOREA=`stat --print=%s SouthKorea.txt`

if [ $SKOREA -ne 0 ];
then
  export CATFILE="SouthKorea.txt"
  export CATNAME="Corée du Sud"
  $CATEGORIZE
fi

rm SouthKorea.txt
