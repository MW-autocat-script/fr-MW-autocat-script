#!/bin/bash

egrep -i 'North(| )Carolina|Caroline (|du )Nord' newpages.txt >> NorthCarolina.txt

NORTHCAROLINA=`stat --print=%s NorthCarolina.txt`

if [ $NORTHCAROLINA -ne 0 ];
then
  export CATFILE="NorthCarolina.txt"
  export CATNAME="Caroline du Nord"
  $CATEGORIZE
fi

rm NorthCarolina.txt
