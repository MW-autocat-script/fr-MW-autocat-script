#!/bin/bash

egrep -i '(yard(|s)|pieds|cm|centimètre(s|)|mètre(s|)|kiloèetre(|s)|mille(|s)|gramme(|s)|cup(|s)|ml(|\.)|mililitre(|s)|inches) est combien de (inches|feet|yards|kilomètre(|s)|mille(|s)|gramme(|s)|mètre(|s)|pound(|s)|lbs(|\.)|cup(|s)|mililiter(|s)|ml(|\.))\]\]' newpages.txt >> MeasurementConversions.txt
egrep -i 'equals how many meters\]\]' newpages.txt >> MeasurementConversions.txt

CONVERSIONS=`stat --print=%s MeasurementConversions.txt`

if [ $CONVERSIONS -ne 0 ];
then
  export CATFILE="MeasurementConversions.txt"
  export CATNAME="Conversion de mesures"
  $CATEGORIZE
fi

rm MeasurementConversions.txt
