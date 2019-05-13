#lang racket
(require racket/include)
(include "funciones.rkt")

;Valida si una palabra es valida como llave
;return: 1 si es inválida, 0 si es válida
(define (validaCaracteres palabra)
(define isValid 1)
(define pos 0)
(define txtChar 0)
    (define (ciclo)
    (cond 
        [(< pos (string-length palabra))
            (set! txtChar (char->integer (string-ref palabra pos)))
            (cond 
                [(or (and (> txtChar 0) (< txtChar 65)) (and (> txtChar 122) (< txtChar 97)) )
                    (set! isValid (* isValid 1))
                    (set! pos (+ pos 1))
                    (ciclo)
                ]
                [else
                    (set! isValid (* isValid 0))
                    (set! pos (+ pos 1))
                    (ciclo)
                ]
            )
        ]
    )

    )
  (ciclo)
  isValid
)
(define (get-resto-palabras lista inicio)
    (define pos inicio)
    (define result "")
    (define (ciclo)
        (cond
            [(< pos (length lista))
                (set! result (string-append (list-ref lista pos)))
                (set! pos (+ pos 1))
            ]
        )
    )
    (ciclo)
    result
)

(define (display-consola)
  (newline)
    (display ">>: ")
)
(define (bienvenida)
    ( display "Bienvenido al codificador Master Encoder")
	(newline)
	( display "Creadores : Tifany Galindo & Heber Orellana")
  (newline)
    (display-consola)   
)
(define (despedida)
    (newline)
    (display "Gracias por usar el codificador Master Encoder")
    (newline)
)
(define (main)
    (define CONS_ERROR1 "Error! ningun comando ingresado.")
    (define CONS_ERROR2 "Error! no es un comando aceptado")
    (define keytext "")
    (bienvenida)
    (define primeraEntrada (read-line))
    (define lista (string-split primeraEntrada))
    (define commando "")
    (define (menu-ciclo commando)
      (cond
        [(string? commando)
            (set! lista (string-split commando))
        ]        
      )
        (cond
            [(null? commando)
                (display CONS_ERROR1)
                (display-consola)
                (menu-ciclo (read-line))
            ]
            [(equal? commando "exit")
                (despedida)
            ]
            [else
                (set! commando (list-ref lista 0))
                    (cond
			[(equal? commando "newkey")
                            (cond 
                                [(= (validaCaracteres commando) 0)
                                (display "llave ha sido recibida")
                                (newline)
                                (set! keytext (list-ref lista 1))
                                (display-consola)                                
                                (menu-ciclo (read-line))
                                ]
                            )
                        ]
            [(equal? commando "encode-text")
            (cond
                [(not (null? keytext))
                    (display "resultado >> ")
                    (display (encodeString (get-resto-palabras lista 1) keytext))
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
                [else
                    (display "No ingreso ninguna llave")
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
            )
                
            ]
            [(equal? commando "decode-text")
            (cond
                [(not (null? keytext))
                    (display "resultado >> ")
                    (display (decodeString (get-resto-palabras lista 1) keytext))
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
                [else
                    (display "No ingreso ninguna llave")
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
            )
                
            ]
            [(equal? commando "encode-text-key")
            (cond
                [(= (validaCaracteres (list-ref lista 1)) 0)
                    (display "resultado >> ")
                    (display (encodeString (get-resto-palabras lista 2) (list-ref lista 1)))
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
                [else
                    (display "Llave no admitida.")
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
            )
                
            ]
            [(equal? commando "decode-text-key")
            (cond
                [(= (validaCaracteres (list-ref lista 1)) 0)
                    (display "resultado >> ")
                    (display (decodeString (get-resto-palabras lista 2) (list-ref lista 1)))
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
                [else
                    (display "Llave no admitida.")
                    (display-consola)
                    (menu-ciclo (read-line))
                ]
            )
                
            ]

                        [else
                            (display CONS_ERROR2)
                            (display-consola)
                            (menu-ciclo (read-line))
                        ]
                                
                    )
            ]
        )    
    )
    (cond
        [(null? primeraEntrada)
            (display CONS_ERROR1)
        ]
        [(not (string? (list-ref lista 0)))
            (display CONS_ERROR2)
        ]
        [(equal? (list-ref lista 0) "exit")
            (despedida)
        ]
        [else 
            (menu-ciclo lista)
        ]
    )


)
(main)