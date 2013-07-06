#!/bin/bash

KEYWORDS_ADDITION="[0-9]{1,}(|(/|\.)[0-9]{1,}) (plus|\+) [0-9]{1,}(|(/|\.)[0-9]{1,} donne quoi|)C('|)est quoi [0-9]{1,}(|(/|\.)[0-9]{1,}) (plus|\+) [0-9]{1,}(|(/|\.)[0-9]{1,})|C('|)est quoi [a-z]{1,}(|-[a-z]{1,}) plus [a-z]{1,}(|[a-z]{1,})"

egrep -i "$KEYWORDS_ADDITION" newpages.txt >> Addition.txt

ADDITION=`stat --print=%s Addition.txt`

if [ $ADDITION -ne 0 ];
then
  export CATFILE="Addition.txt"
  export CATNAME="Addition"
  $CATEGORIZE
fi

rm Addition.txt
