#lang sicp

(define (square x) (* x x))

;;; bunda imúndã

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

;;; Outra maneira de definir valor absoluto:
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))


;;; Outra maneira ainda
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

;;; Synthatic sugar:
(define (square2 x) (* x x))
;;; é o mesmo que
(define square3 (lambda (x) (* x x)))
