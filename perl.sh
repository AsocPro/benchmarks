#!/usr/bin/bash
# run as /usr/bin/time ./perl.sh

LIMIT=${LIMIT:-999999}

echo 
echo $0: LIMIT=$LIMIT

perl -M"List::Util qw (sum)" -e "print sum 0..$LIMIT"
