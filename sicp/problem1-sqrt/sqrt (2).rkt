; gues - допущение
; allowance - допуск
;allowance? guess (solve numb guess)
#lang racket
(define (iter numb guess numb-iter)
; ((allowance? guess (solve numb guess)) guess
  (if (= 10 numb-iter) guess
    (iter numb (solve numb guess) (+ 1 numb-iter))
    ))
(define (allowance? gu ess) 
	    (< (abs (- (* gu) ess)) 0.001)
	    )
(define (sqrt x) ( iter x 1.0 0))
(define (solve a b)
  (/ (+ ( / a b) b) 2))
;(abs (- (* 1.25 1.25) 4))
(sqrt 0.045)
;(solve 4 1.5)
;(allowance? 2 1.416)

