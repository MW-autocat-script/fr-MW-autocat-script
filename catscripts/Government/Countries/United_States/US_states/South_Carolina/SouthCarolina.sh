#!/bin/bash

egrep -i 'South(| )Carolina|Caroline (|du )Sud' newpages.txt >> SouthCarolina.txt

SOUTHCAROLINA=`stat --print=%s SouthCarolina.txt`

if [ $SOUTHCAROLINA -ne 0 ];
then
  export CATFILE="SouthCarolina.txt"
  export CATNAME="Caroline du Sud"
  $CATEGORIZE
fi

rm SouthCarolina.txt
