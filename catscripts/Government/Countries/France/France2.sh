#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
printf "Starting France\n"
fi

CURRENTDIR="./catscripts/Government/Countries/France"

$CURRENTDIR/France.sh
$CURRENTDIR/Presidents.sh

if [ "$DEBUG" == "yes" ];
then
printf "Finishing France\n"
fi
