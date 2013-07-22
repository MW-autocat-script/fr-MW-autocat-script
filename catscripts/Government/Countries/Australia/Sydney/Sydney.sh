#!/bin/bash

egrep -i 'Sydney(,|)(| )Australie|Port Jackson|Baie (|de) Sydney|Port (|de )Sydney|Australie.+Sydney|Sydney.+Australie' newpages.txt | egrep -iv 'Sydney Opera House|Opéra de Sydney' >> Sydney.txt
egrep -i 'Sydney(| )Opera(| )House' newpages.txt >> SydneyOperaHouse.txt

SYDNEY=`stat --print=%s Sydney.txt`
OPERA=`stat --print=%s SydneyOperaHouse.txt`

if [ $SYDNEY -ne 0 ];
then
  export CATFILE="Sydney.txt"
  export CATNAME="Sydney, Australie"
  $CATEGORIZE
fi

if [ $OPERA -ne 0 ];
then
  export CATFILE="SydneyOperaHouse.txt"
  export CATNAME="Opéra de Sydney"
  $CATEGORIZE
fi

rm SydneyOperaHouse.txt
rm Sydney.txt
