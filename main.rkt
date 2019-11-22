#lang racket

; (invert lst): List(N X N) -> List(N X N)
; returns a list with each 2-list reversed
; : size(lst)=0 -> ()
; : else        -> ((lst[0,1] lst[0,0]) (invert lst[1..end]))
(define invert
  (lambda (lst)
    (if (null? lst)
        (list)
        (cons (list (cadar lst) (caar lst)) (invert (cdr lst))))))
