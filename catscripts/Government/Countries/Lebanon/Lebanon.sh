#!/bin/bash

egrep -i 'Liban' newpages.txt | egrep -iv 'New Jersey|\bNJ\b|bologne|baloney' >> Lebanon.txt

LEBANON=`stat --print=%s Lebanon.txt`

if [ $LEBANON -ne 0 ];
then
  export CATFILE="Lebanon.txt"
  export CATNAME="Liban"
  $CATEGORIZE
fi

rm Lebanon.txt
