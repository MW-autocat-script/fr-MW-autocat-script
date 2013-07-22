#!/bin/bash

egrep -i 'Nig(e|é)ria' newpages.txt >> Nigeria.txt

NIGERIA=`stat --print=%s Nigeria.txt`

if [ $NIGERIA -ne 0 ];
then
  export CATFILE="Nigeria.txt"
  export CATNAME="Nigeria"
  $CATEGORIZE
fi

rm Nigeria.txt
