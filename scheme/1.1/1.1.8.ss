; E.g. 1.1.8
; Use block structure to simplify the procedure 

(define (sqroot x) 
    (define (improve guess)
        (avg guess (/ x guess)))
    (define (close-enough? guess)
        (< (/ (abs (- guess (improve guess))) guess) 0.000000001))
    (define (sqrt-iter guess)
        (if (close-enough? guess)
            guess
            (sqrt-iter (improve guess)))) 
    (sqrt-iter 1.0))

(define (sqr x) (* x x))
(define (avg x y) (/ (+ x y) 2))
