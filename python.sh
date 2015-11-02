#!/usr/bin/bash
# run as /usr/bin/time ./ruby.sh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

python -c "print sum(range($LIMIT))"
