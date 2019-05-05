; PUEDE AGREGAR MÁS FUNCIONES E INSTRUCCIONES SEGÚN SU NECESIDAD


; decodeChar decode un caracter en base a otro caracter de llave
(define (decodeChar chTxt chLlave)
    ;su implementación
    #\null
)

; encodeString codifica un string utilizando la llave parametrizada
(define (encodeString txt llave)
   ;su implementación
   (define workKey (completeKey llave txt))
   (define result (string-copy txt))
   (define cont 0)
   (define (ciclo) 
	(cond
		[(< cont (string-length txt))
			(string-set! result cont (integer->char (encodeChar (string-ref txt cont) (string-ref workKey cont))))
			(set! cont (+ cont 1))
		(ciclo)
		]
	)
   )
   (ciclo)
   result
)
(define (completeKey llave txt)
	(define new_key (string-copy txt))
	(define cont 0)
	(define cont2 0)
	(define (ciclo)
		(cond
			[(< cont (string-length txt))
				(if (= cont2 (string-length llave)) (set! cont2 0))
				(string-set! new_key cont (string-ref llave cont2))
				(set! cont (+ cont 1))
                                (set! cont2 (+ cont2 1))
				(ciclo)
			]
		)
	)
	(ciclo)
	new_key
)

; encodeChar codifica un caracter en base a otro caracter de llave
(define (encodeChar chTxt chLlave)
   ;su implementación
   (define chTxtIsLowerCase false)
   (define chLlaveIsLowerCase false)
   (define cht (char->integer chTxt))
   (define chk (char->integer chLlave))
   (cond
        [(and (< cht 91) (> cht 64))
            (set! chTxtIsLowerCase false)
        ]
        [(and (< cht 123) (> cht 96))
            (set! chTxtIsLowerCase true)
        ]
   )
    
   (cond
        [(and (< chk 91) (> chk 64))
            (set! chLlaveIsLowerCase false)
        ]
        [(and (< chk 123) (> chk 96))
            (set! chLlaveIsLowerCase true)
        ]
   )
   
  (define process (lambda (x y)(+ (+ x y) 1)))
  
	
	(convertChar (process (convertChar cht chTxtIsLowerCase 1) (convertChar chk chLlaveIsLowerCase 1)) chTxtIsLowerCase 2)
)
(define (convertChar chr isLowercase mode)
    (cond
	[(= mode 1)
         (cond
		[(equal? isLowercase false)
			(- chr 64)
		]
		[else
			(- chr 96)
		])
	]
	[(= mode 2)
         (cond
		[(equal? isLowercase false)
			(+ chr 64)
		]
		[else
			(+ chr 96)
		])
	]
    )
)
; decodeString decodifica un strgin utilizando la llave parametrizada
(define (decodeString txt llave)
   ;su implementación
   ""
)
(encodeString "hola" "lem")
"cadena"