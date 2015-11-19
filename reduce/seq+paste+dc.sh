#!/usr/bin/env zsh
# run as /usr/bin/time ./seq+dc.sh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

{ echo 0; seq $LIMIT | paste -sd+; echo +p } | dc
