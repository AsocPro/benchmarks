#!/usr/bin/env bash

export LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

/usr/bin/time ./reduce_scm
