#!/bin/bash

egrep -i 'Irlande' newpages.txt | egrep -iv 'Irlande(| )du(| )Nord' >> Ireland.txt

IRELAND=`stat --print=%s Ireland.txt`

if [ $IRELAND -ne 0 ];
then
  export CATFILE="Ireland.txt"
  export CATNAME="République d'Irlande"
  $CATEGORIZE
fi

rm Ireland.txt
