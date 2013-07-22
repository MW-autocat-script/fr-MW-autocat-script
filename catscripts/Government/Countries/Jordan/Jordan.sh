#!/bin/bash

KEYWORDS_JORDAN="(roi|reine|prince(|sse)).+ de Jordanie|(royaume|drapeau|gouvernement) de Jordanie"

egrep -i "$KEYWORDS_JORDAN" newpages.txt >> Jordan.txt

JORDAN=`stat --print=%s Jordan.txt`

if [ $JORDAN -ne 0 ];
then
  export CATFILE="Jordan.txt"
  export CATNAME="Jordanie"
  $CATEGORIZE
fi

rm Jordan.txt
