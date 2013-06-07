#!/bin/bash

export KEYWORDS_ALEXANDERBELL="Alex(|ander)(| )(|Graham|G\.)(| )Bell"
export KEYWORDS_BENFRANKLIN="Ben(|jamin)(| )Franklin"
export KEYWORDS_GEORGEWASHINGTONCARVER="George(| )(|Washington)(| )Carver"
export KEYWORDS_DAVINCI="da(| )vinci"
export KEYWORDS_EDISON="Edison"

export INVENTORSLIST="$KEYWORDS_ALEXANDERBELL|$KEYWORDS_BENFRANKLIN|$KEYWORDS_GEORGEWASHINGTONCARVER|$KEYWORDS_DAVINCI|$KEYWORDS_EDISON"

egrep -i "$KEYWORDS_ALEXANDERBELL" newpages.txt > AlexanderGrahamBell.txt
egrep -i "$KEYWORDS_BENFRANKLIN" newpages.txt > BenjaminFranklin.txt
egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" newpages.txt > GeorgeWashingtonCarver.txt
egrep -i "$KEYWORDS_DAVINCI" newpages.txt > LeonardoDaVinci.txt
egrep -i "$KEYWORDS_EDISON" newpages.txt > ThomasEdison.txt
egrep -i 'Inventor' newpages.txt | egrep -iv "$INVENTORSLIST" > Inventors.txt

INVENTORS=`stat --print=%s Inventors.txt`
BELL=`stat --print=%s AlexanderGrahamBell.txt`
FRANKLIN=`stat --print=%s BenjaminFranklin.txt`
CARVER=`stat --print=%s GeorgeWashingtonCarver.txt`
DAVINCI=`stat --print=%s LeonardoDaVinci.txt`
EDISON=`stat --print=%s ThomasEdison.txt`

if [ $INVENTORS -ne 0 ];
then
  export CATFILE="Inventors.txt"
  export CATNAME="Inventors"
  $CATEGORIZE
fi

if [ $BELL -ne 0 ];
then
  export CATFILE="AlexanderGrahamBell.txt"
  export CATNAME="Alexander Graham Bell"
  $CATEGORIZE
fi

if [ $FRANKLIN -ne 0 ];
then
  export CATFILE="BenjaminFranklin.txt"
  export CATNAME="Benjamin Franklin"
  $CATEGORIZE
fi

if [ $CARVER -ne 0 ];
then
  export CATFILE="GeorgeWashingtonCarver.txt"
  export CATNAME="George Washington Carver"
  $CATEGORIZEfi
fi

if [ $DAVINCI -ne 0 ];
then
  export CATFILE="LeonardoDaVinci.txt"
  export CATNAME="Leonardo da Vinci"
  $CATEGORIZE
fi

if [ $EDISON -ne 0 ];
then
  export CATFILE="ThomasEdison.txt"
  export CATNAME="Thomas Edison"
  $CATEGORIZE
fi

rm Inventors.txt
rm AlexanderGrahamBell.txt
rm BenjaminFranklin.txt
rm GeorgeWashingtonCarver.txt
rm LeonardoDaVinci.txt
rm ThomasEdison.txt