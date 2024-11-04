#lang slideshow

; To use a particular circle and rectangle picture many times,
; it’s simpler to give them names.

; two definitions
(define c (circle 10))
(define r (rectangle 10 20))

c

r

(hc-append c r)

(hc-append 20 c r c)
; hc-append function accepts an optional number argument before the picture arguments,
; and it accepts any number of picture arguments.
; When a number is provided,
; it specifies the amount of space to add between pictures.

; A function definition uses define,
; just like our shape definitions,
; but with an open parenthesis before the function name,
; and names for the function arguments before the matching close parenthesis:
(define (square n)
  ; A semi-colon starts a line comment.
  ; The expression below is the function body.
  (filled-rectangle n n))

; The syntax of the definition mirrors the syntax of a function call:
(square 10)
