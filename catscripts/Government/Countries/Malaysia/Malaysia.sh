#!/bin/bash

egrep -i 'Malaisie' newpages.txt >> Malaysia.txt

MALAYSIA=`stat --print=%s Malaysia.txt`

if [ $MALAYSIA -ne 0 ];
then
  export CATFILE="Malaysia.txt"
  export CATNAME="Malaisie"
  $CATEGORIZE
fi

rm Malaysia.txt
