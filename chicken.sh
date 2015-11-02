#!/usr/bin/bash
# run as /usr/bin/time ./chicken.sh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

csi -R srfi-1 -p "(reduce + 0 (iota $LIMIT))"
