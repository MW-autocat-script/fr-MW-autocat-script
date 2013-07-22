#!/bin/bash

egrep -i '\bIran|T(e|é)h(|e|é)ran' newpages.txt >> Iran.txt

IRAN=`stat --print=%s Iran.txt`

if [ $IRAN -ne 0 ];
then
  export CATFILE="Iran.txt"
  export CATNAME="Iran"
  $CATEGORIZE
fi

rm Iran.txt
