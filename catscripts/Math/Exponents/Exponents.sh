#!/bin/bash

egrep -i 'exposant|[0-9]{1,} à la (-|)[0-9]{1,} puissance (de|)|\^[0-9]{1,}' newpages.txt >> Exponents.txt

EXPONENTS=`stat --print=%s Exponents.txt`

if [ $EXPONENTS -ne 0 ];
then
  export CATFILE="Exponents.txt"
  export CATNAME="Exposants"
  $CATEGORIZE
fi

rm Exponents.txt
