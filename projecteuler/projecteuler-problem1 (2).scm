#!/usr/bin/env chibi-scheme
(import (scheme base)
	(scheme write))
(define (numb-sum x result)
	(cond ((= x 0) (display result ))
	      ((integer? (/ x 3)) (numb-sum (- x 1) (+ x result)))
	      ((integer? (/ x 5)) (numb-sum (- x 1) (+ x result)))
	      (else (numb-sum (- x 1) result))))
(numb-sum 9 0)
	
	
 
