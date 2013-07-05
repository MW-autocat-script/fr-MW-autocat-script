#!/bin/bash

KEYWORDS_ALGEBRA="Algèbre"

egrep -i "$KEYWORDS_ALGEBRA" newpages.txt >> Algebra.txt

ALGEBRA=`stat --print=%s Algebra.txt`

if [ $ALGEBRA -ne 0 ];
then
  export CATFILE="Algebra.txt"
  export CATNAME="Algèbre"
  $CATEGORIZE
fi

rm Algebra.txt
