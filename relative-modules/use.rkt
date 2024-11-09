; then you can open a new tab or window in DrRacket,
; type the new program "use.rkt" in the same directory as "quick.rkt":

#lang racket

(require "quick.rkt")

(rainbow (square 5))

; and when you run "use.rkt", a rainbow list of squares is the output.
; Note that "use.rkt" is written using the initial import racket,
; which does not supply any picture-making functions itself—but does provide require and the function-calling syntax.

; Racketeers typically write new programs and libraries as modules that import each other through relative paths and collection-based paths.
; When a program or library developed this way seems useful to others,
; it can be registered as a package,
; especially if the implementation is hosted in a Git repository.

; To import additional libraries, use the require form.
; For example, the library pict/flash provides a filled-flash function:

(require pict/flash)

(filled-flash 40 30)

; Some modules are packaged in the Racket distribution or otherwise installed into a hierarchy of collections.
; For example, the module name pict/flash means “the module implemented in the file "flash.rkt" that is located in the "pict" collection.”
; When a module name includes no slash, then it refers to a "main.rkt" file.
