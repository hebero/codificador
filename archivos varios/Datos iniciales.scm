#lang racket
( display "Bienvenido al codificador Master Encoder")
(newline)
( display "Creadores : Tifany Galindo & Heber Orellana")
(newline)
(define parametros (read-line))
(define keytext "")
	(cond
  		((string? parametros)
  			(define lista (string-split parametros))
                        (display lista)
                        (define parametro1 (list-ref lista 0))
                        (display parametro1)
                        (cond
                          ((equal? parametro1 "newkey")
                           (display "llave ha sido recibida")
                           (set! keytext (list-ref lista 1))
                           (validateStrings keytext)
                           (newline)
                           (display keytext)
                           )
                          )
                       )
                (equal? parametro1 "
                       
  			;(string-split " ")
  			;(string-split #:trim? #f)
  			 ;(string-locale=? parametros))
                        
                (else
(display "Error! Expresion no valida")
(display " saliendo ...." )
(display "gracias por usar nuestro codificador "))
                )

(define (validateStrings stringExam)
  
)
	
