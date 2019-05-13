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


;Valida si un caracter esta entre los caracteres aceptados
;return: 1 si es inválida, 0 si es válida
(define (validaCaracter letra)
(define isValid 1)
(define txtChar 0)
    (set! txtChar (char->integer (string-ref letra pos)))
        (cond 
            [(or (and (> txtChar 0) (< txtChar 65)) (and (> txtChar 122) (< txtChar 97)) )
                (set! isValid (* isValid 1))
            ]
            [else
                (set! isValid (* isValid 0))
            ]
        )
  isValid
)


