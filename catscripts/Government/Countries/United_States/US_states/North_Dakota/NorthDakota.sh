#!/bin/bash

KEYWORDS_NORTHDAKOTA="North(| )Dakota|Dakota (|du )Nord"

egrep -i "$KEYWORDS_NORTHDAKOTA" newpages.txt >> NorthDakota.txt

NORTHDAKOTA=`stat --print=%s NorthDakota.txt`

if [ $NORTHDAKOTA -ne 0 ];
then
  export CATFILE="NorthDakota.txt"
  export CATNAME="Dakota du Nord"
  $CATEGORIZE
fi

rm NorthDakota.txt
