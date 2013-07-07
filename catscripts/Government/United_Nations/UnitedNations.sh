#!/bin/bash

egrep -i 'United Nations|^U\.N(|\.)| U\.N(|\.) |Nation(s|)(-| |)Uni(es|s|e|)' newpages.txt > UnitedNations.txt

UNITED=`stat --print=%s UnitedNations.txt`

if [ $UNITED -ne 0 ];
then
  export CATFILE="UnitedNations.txt"
  export CATNAME="Nations Unies"
  $CATEGORIZE
fi

rm UnitedNations.txt
