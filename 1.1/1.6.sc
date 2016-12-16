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