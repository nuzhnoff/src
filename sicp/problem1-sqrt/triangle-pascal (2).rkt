; gues - допущение
; allowance - допуск
;allowance? guess (solve numb guess)
;depth глубина
#lang racket
;(cons '( 1 2 ) (cons '(1 2 3) '()))
(define (trngle-psl depth k)
  (cond ((= k 0) (cons '(1) (trngle-psl depth (+ k 1))))
	((= k 1) (cons '(1 1) (trngle-psl depth (+ k 1))))
	((= k depth) cons '())
   	(else (cons (create-line-numb k) (trngle-psl depth (+ k 1))))))

;(trngle-psl 1 1)
;(define (create-line-numb k) '(7 7 7))
;(trngle-psl 10 0)
(define (mirror-list list-n)
 (if (number? (car list-n))
   (cons (cdr list-n) (create-line-numb (cdr list-n)))		0))
(create-line-numb '(1 2 3))
