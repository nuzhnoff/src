#lang racket
(define (nod-numb x count)
  (cond ((= x count) '())
        ((integer? (/ x count)) (cons count (nod-numb x (+ 1 count))))
        (else (nod-numb x (+ 1 count)))))
;'(1 7 49 1163 8141)
  (nod-numb 568997 1)