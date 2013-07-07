#!/bin/bash

egrep -i 'Chypre' newpages.txt >> Cyprus.txt

CYPRUS=`stat --print=%s Cyprus.txt`

if [ $CYPRUS -ne 0 ];
then
  export CATFILE="Cyprus.txt"
  export CATNAME="Chypre"
  $CATEGORIZE
fi

rm Cyprus.txt
