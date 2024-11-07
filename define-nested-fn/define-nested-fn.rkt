#lang racket

(define (foo)
  (define (bar)
    (define (baz)
      (void)
      )
    (baz)
    )
  (bar)
  ; (baz)
  ; unbound identifier
  )

foo
; #<procedure:foo>

(foo)

; (bar)
; unbound identifier
