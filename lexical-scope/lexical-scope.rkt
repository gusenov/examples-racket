#lang slideshow

; Racket is a lexically scoped language,
; which means that whenever an identifier is used as an expression,
; something in the textual environment of the expression determines the identifier’s binding.
; This rule applies to identifiers in a lambda body as well as anywhere else.

; In the following rgb-series function,
; the uses of mk in each lambda form refer to the argument of rgb-series,
; since that’s the binding that is textually in scope:

(define series
  (lambda (mk)
    (hc-append 4 (mk 5) (mk 10) (mk 20))))

(define (rgb-series mk)
  (vc-append
   (series (lambda (sz) (colorize (mk sz) "red")))
   (series (lambda (sz) (colorize (mk sz) "green")))
   (series (lambda (sz) (colorize (mk sz) "blue")))))

(rgb-series circle)

(define (square n)
  (filled-rectangle n n))

(rgb-series square)

; Here’s another example, 
; where rgb-maker takes a function and returns a new one that remembers and uses the original function.

(define (rgb-maker mk)
  (lambda (sz)
    (vc-append (colorize (mk sz) "red")
               (colorize (mk sz) "green")
               (colorize (mk sz) "blue"))))

(series (rgb-maker circle))

(series (rgb-maker square))

; Note how composing functions via rgb-maker creates a different alignment of objects within the picture compared to using rgb-series.
