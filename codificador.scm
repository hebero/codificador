(include "funciones.scm")
; programa principal
(define (main)
    ; su implementación acá
)
(define (validaCaracteres txt)
(define isValid 1)
(define pos 0)
(define txtChar 0)
    (define (ciclo)
    (set! txtChar (char->integer (string-ref txt pos)))
        (cond 
            [(or (> txtChar 0) (< txtChar 65) (< txtChar 122) (> txtChar 97) (= txtChar 32))
                (set! isValid (* isValid 1))
            ]
            [else
                (set! isValid (* isValid 0))
            ]
        )
    )
)
(main)

;comentario nuevo
