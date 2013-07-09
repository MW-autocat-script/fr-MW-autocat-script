#!/bin/bash

egrep -i 'Tunisie' newpages.txt >> Tunisia.txt

TUNISIA=`stat --print=%s Tunisia.txt`

if [ $TUNISIA -ne 0 ];
then
  export CATFILE="Tunisia.txt"
  export CATNAME="Tunisie"
  $CATEGORIZE
fi

rm Tunisia.txt
