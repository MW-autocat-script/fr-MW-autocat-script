#!/bin/bash

egrep -i '\bActinium' newpages.txt >>  Actinium.txt
egrep -i 'Thorium' newpages.txt | egrep -iv 'World of Warcraft' >> Thorium.txt
egrep -i 'Protactinium' newpages.txt >>  Protactinium.txt
egrep -i 'Uranium' newpages.txt >> Uranium.txt
egrep -i 'Neptunium' newpages.txt >> Neptunium.txt
egrep -i 'Plutonium' newpages.txt | egrep -iv 'The Sims|Duke Nukem' >> Plutonium.txt
egrep -i 'Americium' newpages.txt >> Americium.txt
egrep -i 'Curium' newpages.txt >> Curium.txt
egrep -i '\bBerkelium' newpages.txt >> Berkelium.txt
egrep -i 'Californium' newpages.txt >> Californium.txt
egrep -i 'Einsteinium' newpages.txt >> Einsteinium.txt
egrep -i '\bFermium' newpages.txt >> Fermium.txt
egrep -i 'Mendelevium' newpages.txt >> Mendelevium.txt
egrep -i 'Nobelium' newpages.txt >> Nobelium.txt
egrep -i 'Lawrencium' newpages.txt >> Lawrencium.txt

ACTINIUM=`stat --print=%s Actinium.txt`
THORIUM=`stat --print=%s Thorium.txt`
PRASEODYMIUM=`stat --print=%s Protactinium.txt`
URANIUM=`stat --print=%s Uranium.txt`
NEPTUNIUM=`stat --print=%s Neptunium.txt`
PLUTONIUM=`stat --print=%s Plutonium.txt`
AMERCIUM=`stat --print=%s Americium.txt`
CURIUM=`stat --print=%s Curium.txt`
BERKELIUM=`stat --print=%s Berkelium.txt`
CALIFORNIUM=`stat --print=%s Californium.txt`
EINSTEINIUM=`stat --print=%s Einsteinium.txt`
FERMIUM=`stat --print=%s Fermium.txt`
MENDELEVIUM=`stat --print=%s Mendelevium.txt`
NOBELIUM=`stat --print=%s Nobelium.txt`
LAWRENCIUM=`stat --print=%s Lawrencium.txt`

if [ $ACTINIUM -ne 0 ] ;
then
   export CATFILE="Actinium.txt"
   export CATNAME="Actinium"
   $CATEGORIZE
fi

if [ $THORIUM -ne 0 ] ;
then
   export CATFILE="Thorium.txt"
   export CATNAME="Thorium"
   $CATEGORIZE
fi

if [ $PRASEODYMIUM -ne 0 ] ;
then
   export CATFILE="Protactinium.txt"
   export CATNAME="Protactinium"
   $CATEGORIZE
fi

if [ $URANIUM -ne 0 ] ;
then
   export CATFILE="Uranium.txt"
   export CATNAME="Uranium"
   $CATEGORIZE
fi

if [ $NEPTUNIUM -ne 0 ] ;
then
   export CATFILE="Neptunium.txt"
   export CATNAME="Neptunium"
   $CATEGORIZE
fi

if [ $PLUTONIUM -ne 0 ] ;
then
   export CATFILE="Plutonium.txt"
   export CATNAME="Plutonium"
   $CATEGORIZE
fi

if [ $AMERCIUM -ne 0 ] ;
then
   export CATFILE="Americium.txt"
   export CATNAME="Americium"
   $CATEGORIZE
fi

if [ $CURIUM -ne 0 ] ;
then
   export CATFILE="Curium.txt"
   export CATNAME="Curium"
   $CATEGORIZE
fi

if [ $BERKELIUM -ne 0 ] ;
then
   export CATFILE="Berkelium.txt"
   export CATNAME="Berkelium"
   $CATEGORIZE
fi

if [ $CALIFORNIUM -ne 0 ] ;
then
   export CATFILE="Californium.txt"
   export CATNAME="Californium"
   $CATEGORIZE
fi

if [ $EINSTEINIUM -ne 0 ] ;
then
   export CATFILE="Einsteinium.txt"
   export CATNAME="Einsteinium"
   $CATEGORIZE
fi

if [ $FERMIUM -ne 0 ] ;
then
   export CATFILE="Fermium.txt"
   export CATNAME="Fermium"
   $CATEGORIZE
fi

if [ $MENDELEVIUM -ne 0 ] ;
then
   export CATFILE="Mendelevium.txt"
   export CATNAME="Mendelevium"
   $CATEGORIZE
fi

if [ $NOBELIUM -ne 0 ] ;
then
   export CATFILE="Nobelium.txt"
   export CATNAME="Nobelium"
   $CATEGORIZE
fi

if [ $LAWRENCIUM -ne 0 ] ;
then
   export CATFILE="Lawrencium.txt"
   export CATNAME="Lawrencium"
   $CATEGORIZE
fi

rm Actinium.txt
rm Thorium.txt
rm Protactinium.txt
rm Uranium.txt
rm Neptunium.txt
rm Plutonium.txt
rm Americium.txt
rm Curium.txt
rm Berkelium.txt
rm Californium.txt
rm Einsteinium.txt
rm Fermium.txt
rm Mendelevium.txt
rm Nobelium.txt
rm Lawrencium.txt