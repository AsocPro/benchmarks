#!/usr/bin/clisp

; Practical Common Lisp http://www.gigamonkeys.com/book/

; TODO - CL must already have a way to do this
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
