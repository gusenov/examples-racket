#lang slideshow

; The define form can be used in some places to create local bindings.
; For example, it can be used inside a function body:

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(four (circle 10))

; More typically, Racketeers use the let or let* form for local binding.

; An advantage of let is that it can be used in any expression position.
; Also, it binds many identifiers at once,
; instead of requiring a separate define for each identifier:

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
  (vc-append p12 p21)))

(define (square n)
  (filled-rectangle n n))

(checker (colorize (square 10) "red")
         (colorize (square 10) "black"))
         
; A let form binds many identifiers at the same time, so the bindings cannot refer to each other.
; The let* form, in contrast, allows later bindings to use earlier bindings:

(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "black")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))

(checkerboard (square 10))
