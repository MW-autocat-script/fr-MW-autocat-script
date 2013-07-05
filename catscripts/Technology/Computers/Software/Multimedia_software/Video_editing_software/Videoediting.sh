#!/bin/bash

egrep -i 'Windows(|(| )Live)(| )Movie(| )Maker' newpages.txt >> WindowsMovieMaker.txt
egrep -i 'Adobe(| )Premiere|Premier(| )Pro' newpages.txt >> AdobePremierePro.txt
egrep -i '\biMovie|Nero Vision' newpages.txt >> Videoediting.txt
egrep -i 'Corel Video(| )Studio' newpages.txt >> Videoediting.txt
egrep -i 'modification(s|) de vid(é|e)o|vid(é|e)o edit|edit vid(é|e)o|convert.+vid(é|e)o|vid(é|e)o.+convert' newpages.txt | egrep -iv 'Windows(|(| )Live)(| )Movie(| )Maker|Adobe(| )Premiere|Premier(| )Pro|\biMovie' >> Videoediting.txt

WMM=`stat --print=%s WindowsMovieMaker.txt`
PREMIERE=`stat --print=%s AdobePremierePro.txt`
VIDEO=`stat --print=%s Videoediting.txt`

if [ $VIDEO -ne 0 ];
then
  export CATFILE="Videoediting.txt"
  export CATNAME="Logiciel de montage vidéo"
  $CATEGORIZE
fi

if [ $WMM -ne 0 ];
then
  export CATFILE="WindowsMovieMaker.txt"
  export CATNAME="Windows Movie Maker"
  $CATEGORIZE
fi

if [ $PREMIERE -ne 0 ];
then
  export CATFILE="AdobePremierePro.txt"
  export CATNAME="Adobe Premiere Pro"
  $CATEGORIZE
fi

rm WindowsMovieMaker.txt
rm AdobePremierePro.txt
rm Videoediting.txt
