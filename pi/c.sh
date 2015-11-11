#!/usr/bin/bash

LIMIT=${LIMIT:-999999}
SEED=${SEED:-$LIMIT}

echo
echo $0: LIMIT=$LIMIT SEED=$SEED

SEED=$SEED LIMIT=$LIMIT /usr/bin/time ./pi_c
