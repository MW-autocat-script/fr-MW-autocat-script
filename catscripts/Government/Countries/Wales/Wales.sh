#!/bin/bash

egrep -i 'Pays de Galles' newpages.txt | egrep -iv 'Jim(|bo|my)(| )Wales|New South Wales' >> Wales.txt

WALES=`stat --print=%s Wales.txt`

if [ $WALES -ne 0 ];
then
  export CATFILE="Wales.txt"
  export CATNAME="Pays de Galles"
  $CATEGORIZE
fi

rm Wales.txt
