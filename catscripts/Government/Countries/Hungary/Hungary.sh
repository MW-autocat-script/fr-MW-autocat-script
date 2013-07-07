#!/bin/bash

egrep -i 'Hongrie' newpages.txt | egrep -iv 'Autriche( |-)Hongrie' >> Hungary.txt

HUNGARY=`stat --print=%s Hungary.txt`

if [ $HUNGARY -ne 0 ];
then
  export CATFILE="Hungary.txt"
  export CATNAME="Hongrie"
  $CATEGORIZE
fi

rm Hungary.txt
