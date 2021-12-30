#lang sicp

;;; SICP Ex 1.4__________________________

;;; O if é usado para escolher o operador!
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

