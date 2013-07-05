#!/bin/bash

egrep -i '[0-9]{1,} divis(é|e|er) par [0-9]{1,}' newpages.txt >> Division.txt
egrep -i "C'est quoi' [0-9]{1,} / [0-9]{1,}" newpages.txt >> Division.txt
egrep -i '[0-9]{1,} ÷ [0-9]{1,}' newpages.txt >> Division.txt

DIVISION=`stat --print=%s Division.txt`

if [ $DIVISION -ne 0 ];
then
  export CATFILE="Division.txt"
  export CATNAME="Division"
  $CATEGORIZE
fi

rm Division.txt
