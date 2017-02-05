;;; E.g. 1.2.2
;;; Counting changes

;;; How many different ways can we make change of $1.00, given half-dollars, 
;;; quarters, dimes, nickels, and pennies?
;;; To make things simple and clear, we will use the denomination of the coins
;;; to do the computation.
;;; half-dollar -> $0.5	 -> 50 cents
;;; quarter 	-> $0.25 -> 25 cents
;;; dime 		-> $0.1	 -> 10 cents
;;; nickel 		-> $0.05 -> 5 cents
;;; penny 		-> $0.01 -> 1 cent

; Recursive
(define (cc-recur amount)
	(define (cc amount kinds)
		;;; You can find cc(-5 3) in the output which is the only case that 
		;;; has a negative value for amount
		; (display "cc(") (display amount) (display " ") (display kinds) (display ")") 
		; (if (< amount 0) (display "<-"))
		; (newline)
		(cond ((= amount 0) 1)
			  ((or (< amount 0) (= kinds 0)) 0)
		  	  (else (+ (cc amount (- kinds 1)) 
			  		   (cc (- amount (first-deno kinds)) kinds)))))

	(cc 100 5))
	
; Iterative
; Use memoization strategy.
; Ref: https://en.wikipedia.org/wiki/Dynamic_programming
(define (cc-iter amount)
	(define (iter amount kinds )
		(cond ()
			  ()
		  	  (else ())))

	
;;; Here we are thinking of the coins as arranged in order from 
;;; largest to smallest, but any order would do as well.
;;; first-deno takes the number of kinds of coins and returns the  
;;; denomination of the first kind (the largest in the group)
(define (first-deno kinds)
	(cond ((= kinds 1) 1)
		  ((= kinds 2) 5)
		  ((= kinds 3) 10)
		  ((= kinds 4) 25)
		  ((= kinds 5) 50)))