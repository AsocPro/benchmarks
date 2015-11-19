#!/usr/bin/env bash
# run as /usr/bin/time ./awk

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

seq 0 $LIMIT | awk '{s+=$1} END{ print s }'
