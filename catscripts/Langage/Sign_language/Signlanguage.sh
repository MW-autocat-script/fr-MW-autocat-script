#!/bin/bash

egrep -i 'langue(s|) des signe(s|)' newpages.txt > Signlanguage.txt

SIGN=`stat --print=%s Signlanguage.txt`

if [ $SIGN -ne 0 ];
then
  export CATFILE="Signlanguage.txt"
  export CATNAME="Langue des signes"
  $CATEGORIZE
fi

rm Signlanguage.txt
