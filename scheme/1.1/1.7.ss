; E 1.7
; Square roots by Newton's Method
; Another way to fix failure for very small or very large numbers.
;
; The method is to watch how guess changes from one interation to 
; the next and stops when then change is a very small fraction of 
; the guess.

(define (sqroot x) 
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (close-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (close-enough? guess x)
    (< (/ (abs (- guess (improve guess x))) guess) 0.000000001))

(define (improve guess x)
    (avg guess (/ x guess)))

(define (sqr x) (* x x))
(define (avg x y) (/ (+ x y) 2))
