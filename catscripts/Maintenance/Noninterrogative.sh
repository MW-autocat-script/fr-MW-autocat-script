#!/bin/bash

egrep -iv "\bwho|\bwhat|where\b|\bwhen\b|(^|\[\[)Whens\b|\bwhy|\bhow\b|\bdo\b|\shas\b|does\b|did\b|will\b|(^|\[\[)Is\b|\. Is\b|(^|\[\[)Are\b|(^|\[\[)Aren't\b|\bwere\b|\bwas\b|\bwhich\b|\bcould|should\b|shouldn't|\bwould|can\b|(^|\[\[)Has\b|(^|\[\[)Hasn't|[0-9]{1,}(| )(-|\+|x|/|\*|%|\^)|\bAm I\b|(^|\[\[)Have(|n(|')t)\b|(^|\[\[)(Isn't|Isnt)|(^|\[\[)(Doesn't|Doesnt)\b|(^|\[\)[Didn(|')t" newpages.txt >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Page titles lacking an interrogative word"
  $CATEGORIZE
fi

rm noninterrogative.txt