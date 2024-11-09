; Since your program in the definitions window starts with

#lang slideshow

; all of the code that you put in the definitions window is inside a module.
; Furthermore, the module initially imports everything from the module designated by slideshow,
; which exports picture-making functions as well as more commonly used functions such as list and map.

(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))

(define (square n)
  (filled-rectangle n n))

; Some modules live relative to other modules,
; without necessarily belonging to any particular collection or package.
; For example, in DrRacket,
; if you save your definitions so far in a file "quick.rkt" and add the line

(provide rainbow square)
