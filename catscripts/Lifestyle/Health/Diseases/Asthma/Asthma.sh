#!/bin/bash

egrep -i 'asthme' newpages.txt > Asthma.txt

ASTHMA=`stat --print=%s Asthma.txt`

if [ $ASTHMA -ne 0 ];
then
  export CATFILE="Asthma.txt"
  export CATNAME="Asthme"
  $CATEGORIZE
fi

rm Asthma.txt
