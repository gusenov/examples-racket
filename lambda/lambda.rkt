#lang slideshow

(define c (circle 10))

circle
; #<procedure:circle>

; That is, the identifier circle is bound to a function (a.k.a. “procedure”),
; just like c is bound to a circle.
; Unlike a circle picture,
; there’s not a simple way of completely printing the function,
; so DrRacket just prints #<procedure:circle>.

; This example shows that functions are values,
; just like numbers and pictures (even if they don’t print as nicely).
; Since functions are values, you can define functions that accept other functions as arguments:

(define (series mk)
  (hc-append 4 (mk 5) (mk 10) (mk 20)))

(series circle)

(define (square n)
  (filled-rectangle n n))

(series square)




(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "black")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))




; When calling a function that accepts a function argument,
; the argument function often isn’t needed anywhere else.
; Having to write down the function via define would be a hassle,
; because you have to make up a name and find a place to put the function definition.
; The alternative is to use lambda, which creates an anonymous function:

(series (lambda (size) (checkerboard (square size))))

; The parenthesized names after a lambda are the arguments to the function,
; and the expression after the argument names is the function body.
; Using the word “lambda” instead of “function” or “procedure” is part of Racket’s history and culture.

; A define form for a function is really a shorthand for a simple define using lambda as the value.
; For example, the series definition could be written as

(define series2
  (lambda (mk)
    (hc-append 4 (mk 5) (mk 10) (mk 20))))

; Most Racketeers prefer to use the shorthand function form with define instead of expanding to lambda.
