#lang racket
(require "sqrt.rkt")
(provide sqrt)
(define list! '())
(define list-sqrt '())
(define (rand-numb x list!)
  (if (= 0 x) list!
   (rand-numb (- x 1) (cons (random 1 1000) list!))))
(rand-numb 1000 list!)
(map sqrt (rand-numb 1000 list!))
