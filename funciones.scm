; PUEDE AGREGAR MÁS FUNCIONES E INSTRUCCIONES SEGÚN SU NECESIDAD


; encodeChar codifica un caracter en base a otro caracter de llave
(define (encodeChar chTxt chLlave)
    ;su implementación
    #\null
)

; encodeString codifica un string utilizando la llave parametrizada
(define (encodeString txt llave)
   ;su implementación
   ""
)

; decodeChar decode un caracter en base a otro caracter de llave
(define (decodeChar chTxt chLlave)
   ;su implementación
   (define chTxtIsLowerCase false)
   (define chLlaveIsLowerCase false)
   (cond
        [(and (< (char->integer chTxt) 91) (> (char->integer chTxt) 64))
            (set! chTxtIsLowerCase false)
        ]
        [(and (< (char->integer chTxt) 123) (> (char->integer chTxt) 96))
            (set! chTxtIsLowerCase true)
        ]
   )
    
   (cond
        [(and (< (char->integer chLlave) 91) (> (char->integer chLlave) 64))
            (set! chLlaveIsLowerCase false)
        ]
        [(and (< (char->integer chLlave) 123) (> (char->integer chLlave) 96))
            (set! chLlaveIsLowerCase true)
        ]
   )
   
  (lambda (x y)
  (
    (+ (+ (- x 64) (- 64 y)) 1)
  )
    
  )

  
   #\null
)
(define (getNeutralNumber chr isLowercase)
    (cond
    [(equal? isLowercase true)

    ]
    )
)
; decodeString decodifica un strgin utilizando la llave parametrizada
(define (decodeString txt llave)
   ;su implementación
   ""
)
"cadena"