#lang sicp

(define (square x) (* x x))

(define (sqr-iter guess x)
  (if (good-enough? guess x) ;;; predicate
      guess                  ;;; consequent
      (sqr-iter (improve guess x) x))) ;;; alternative:
                                       ;;; Recursão com improved guess

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     0.001))

(define (sqrt x)
  (sqr-iter 1.0 x))

;;; EXERCISE 1.6______________???____________________

;;; O novo if sugerido por Eva Lu Ator
(define (new-if predicate then-clause else-clause) 
  (cond (predicate then-clause) 
        (else else-clause)))

;;; Alyssa's function:
(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x) guess 
          (sqrt-iter2 (improve guess x) x) ))  

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))


;;; A função de Alyssa NÃO é equivalente a escrever
(define (sqrt-iter3 guess x)
  (cond ((good-enough? guess x) guess)
        (else (sqrt-iter3 (improve guess x) x) )))