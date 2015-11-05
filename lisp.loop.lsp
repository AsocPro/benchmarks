#!/usr/bin/clisp

;; Using the loop macro to generate the sequence of integers

; Practical Common Lisp http://www.gigamonkeys.com/book/

; get a value from the environment
(setq lim 999999)
(let ((e (ext:getenv "LIMIT")))
  (if e (setq lim (parse-integer e))))

(print (reduce #'+ (loop for i upto lim collect i)))
