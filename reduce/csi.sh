#!/usr/bin/env bash

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

/usr/bin/time csi -R srfi-1 -p "(reduce + 0 (iota (+ $LIMIT 1)))"
