#!/bin/bash

KEYWORDS_COMPUTER_SECURITY="S(é|e)curit(é|er|e)(| )(d|)('|)(ordinateur|)|\bhack(er(|s)|ing|s|ed)\b|CompSec|(ad|spy|mal)(|-)ware|computer.+virus|virus.+computer|trojan|SQL(| )injection|DNSSEC|IPSEC"
KEYWORDS_COMPUTER_SECURITY_EXCLUDE="anti(|-)(| )virus|\bTroy|Greek|Trojan(| )War|USC(| )Trojans|sports|football|tennis"

egrep -i "$KEYWORDS_COMPUTER_SECURITY" newpages.txt | egrep -iv "$KEYWORDS_COMPUTER_SECURITY_EXCLUDE" >> ComputerSecurity.txt

SECURITY=`stat --print=%s ComputerSecurity.txt`

if [ $SECURITY -ne 0 ];
then
  export CATFILE="ComputerSecurity.txt"
  export CATNAME="Sécurité d'ordinateur"
  $CATEGORIZE
fi

rm ComputerSecurity.txt
