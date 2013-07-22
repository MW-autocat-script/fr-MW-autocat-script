#!/bin/bash

egrep -i 'Ha(i|ï)ti|Port(-| )au(-| )Prince' newpages.txt >> Haiti.txt

HAITI=`stat --print=%s Haiti.txt`

if [ $HAITI -ne 0 ];
then
  export CATFILE="Haiti.txt"
  export CATNAME="Haïti"
  $CATEGORIZE
fi

rm Haiti.txt
