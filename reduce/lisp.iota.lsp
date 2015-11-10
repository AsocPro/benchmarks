#!/usr/bin/clisp

; Practical Common Lisp http://www.gigamonkeys.com/book/

;; My own function which generates the sequence of integers
;; this appears to be around 25% faster than the loop macro
;; 1.90s vs 1.43s
(defun iota (n)
  (let ((lst nil))
	(dotimes (i n)
	  (setf lst (cons (- n i) lst)))
	lst))

; get a value from the environment
(setq lim 999999)
(let ((e (ext:getenv "LIMIT")))
  (if e (setq lim (parse-integer e))))

(print (reduce #'+ (iota lim)))
