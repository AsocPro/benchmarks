#!/usr/bin/env bash
# run as /usr/bin/time ./lua.sh

export LIMIT=${LIMIT:-999999}

echo 
echo $0: LIMIT=$LIMIT

/usr/bin/time ./reduce.lua 
