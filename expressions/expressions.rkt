; picture is worth five hundred “hello world”s
; load some picture functions
#lang slideshow

; DrRacket evaluates the expression and prints its result.

; An expression can be just a value, such as the number
5
; or the string
"art gallery"

; An expression can also be a function call.
(circle
 ; expressions for the function arguments
 10)
; A result from the circle function is a picture value, which prints as an expression result in much the same way that numbers or strings print.

(rectangle
 ; expressions for the function arguments
 10 20)

; combines pictures
; composing function calls
(hc-append
 ; expressions for the function arguments
 (circle 10) (rectangle 10 20))
; The hyphen in the name hc-append is just a part of the identifier; it’s not hc minus append. The function name starts with h because it combines pictures horizontally, and the next letter is c because the pictures are centered vertically.

