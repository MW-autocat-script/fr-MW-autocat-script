#!/bin/bash

egrep -i '\bnom(|s)\b|pronoms(|s)\b|\bverbe(|s)\b|adverbe|adjecti(f|ve)|pr(é|e)position|conjonction|participe|interjection|parti(es|s|e) (de|du) discours' newpages.txt >> PartsOfSpeech.txt

SPEECH=`stat --print=%s PartsOfSpeech.txt`

if [ $SPEECH -ne 0 ];
then
  export CATFILE="PartsOfSpeech.txt"
  export CATNAME="Parties de discours"
  $CATEGORIZE
fi

rm PartsOfSpeech.txt
