#!/bin/bash

egrep -i '[0-9]{1,} (fois|foix|foi|multiplier par|multiplié par) [0-9]{1,}' newpages.txt >> Multiplication.txt
egrep -i "C('| |)est quoi [0-9]{1,} x [0-9]{1,}" newpages.txt >> Multiplication.txt
egrep -i '[0-9]{1,} \* [0-9]{1,}' newpages.txt >> Multiplication.txt

MULTIPLICATION=`stat --print=%s Multiplication.txt`

if [ $MULTIPLICATION -ne 0 ];
then
  export CATFILE="Multiplication.txt"
  export CATNAME="Multiplication"
  $CATEGORIZE
fi

rm Multiplication.txt
