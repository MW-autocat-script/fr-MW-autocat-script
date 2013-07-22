#!/bin/bash

egrep -i 'United(| )Kingdom|\bUK\b|\bU\.K\b|Royaume(-| |)Uni|R-U' newpages.txt | egrep -iv 'Angeleterre|Écosse|Pays de Galles|Irlande du Nord' >> UnitedKingdom.txt 

UNITEDKINGDOM=`stat --print=%s UnitedKingdom.txt`

if [ $UNITEDKINGDOM -ne 0 ];
then
  export CATFILE="UnitedKingdom.txt"
  export CATNAME="Royaume-Uni"
  $CATEGORIZE
fi

rm UnitedKingdom.txt
