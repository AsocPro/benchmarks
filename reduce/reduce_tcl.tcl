#!/usr/bin/env tclsh

proc reduce {limit} {
	for {set i 0} {$i <= $limit} {incr i} {
		lappend integers $i
	}

	set sum 0
	foreach i $integers {
		incr sum $i
	}

	return $sum
}

proc main {} {
	global env

	puts [reduce [expr {[info exists env(LIMIT)] ? $env(LIMIT) : 999999}]]
}

main
