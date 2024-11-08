#lang slideshow

; Racket inherits much of its style from the language Lisp, whose name originally stood for “LISt Processor,” and lists remain an important part of Racket.

; The list function takes any number of arguments and returns a list containing the given values:

(list "red" "green" "blue")
; '("red" "green" "blue")

; As you can see, a list prints as a single quote and then pair of parentheses wrapped around the printed form of the list elements.
; There’s room for confusion here, because parentheses are used for both expressions,
; such as (circle 10), and printed results, such as '("red" "green" "blue").
; The quote is the key difference, as discussed elsewhere.
; To help emphasize the difference, in the documentation and in DrRacket,
; result parentheses are printed in blue, unlike expression parentheses.

(define (square n)
  (filled-rectangle n n))

(list (circle 10) (square 10))

; If you have a list, then you’ll eventually want to do something with each of the elements.
; The map function takes a list and a function to apply to each element of the list;
; it returns a new list to combine the function’s results:

(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))

(rainbow (square 5))

; Another function that works with lists is apply.
; Like map, it takes a function and a list,
; but a function given to apply should take all of the arguments at once,
; instead of each one individually.
; The apply function is especially useful with functions that take any number of arguments, such as vc-append:

(apply vc-append (rainbow (square 5)))

; Note that (vc-append (rainbow (square 5))) would not work,
; because vc-append does not want a list as an argument;
; it wants a picture as an argument, and it is willing to accept any number of them.
; The apply function bridges the gap between a function that wants many arguments and a list of those arguments as a single value.

(apply + '(1 2 3))
; 6
