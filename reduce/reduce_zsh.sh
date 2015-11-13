#!/bin/zsh

LIMIT=${LIMIT:-999999}

echo
echo $0: LIMIT=$LIMIT

declare -i SUM

for ((i = 0; i < $LIMIT; ++i)); do
	let SUM=$((SUM + i))
done

echo $SUM
