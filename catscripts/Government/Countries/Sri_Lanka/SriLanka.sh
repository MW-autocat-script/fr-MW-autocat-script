#!/bin/bash

egrep -i 'Sri(| )Lanka|Ceyl(o|a)n' newpages.txt >> SriLanka.txt

SRILANKA=`stat --print=%s SriLanka.txt`

if [ $SRILANKA -ne 0 ];
then
  export CATFILE="SriLanka.txt"
  export CATNAME="Sri Lanka"
  $CATEGORIZE
fi

rm SriLanka.txt
