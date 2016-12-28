; Examples and helper functions for chapter 1

; eg 1.1.7
; Square roots by Newton's method

(define (sqroot x) 
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (avg guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- x (sqr guess))) 0.0001))

(define (sqr x) (* x x))
(define (avg x y) (/ (+ x y) 2))
