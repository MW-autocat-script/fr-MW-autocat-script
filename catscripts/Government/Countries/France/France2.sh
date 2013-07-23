#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
printf "Starting France\n"
fi

CURRENTDIR="./catscripts/Government/Countries/France"

$CURRENTDIR/US_military/France.sh
$CURRENTDIR/US_Presidents/Presidents.sh

if [ "$DEBUG" == "yes" ];
then
printf "Finishing France\n"
fi
