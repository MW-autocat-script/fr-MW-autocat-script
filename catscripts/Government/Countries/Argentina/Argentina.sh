#!/bin/bash

egrep -i 'Aregntine' newpages.txt >> Argentina.txt
ARGENTINA=`stat --print=%s Argentina.txt`

if [ $ARGENTINA -ne 0 ];
then
  export CATFILE="Aregntina.txt"
  export CATNAME="Argentine"
  $CATEGORIZE
fi

rm Argentina.txt
