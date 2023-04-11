; gues - допущение
; allowance - допуск
;allowance? guess (solve numb guess)
;depth глубина
;tetrahedral number Тетраэдральное число
#lang racket

(define (last-numb-del list-numb)
 (if (empty? (cdr list-numb)) '()
	(cons (car list-numb)
	      (last-numb-del (cdr list-numb)))))
;(last-numb-del '(1 2 3 4))

(define (del-last-numb list-numb)
  (if (empty? (cdr list-numb)) (car list-numb)
    (del-last-numb (cdr list-numb))))
;(del-last-numb '(1 2 3 4))

(define (add-last-numb x list-numb)
  (if (empty? (cdr list-numb))
    (cons (car list-numb) (cons x '()))
    (cons (car list-numb) (add-last-numb x (cdr list-numb)))))
;(add-last-numb 2 '(1))

(define (reverse-list list-numb)
  (if (empty? (cdr list-numb))
    (cons (car list-numb) '())
    (cons (del-last-numb list-numb)
	  (reverse-list 
	    (last-numb-del list-numb)))))

;(reverse-list '(1 2 3 4))

(define (add-list-list list-1 list-2)
  (if (empty? (cdr list-2))
    (add-last-numb (car list-2) list-1)
    (add-list-list 
      (add-last-numb (car list-2) list-1) 
      (cdr list-2))))
;(add-list-list '(1 2) '(3 4))

(define (mirror-list list-main)
  (add-list-list list-main
                 (reverse-list list-main)))

;(mirror-list '(1 2 3 4))
(define (tetra-numb j) (/ (* (+ j 1) (+ j 2) j) 6))

(define (triangle-pas depth count)
  (cond ((= count 1) (cons '(1) (triangle-pas depth (+ 1 count))))
        ((= count 2) (cons '(1 1) (triangle-pas depth (+ 1 count))))
        ((= count 3) (cons '(1 2 1) (triangle-pas depth (+ 1 count))))
        ((= count depth) '())
        (else (cons (expr-list (expr-follow-lst (- count 1) (parity-numb count) 0) (parity count)) (triangle-pas depth (+ 1 count))))))
;(parity-numb count)
;функция определения четности ряда для выполнения сво-ва треугольника
(define (parity-numb x)
  (if (integer? (/ x 2)) (/ x 2)
      (+ (/ (- x 1) 2) 1)))
;expr-list
(define (expr-list list! parity)
  (cond ((= 1 parity) (mirror-list list!))
        ((= 0 parity) (add-list-list list! (reverse-list (last-numb-del list!))))))

(define (parity numb)
  (if (integer? (/ numb 2)) (+ 1)
      (+ 0)))
      
;expression following list
(define (expr-follow-lst x0 x count)
  (cond ((= count 0)(cons 1 (expr-follow-lst x0 x (+ 1 count))))
        ((and (= count 1) (not (= x count)))(cons x0 (expr-follow-lst x0 x (+ 1 count))))
        ((and (= count 2) (not (= x count))) (cons (/ (* x0 (- x0 1)) 2) (expr-follow-lst x0 x (+ 1 count))))
        ((and (= count 3) (not (= x count))) (cons (tetra-numb (- x0 2)) (expr-follow-lst x0 x (+ 1 count))))
        ((= count x) '())
        (else (cons (m-numb x0 count) (expr-follow-lst x0 x (+ 1 count))))
        ))
;(parity-numb 7)
(define (factorial n)
(if (= n 1)
1
(* n (factorial (- n 1)))))
(define (m-numb x count)
  (/ (factorial x) (* (factorial count) (factorial (- x count)))))
(m-numb 8 4)
;(expr-follow-lst 5 0)
;(tetra-numb 6)
(triangle-pas 30 1)