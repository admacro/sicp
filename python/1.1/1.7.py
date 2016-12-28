'''
E 1.7

Square roots by Newton's Method
Fix failure for very small or very large numbers
'''

(define (sqrt-iter guess x)
    (if (close-enough? guess x)
           guess
           (sqrt-iter (improve guess x) x)))

(define (close-enough? guess x)
    (< (/ (abs (- (improve guess x) guess)) guess) 0.001))

(define (improve guess x)
    (/ (+ guess (/ x guess)) 2))

(define (good-enough? guess x)
    (< (abs (- x (* guess guess))) 0.0001))
