#!/usr/bin/bash
# run as /usr/bin/time ./c.sh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

LIMIT=$LIMIT ./reduce_c
