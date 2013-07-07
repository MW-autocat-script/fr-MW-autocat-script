#!/bin/bash

egrep -i "Bolivie" newpages.txt > Bolivia.txt

BOLIVIA=`stat --print=%s Bolivia.txt`

if [ $BOLIVIA -ne 0 ];
then
  export CATFILE="Bolivia.txt"
  export CATNAME="Bolivie"
  $CATEGORIZE
fi

rm Bolivia.txt
