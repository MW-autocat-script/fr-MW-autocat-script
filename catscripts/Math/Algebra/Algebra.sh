#!/bin/bash

KEYWORDS_ALGEBRA="Algèbre"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Algebra (Algèbre)\n"
  fi

  ALGEBRA="$(egrep -i "$KEYWORDS_ALGEBRA" newpages.txt)"

  if [ "$ALGEBRA" != "" ];
  then
    printf "%s" "$ALGEBRA" > Algebra.txt
    export CATFILE="Algebra.txt"
    export CATNAME="Algèbre"
    $CATEGORIZE
    rm Algebra.txt
    unset ALGEBRA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Algebra (Algèbre)\n"
  fi

fi
