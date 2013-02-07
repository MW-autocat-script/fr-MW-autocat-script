#!/bin/bash

egrep -i 'Open(| )BSD' newpages.txt >> OpenBSD.txt

OPENBSD=`stat --print=%s OpenBSD.txt`

if [ $OPENBSD -ne 0 ];
then
  export CATFILE="OpenBSD.txt"
  export CATNAME="OpenBSD"
  ./catscripts/Categorize.sh
fi

rm OpenBSD.txt