#!/usr/bin/bash
# run as /usr/bin/time ./ruby.sh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

ruby -e "puts (0..$LIMIT).to_a.reduce(:+)"
