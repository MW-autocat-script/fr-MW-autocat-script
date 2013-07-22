#!/bin/bash

egrep -i 'Argentine' newpages.txt >> Argentina.txt
ARGENTINA=`stat --print=%s Argentina.txt`

if [ $ARGENTINA -ne 0 ];
then
  export CATFILE="Argentina.txt"
  export CATNAME="Argentine"
  $CATEGORIZE
fi

rm Argentina.txt
