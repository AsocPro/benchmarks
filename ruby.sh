#!/usr/bin/bash

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

/usr/bin/time ruby -e "puts (0..$LIMIT).to_a.reduce(:+)"
