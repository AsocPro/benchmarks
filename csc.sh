#!/usr/bin/bash
# run as /usr/bin/time ./chicken.sh

export LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

./reduce_scm
