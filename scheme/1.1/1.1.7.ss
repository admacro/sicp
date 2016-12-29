; E.g. 1.1.7
; Square roots by Newton's method

(define (sqroot x) 
    ; Start guess with 1.0 instead of 1 to avoid fractions
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (avg guess (/ x guess)))

; Here, 0.001 only works adequately for numbers larger than 0.001
; In fact, the larger the number is, the better the result will be.
; However, for numbers smaller than 0.001, it's inadequate, not even close. 
;
; For example
;   (sqroot 10240000000000) -> 3200000.0
;   (sqroot 1024) -> 32.0000071648159
;   (sqroot 0.001024) -> 0.04147623658408008
;   (sqroot 0.000000001024) -> 5.12e-10
(define (good-enough? guess x)
    (< (abs (- x (sqr guess))) 0.001))

; A better version of good-enough?, precise-enough? which uses a different 
; deviation value (* x 0.0001) when the number is smaller than 1. 
; The rule is that the deviation value must be smaller (or much smaller)
; than the number we want to calculate.
;
; For example
;   (sqroot 10240000000000) -> 3200000.0
;   (sqroot 1024) -> 32.0000000000008
;   (sqroot 0.001024) -> 0.03200000487830525
;   (sqroot 0.000000001024) -> 3.2000003310759726e-5
(define (precise-enough? guess x)
    (< (abs (- x (sqr guess))) (if (< x 1) (* x 0.0001) 0.0001)))
    
(define (sqr x) (* x x))
(define (avg x y) (/ (+ x y) 2))
    
