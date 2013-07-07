#!/bin/bash

egrep -i 'Irlande(| )du(| )Nord' newpages.txt | egrep -iv 'Belfast' >> NorthernIreland.txt
egrep -i 'Belfast' newpages.txt >> Belfast.txt

NIRELAND=`stat --print=%s NorthernIreland.txt`
BELFAST=`stat --print=%s Belfast.txt`

if [ $NIRELAND -ne 0 ];
then
  export CATFILE="NorthernIreland.txt"
  export CATNAME="Irlande du Nord"
  $CATEGORIZE
fi

if [ $BELFAST -ne 0 ];
then
  export CATFILE="Belfast.txt"
  export CATNAME="Belfast"
  $CATEGORIZE
fi

rm NorthernIreland.txt
rm Belfast.txt
