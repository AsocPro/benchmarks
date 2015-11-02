#!/usr/bin/csi -s

(use posix srfi-1)

(define lim 999999)
(let ((e (get-environment-variable "LIMIT")))
  (if e (set! lim (string->number e))))

(print (reduce + 0 (iota lim)))
