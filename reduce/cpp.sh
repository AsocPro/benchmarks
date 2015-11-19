#!/usr/bin/env bash

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

LIMIT=$LIMIT /usr/bin/time ./reduce_cpp
