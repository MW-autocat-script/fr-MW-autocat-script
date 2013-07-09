#!/bin/bash

egrep -i 'Maroc' newpages.txt >> Morocco.txt

MOROCCO=`stat --print=%s Morocco.txt`

if [ $MOROCCO -ne 0 ];
then
  export CATFILE="Morocco.txt"
  export CATNAME="Maroc"
  $CATEGORIZE
fi

rm Morocco.txt
