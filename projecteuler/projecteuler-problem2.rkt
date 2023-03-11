#lang racket
(define (fibonacci-standart x y count)
  (if (= 0 count) y
      (fibonacci-standart (+ x y) x (- count 1))))

(define (fib x y max)
  (if (> y max) '()
      (cons y (fib (+ x y) x max))))
(fib 0 1 4000000)

(define (int?numb x)
  (if (integer? (/ (car x) 2)) (car x)
      0))
(define (sum-int-fib x)
  (cond ((empty? (cdr x)) (int?numb x))
        ((integer? (/ (car x) 2)) (+ (car x) (sum-int-fib (cdr x))))
        (else (sum-int-fib (cdr x)))))
(sum-int-fib (fib 0 1 4000000))