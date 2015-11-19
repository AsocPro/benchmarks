#!/usr/bin/env bash

LIMIT=${LIMIT:-999999}

echo 
echo $0: LIMIT=$LIMIT

/usr/bin/time perl -MList::Util=sum -e "print sum(0..$LIMIT), qq{\\n}"
