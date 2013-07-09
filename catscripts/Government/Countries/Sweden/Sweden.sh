#!/bin/bash

egrep -i 'Suède' newpages.txt > Sweden.txt

SWEDEN=`stat --print=%s Sweden.txt`

if [ $SWEDEN -ne 0 ];
then
  export CATFILE="Sweden.txt"
  export CATNAME="Suède"
  $CATEGORIZE
fi

rm Sweden.txt
