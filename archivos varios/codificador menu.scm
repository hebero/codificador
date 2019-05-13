#lang racket
( display "Bienvenido al codificador Master Encoder")
(newline)
( display "Creadores : Tifany Galindo & Heber Orellana")
(newline)
(define parametros (read-line))
(define keytext "")
(define codkeytext "")
(define codfile "")
(define decodetext "")
(define decodefile "")

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
                           (newline)
                           (display keytext)
                           )
                          )
                       )
                             (define parametro2 (list-ref lista 2))
                             (cond
                             	(equal? parametro2 "encode-text")
                             	(display "codificando texto...")
                             	(set! keytext (list-ref lista 2))
                             	(newline)
                             	;aca ingresamos la funcioln de codificar el texto
                             	)

                             (cond
                             	(equal? parametro2 "codkeytext")
                             	;aca ingresamos la funcion para cifrar texto
                             	()
                             	)
                             (cond
                             	(equal? parametro2 "encode-text-key"))
                             ;aca ingresamos la funcion para cifrar la llave
                             )
								(cond
									(equal? parametro2 "encode-file")
									;aca ingresamos la funcion para cifrar archivo
								)	
                					(cond
                						(equal? parametro2 "decode-text")
                						;aca ingresamos la funcion para cifrar archivo
                						)
                					 	(cond
                					 		(equal? parametro2 "decode-text-key")
                					 		;aca ingresamos la funcion para decodificar el text con llave
                					 		)
                					 		(cond
                					 			(equal? parametro2 "decode-file")
                					 			;aca ingresamos la funcion para decodificar el texto con llave
                					 			)
  			;(string-split " ")
  			;(string-split #:trim? #f)
  			 ;(string-locale=? parametros))
                        
                (else
(display "Error! Expresion no valida")
(display " saliendo ...." )
(display "gracias por usar nuestro codificador "))
                )
	
