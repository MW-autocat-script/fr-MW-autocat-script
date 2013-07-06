#!/bin/bash

egrep -i 'télévision|série(s)|télévisée' newpages.txt \
| egrep -iv 'iCarly' \
>> Series.txt

SERIES=`stat --print=%s Series.txt`

if [ $SERIES -ne 0 ];
then
  export CATFILE="Series.txt"
  export CATNAME="Télévision"
  $CATEGORIZE
fi

rm Series.txt
