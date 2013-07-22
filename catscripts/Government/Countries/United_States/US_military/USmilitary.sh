#!/bin/bash

egrep -i '(Marine|Marines|)(US|U\.S\.|United States|EU|E\.U\.|américaine) Marine(|s) (|Corps)|USMC' newpages.txt >> USMC.txt
egrep -i 'Armée (US|U\.S\.|United States|EU|E\.U\.|américaine)' newpages.txt >> USArmy.txt
egrep -i "Armée aérienne (des|)( |)(US|U\.S\.|United States|EU|E\.U\.|américaine)|USAF\b" newpages.txt >> USAF.txt
egrep -i "Armée marine (des|)( |)(US|U\.S\.|United States|EU|E\.U\.|américaine)|\bUSN\b" newpages.txt >> USNavy.txt
egrep -i "Garde(-| )côtes (des|)( |)(US|U\.S\.|United States|EU|E\.U\.|américain(e|s))|USCG" newpages.txt >> USCG.txt
egrep -i '\bdod\b|Département de Défen(c|s)e|Forces armées (US|U\.S\.|United States|EU|E\.U\.|américaine(s))' newpages.txt | egrep -iv 'Lott Dod|Army|Navy|Air Force|Navy|Coast Guard|Marine' >> USMilitary.txt

USMC=`stat --print=%s USMC.txt`
USARMY=`stat --print=%s USArmy.txt`
USAF=`stat --print=%s USAF.txt`
USNAVY=`stat --print=%s USNavy.txt`
USCG=`stat --print=%s USCG.txt`
USMILITARY=`stat --print=%s USMilitary.txt`

if [ $USMC -ne 0 ];
then
  export CATFILE="USMC.txt"
  export CATNAME="United States Marine Corps"
  $CATEGORIZE
fi

if [ $USARMY -ne 0 ];
then
  export CATFILE="USArmy.txt"
  export CATNAME="Armée des États-Unis"
  $CATEGORIZE
fi

if [ $USAF -ne 0 ];
then
  export CATFILE="USAF.txt"
  export CATNAME="United States Air Force"
  $CATEGORIZE
fi

if [ $USNAVY -ne 0 ];
then
  export CATFILE="USNavy.txt"
  export CATNAME="United States Navy"
  $CATEGORIZE
fi

if [ $USCG -ne 0 ];
then
  export CATFILE="USCG.txt"
  export CATNAME="United States Coast Guard"
  $CATEGORIZE
fi

if [ $USMILITARY -ne 0 ];
then
  export CATFILE="USMilitary.txt"
  export CATNAME="Forces armées des États-Unis"
  $CATEGORIZE
fi

rm USMC.txt
rm USArmy.txt
rm USAF.txt
rm USNavy.txt
rm USCG.txt
rm USMilitary.txt
