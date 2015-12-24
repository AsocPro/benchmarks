#!/bin/sh
"exec" "gst" "-f" "$0" "$@"

| limit envLimit value |
	limit := 999999.
	envLimit := Smalltalk getenv: 'LIMIT'.
	(envLimit ~= nil) ifTrue: [
		value := envLimit asNumber.
		(value >= 0) ifTrue: [ limit := value ].
	].

| numbers sum |
	numbers := Array new: limit+1.
	0 to: limit do: [:i | numbers at: i+1 put: i].
	sum := numbers inject: 0 into: [:a :b | a+b].
	sum displayNl
