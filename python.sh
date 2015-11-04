#!/usr/bin/bash

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

/usr/bin/time python -c "print sum(range($LIMIT))"
