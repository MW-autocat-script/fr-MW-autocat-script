#!/bin/bash

KEYWORDS_AIRBENDER="\bAang|Katara|\bToph(|s)\b|(air|fire|water|earth)(| )(bender|tribe|people)|avatar cycle|\bSokka|\bZuko|\bAppa(|(|')s)\b|\bIroh(|s)\b|\bMomo\b|\bAzula\b|\bOzal\b"
KEYWORDS_AIRBENDER_EXCLUDE="Momo (Sohma|Hinamori|Adachi)|Bleach"

egrep -i "$KEYWORDS_AIRBENDER" newpages.txt | egrep -iv "$KEYWORDS_AIRBENDER_EXCLUDE" >> TheLastAirbender.txt

AVATAR=`stat --print=%s TheLastAirbender.txt`

if [ $AVATAR -ne 0 ];
then
  export CATFILE="TheLastAirbender.txt"
  export CATNAME="Avatar, le dernier maître de l'air"
  $CATEGORIZE
fi

rm TheLastAirbender.txt
