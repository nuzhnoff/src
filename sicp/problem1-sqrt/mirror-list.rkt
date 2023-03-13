; gues - допущение
; allowance - допуск
;allowance? guess (solve numb guess)
;depth глубина
#lang racket
;(def '(a b c)) -> '(a b)
(define (last-numb-del list-numb)
   (if (empty? (cdr list-numb)) '()
             (cons (car list-numb)
		(last-numb-del (cdr list-numb)))))
;(def '(a b c)) -> c

(define (del-last-numb list-numb)
    (if (empty? (cdr list-numb)) (car list-numb)        (del-last-numb (cdr list-numb))))
;(def x '(a b c)) -> '(a b c x)

(define (add-last-numb x list-numb)                 (if (empty? (cdr list-numb))                        (cons (car list-numb) (cons x '()))               (cons (car list-numb)                             (add-last-numb x (cdr list-numb)))))
;TODO list-reverse, list-add-list


;(def '(1 2 3)) -> '(3 2 1)
(define (reverse-list list-numb)
  (if (empty? (cdr list-2))
    (cons (car list-numb) '())
    (cons (del-last-numb list-numb)
          (reverse-list
            (last-numb-del list-numb)))))

;(def '(1 2 3) '(4 5 6)) -> '(1 2 3 4 5 6)

(define (add-list-list list-1 list-2)
    (if (empty? (cdr list-2))
          (add-last-numb (car list-2) list-1)               (add-list-list			              (add-last-numb (car list-2) list-1)		(cdr list-2))))

(define (mirror-list list-main)
	     (add-list-list list-main 
			    (reverse-list
			      list-main)))
(mirror-list '(1 2 3 4))
