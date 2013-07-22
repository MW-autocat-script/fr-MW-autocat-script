#!/bin/bash

egrep -i 'Italy|Italie' newpages.txt | egrep -iv 'Rome|Pompeii|Pise|Venise' >> Italy.txt 
egrep -i '\bRome(|s)\b' newpages.txt | egrep -iv 'Rome antique|Rome(,|)(| )Géorgie' >> Rome.txt
egrep -i "Rome antique|Romains|époque romaine|Auguste César|(empereur )Néron|Caligula" newpages.txt | egrep -iv 'Livre des Romains|Romains [0-9]{1,}\:[0-9]{1,}|Julius Caesar|Jules César' >> AncientRome.txt #Exclude biblical book and Julius Caesar
egrep -i 'Julius Caesar|Jules César' newpages.txt >> JuliusCaesar.txt
egrep -i 'Pise' newpages.txt >> Pisa.txt
egrep -i 'Pompéi' newpages.txt >> Pompeii.txt
egrep -i 'Venise|gondole' newpages.txt >> Venice.txt

ITALY=`stat --print=%s Italy.txt`
ROME=`stat --print=%s Rome.txt`
ANCIENTROME=`stat --print=%s AncientRome.txt`
PISA=`stat --print=%s Pisa.txt`
POMPEII=`stat --print=%s Pompeii.txt`
JCAESAR=`stat --print=%s JuliusCaesar.txt`
VENICE=`stat --print=%s Venice.txt`

if [ $ITALY -ne 0 ];
then
  export CATFILE="Italy.txt"
  export CATNAME="Italie"
  $CATEGORIZE
fi

if [ $ROME -ne 0 ];
then
  export CATFILE="Rome.txt"
  export CATNAME="Rome, Italie"
  $CATEGORIZE
fi

if [ $ANCIENTROME -ne 0 ];
then
  export CATFILE="AncientRome.txt"
  export CATNAME="Rome antique"
  $CATEGORIZE
fi

if [ $PISA -ne 0 ];
then
  export CATFILE="Pisa.txt"
  export CATNAME="Pise, Italie"
  $CATEGORIZE
fi

if [ $POMPEII -ne 0 ];
then
  export CATFILE="Pompeii.txt"
  export CATNAME="Pompéi"
  $CATEGORIZE
fi

if [ $JCAESAR -ne 0 ];
then
  export CATFILE="JuliusCaesar.txt"
  export CATNAME="Jules César"
  $CATEGORIZE
fi

if [ $VENICE -ne 0 ];
then
  export CATFILE="Venice.txt"
  export CATNAME="Venise"
  $CATEGORIZE
fi

rm Italy.txt
rm Rome.txt
rm AncientRome.txt
rm Pisa.txt
rm Pompeii.txt
rm JuliusCaesar.txt
rm Venice.txt
