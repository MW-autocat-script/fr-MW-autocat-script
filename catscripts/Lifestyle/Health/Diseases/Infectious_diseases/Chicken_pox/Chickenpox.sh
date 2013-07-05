#!/bin/bash

egrep -i 'varicelle' newpages.txt >> Chickenpox.txt

CHICKENPOX=`stat --print=%s Chickenpox.txt`

if [ $CHICKENPOX -ne 0 ];
then
  export CATFILE="Chickenpox.txt"
  export CATNAME="Varicelle"
  $CATEGORIZE
fi

rm Chickenpox.txt
