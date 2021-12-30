#lang sicp

;;; SICP EXERCISE 1.3 ______________________________
;;; Define a procedure that takes 3 numbers
;;; and returns the sum of the squares of 2 greatest


;;; Brute solution 
(define (sqr2largest x y z)
  (cond ((or (>= x z y) (>= z x y)) (sum-squares x z))
        ((or (>= y x z) (>= x y z)) (sum-squares x y))
        ((or (>= z y x) (>= y z x)) (sum-squares y z))))


;;; Big brain recursive solution 
(define (sq_greatest2 x y z)
  (cond ((or (>= y x z) (>= x y z)) (sum-squares x y))
        (else (sq_greatest2 z x y))))


; aux functions
(define (square x) (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))