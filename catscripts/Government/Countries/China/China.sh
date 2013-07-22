#!/bin/bash

egrep -i "République de Chine" newpages.txt >> China.txt
egrep -i 'Chine' newpages.txt | egrep -iv 'République de Chine|fine(| )china|princess of China|chine(| )antique|Muraille de Chine|Beijing|Pékin|Hong(| )Kong' >> China.txt #There are two "Republics of China". If one is not named  explicitly, presume the question is about the People's Republic, as it is larger and more internationally recognized
egrep -i "Muraille de Chine" newpages.txt >> GreatWall.txt
egrep -i "Beijing|Pékin" newpages.txt >> Beijing.txt
egrep -i "Hong(| )Kong" newpages.txt >> HongKong.txt 

CHINA=`stat --print=%s China.txt`
WALL=`stat --print=%s GreatWall.txt`
BEIJING=`stat --print=%s Beijing.txt`
HONGKONG=`stat --print=%s HongKong.txt`

if [ $CHINA -ne 0 ];
then
  export CATFILE="China.txt"
  export CATNAME="Chine"
  $CATEGORIZE
fi

if [ $WALL -ne 0 ];
then
  export CATFILE="GreatWall.txt"
  export CATNAME="Muraille de Chine"
  $CATEGORIZE
fi

if [ $BEIJING -ne 0 ];
then
  export CATFILE="Beijing.txt"
  export CATNAME="Pékin"
  $CATEGORIZE
fi

if [ $HONGKONG -ne 0 ];
then
  export CATFILE="HongKong.txt"
  export CATNAME="Hong Kong"
  $CATEGORIZE
fi

rm China.txt
rm GreatWall.txt
rm Beijing.txt
rm HongKong.txt
