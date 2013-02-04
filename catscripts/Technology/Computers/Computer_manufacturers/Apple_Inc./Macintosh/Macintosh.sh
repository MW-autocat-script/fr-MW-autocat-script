#!/bin/bash

egrep -i 'Apple Macintosh|Mac(| )Pro|Mac(| )Book|\bi(| )book|Power(| )Mac|\bi(| )Mac' newpages.txt >> Macintosh.txt
egrep -i 'on a mac|my mac|for a mac' newpages.txt >> Macintosh.txt

MACINTOSH=`stat --print=%s Macintosh.txt`

if [ $MACINTOSH -ne 0 ];
then
  export CATFILE="Macintosh.txt"
  export CATNAME="Macintosh"
  ./catscripts/Categorize.sh
fi

rm Macintosh.txt