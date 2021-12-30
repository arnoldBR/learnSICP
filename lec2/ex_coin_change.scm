#lang sicp

;;; How many ways can we make change of $1.00, given
;;; $0.5, $0.25, $0.10, $0.05, $0.01?




;;; Lembrando (recap): gerando um processo iterativo

;;; Fatorial recursivo
(define (factorial_rec n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;;; Fatorial iterativo
;;; uma definição recursiva que gera um processo iterativo.
(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))

;;; Fibonacci
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))


  

