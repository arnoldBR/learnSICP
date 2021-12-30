#lang sicp

(define (square x) (* x x))
;;; (define <name>  <formal parameters>) <body>)
33
(square 4)

(square (square 2))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

