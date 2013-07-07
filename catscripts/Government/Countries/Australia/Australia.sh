#!/bin/bash

egrep -i 'Australie' newpages.txt | egrep -iv 'Canberra|Sydney|Melbourne' >> Australia.txt

AUSTRALIA=`stat --print=%s Australia.txt`

if [ $AUSTRALIA -ne 0 ];
then
  export CATFILE="Australia.txt"
  export CATNAME="Australie"
  $CATEGORIZE
fi

CURRENTDIR="./catscripts/Government/Countries/Australia"

$CURRENTDIR/Canberra/Canberra.sh
$CURRENTDIR/Sydney/Sydney.sh
$CURRENTDIR/Melbourne/Melbourne.sh

rm Australia.txt
