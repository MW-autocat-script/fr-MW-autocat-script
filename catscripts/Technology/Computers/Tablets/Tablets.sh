#!/bin/bash

egrep -i 'Kindle Fire' newpages.txt >> KindleFire.txt
egrep -i '\biPad' newpages.txt >> iPad.txt
egrep -i "tablet(te|) (d|)('|)(computer|pc|ordinateur)|Android tablet(te|)|tablet(te|) Android|Windows 8 tablet(te|)|tabblet(te|) Windows 8" newpages.txt | egrep -iv 'iPad|Kindle Fire' >> Tabletcomputers.txt

KINDLE=`stat --print=%s KindleFire.txt`
IPAD=`stat --print=%s iPad.txt`
TABLETS=`stat --print=%s Tabletcomputers.txt`

if [ $KINDLE -ne 0 ];
then
  export CATFILE="KindleFire.txt"
  export CATNAME="Kindle Fire"
  $CATEGORIZE
fi

if [ $IPAD -ne 0 ];
then
  export CATFILE="iPad.txt"
  export CATNAME="iPad"
  $CATEGORIZE
fi

if [ $TABLETS -ne 0 ];
then
  export CATFILE="Tabletcomputers.txt"
  export CATNAME="Tablette d'ordinateurs"
  $CATEGORIZE
fi

rm KindleFire.txt
rm iPad.txt
rm Tabletcomputers.txt
