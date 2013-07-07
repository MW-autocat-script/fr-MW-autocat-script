#!/bin/bash

egrep -i 'Jamaica|Jama(i|ï)que' newpages.txt >> Jamaica.txt

JAMAICA=`stat --print=%s Jamaica.txt`

if [ $JAMAICA -ne 0 ];
then
  export CATFILE="Jamaica.txt"
  export CATNAME="Jamaïque"
  $CATEGORIZE
fi

rm Jamaica.txt
