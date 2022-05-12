#lang racket
(define lower 1)
lower
(define upper 100)
upper
(define (guess)
  (quotient (+ lower upper) 2))
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))
(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))
