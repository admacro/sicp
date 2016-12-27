; Cube roots by Newton's Method

(define (cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-iter (improve guess x) x)))

(define (close-enough? guess x)
    (< (/ (abs (- (improve guess x) guess)) guess) 0.00001))

(define (improve guess x)
    (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (good-enough? guess x)
    (< (abs (- x (* guess guess guess))) 0.0001))