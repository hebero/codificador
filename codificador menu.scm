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
	(define CONS_ERROR1 "Llave erronea.")
	(define CONS_ERROR2 "No a ingresado ninguna llave para cifrar el texto")
	(cond
		((string? parametros)
				(define lista (string-split parametros))
						(display lista)
							(define parametro1 (list-ref lista 0))
							(display parametro1)
							(cond
								((equal? parametro1 "newkey")
								(cond 
								[(= (validaCaracteres parametro1) 0)
									((display "llave ha sido recibida")
									(set! keytext (list-ref lista 1))
									(newline)
									(display keytext))
								]
								[else
									(display CONS_ERROR1)
								]
									
								)
								(display "llave ha sido recibida")
								(set! keytext (list-ref lista 1))
								(newline)
								(display keytext))
							)
							((equal? parametro1 "encode-text")
								(cond [(or (null? keytext) (= (string-length keytext)0))
										(display CONS_ERROR2)
								]
								[else 
										(display "codificando texto...")
										(set! keytext (list-ref lista 2))
										(newline)
										;aca ingresamos la funcioln de codificar el texto
								]
								)
								
							)
							((equal? parametro1 "encode-text-key")
									;aca ingresamos la funcion para cifrar texto
									(cond
										[(= (validaCaracteres (list-ref lista 1)))
											(set! keytext (list-ref lista 1))
											
										]
									)
							)
								((equal? parametro2 "encode-file")

								)
								((equal? parametro2 "decode-text")
								)
								((equal? parametro2 "decode-text-key")

								)
								((equal? parametro2 "decode-file")

								)



							)
							(else
							(display "Error! Expresion no valida")
							(display " saliendo ...." )
							(display "gracias por usar nuestro codificador "))
						)


