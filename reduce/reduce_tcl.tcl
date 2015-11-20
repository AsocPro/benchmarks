#!/usr/bin/env tclsh

set limit [expr {[info exists env(LIMIT)] ? $env(LIMIT) : 999999}]

for {set i 0} {$i < $limit} {incr i} {
	lappend integers $i
}

set sum 0
for {set i 0} {$i <= $limit} {incr i} {
	set sum [expr {$sum + $i}]
}
puts $sum
