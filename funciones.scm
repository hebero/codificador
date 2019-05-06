; PUEDE AGREGAR MÁS FUNCIONES E INSTRUCCIONES SEGÚN SU NECESIDAD


; decodeChar decode un caracter en base a otro caracter de llave
(define (decodeChar chTxt chLlave)
    ;su implementación
    #\null
)

; encodeString codifica un string utilizando la llave parametrizada
(define (encodeString txt llave)
   ;su implementación
   
   
   ""
)
(define (getNextChar llave)
	
)

; encodeChar codifica un caracter en base a otro caracter de llave
(define (encodeChar chTxt chLlave)
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
   
  (convertChar (lambda (x y)((+ (+ x y) 1))
    (convertChar chTxt chTxtIsLowerCase 1) (convertChar chLlave chLlaveIsLowerCase 1)
  ) chTxtIsLowerCase 2)
)
(define (convertChar chr isLowercase mode)
    (cond
	[(= mode 1)
		[(equal? isLowercase false)
			(- chr 64)
		]
		[else
			(- chr 96)
		]
	]
	[(= mode 2)
		[(equal? isLowercase false)
			(+ chr 64)
		]
		[else
			(+ chr 96)
		]
	]
    )
)
; decodeString decodifica un strgin utilizando la llave parametrizada
(define (decodeString txt llave)
   ;su implementación
   ""
)
"cadena"