; E 1.8
; Cube roots by Newton's Method

(define (cube-root x) 
    (cube-iter 1.0 x))

(define (cube-iter guess x)
    (if (close-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))

(define (close-enough? guess x)
    (< (/ (abs (- guess (improve guess x))) guess) 0.000000001))

(define (improve guess x)
    (/ (+ (/ x (sqr guess)) (* 2 guess)) 3))

(define (sqr x) (* x x))
