#!/bin/bash

egrep -i 'Libye|Ghadafi|Kadhafi' newpages.txt >> Libya.txt

LIBYA=`stat --print=%s Libya.txt`

if [ $LIBYA -ne 0 ];
then
  export CATFILE="Libya.txt"
  export CATNAME="Libye"
  $CATEGORIZE
fi

rm Libya.txt
