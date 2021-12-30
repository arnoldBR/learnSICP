#lang sicp

;;; Exc 1.5 SICP

; a test to determine whether the interpreter he is faced 
; with is using applicative-order evaluation or normal-order
; evaluation...

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Normal order:
; (test 0 (p))
; retorna 0 pois verifica que x é 0:
;(if (= 0 0) 0 (p))
;(if #t 0 (p))
; 0

; Applicative order:
; tenta valorar o argumento passado no lugar de y
; mas nunca termina pois (p) expande infinitamente em si mesmo:
; (define (p) (p)) - isso define uma função sem argumento cujo
; corpo é a própria função.
