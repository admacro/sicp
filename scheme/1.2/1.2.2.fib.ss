;;; E.g. 1.2.2
;;; Tree recursion

;;; Fibonacci numbers
; 0, 1, 1, 2, 3, 5, 8, 13, 21, 44, ...

; Recursive
; Recursion makes a lot of redundant computations Fibonacci numbers grow 
; exponentially with n, so here the number of steps grows exponentially 
; as well with the input.
(define (fib-recur n)
	(cond ((= n 0) 0)
		  ((= n 1) 1)
	 	  (else (+ (fib-recur (- n 1)) 
		  		   (fib-recur (- n 2))))))
	 
; Iterative
; The idea is to use a pair of integers a and b, initialized to F(0) = 1 and 
; F(1) = 1, and to repeatedly apply the simultaneous transformations
;     b <- a + b
;     a <- b
; After n times of applying this transformation, a and b will be equal, 
; respectively, to F(n) and F(n + 1)
(define (fib-iter n)
	(define (iter a b n)
		(if (= n 0) 
			a
			(iter b (+ a b) (- n 1))))
	(iter 0 1 n))
