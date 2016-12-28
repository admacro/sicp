; E 1.6
; Square roots by Newton's Method
; Using new-if

(define (new-if predication then-clause else-clause)
    (cond (predication then-clause)
             (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
           guess
           (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ guess (/ x guess)) 2))

(define (good-enough? guess x)
    (< (abs (- x (* guess guess))) 0.0001))

; Scheme uses applicative evaluation order which means
; funtion parameters will be evaluated before being passed to
; the funtion that's being called.
; 
; And function parameters are evaluated from right to left. 
; else-clause is always evaluated first, hence the evaluation never ends.

; (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
; => (new-if (good-enough? guess x) 
;            guess 
;            (new-if (good-enough? guess-1 x) 
;                    guess-1 
;                    (new-if (good-enough? guess-2 x) 
;                            guess-2 
;                            (new-if (good-enough? guess-3 x) 
;                                    guess-3 
;                                    (sqrt-iter (improve guess-3 x) x)))))
;                                    ...


(define (newer-if pred-1 pred-2 then-clause elseif-clause else-clause)
    (display "newer-if ")
    (cond (pred-1 then-clause)
          (pred-2 elseif-clause)
          (else else-clause)))
             
(define (display-then) 
    (display "then ")
    1)
(define (display-elseif) 
    (display "elseif ")
    -1)
(define (display-else) 
    (display "else ")
    0)
(define (test x) 
    (display "testing ")
    x)

(define (test-new-if pred)
    (new-if (test pred) (display-then) (display-else)))
    
(define (test-newer-if pred-1 pred-2)
    (newer-if (test pred-1) (test pred-2) (display-then) (display-elseif) (display-else)))

; output: else then testing 0
(display (test-new-if #f)) 
(newline)

; output: else elseif then testing testing newer-if 1
(display (test-newer-if #t #f)) 
(newline)


