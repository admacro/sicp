; E 1.10
; Iterative and recursive

; Ackermann's function
(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) 
                   (A x (- y 1))))))

; Procedure process 
; (A 1 10)
; (A (- 1 1) (A 1 (- 10 1)))
; (A 0 (A 1 9))
; (A 0 (A (- 1 1) (A 1 (- 9 1))))
; (A 0 (A 0 (A 1 8)))
; (A 0 (A 0 (A 0 (A 1 7))))
; (A 0 (A 0 (A 0 (A 0 (A 1 6)))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 32)))))
; (A 0 (A 0 (A 0 (A 0 64))))
; (A 0 (A 0 (A 0 128)))
; (A 0 (A 0 256))
; (A 0 512)
; 1024
; The result is the 10th power of 2

; (A 2 4)
; (A (- 2 1) (A 2 (- 4 1)))
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 (A 0 (A 1 1))))
; (A 1 (A 1 (A 0 2)))
; (A 1 (A 1 4))
; (A 1 (A 0 (A 1 3)))
; (A 1 (A 0 (A 0 (A 1 2))))
; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
; (A 1 (A 0 (A 0 (A 0 2))))
; (A 1 (A 0 (A 0 4)))
; (A 1 (A 0 8))
; (A 1 16)
; ... the following steps follow the same patter as above (A 1 10)
; 65536
; the result is the n-th power of 2 where n is the 4th power of 2 which is 16

; (A 3 3)
; (A 2 (A 3 2))
; (A 2 (A 2 (A 3 1)))
; (A 2 (A 2 2))
; (A 2 (A 1 (A 2 1)))
; (A 2 (A 1 2))
; (A 2 (A 0 (A 1 1)))
; (A 2 (A 0 2))
; (A 2 4)
; ... the following steps are the same with above
; the result is 65536

; Mathematical definition
(define (k n) (* 5 n n)) ; computes 5(n^2)
(define (f n) (A 0 n)) ; computes 2n
(define (g n) (A 1 n)) ; computes 2^n

; This is a bit tricky
; It is defined with recursion as follow
; 
; h(n) = (2, n = 1
;        (2^(h(n-1)), n > 1
;
; See here for details
; https://en.wikipedia.org/wiki/Ackermann_function
(define (h n) (A 2 n))
 

; (A 4 2)
; (A 3 (A 4 1))
; (A 3 2)
; (A 2 (A 3 1))
; (A 2 2)
; (A 1 (A 2 1))
; (A 1 2)
; (A 0 (A 1 1))
; (A 0 2)
; 4

; (A 2 1): 
; 2

; (A 2 2):
; (A 1 (A 2 1))
; (A 1 2)
; 4

; (A 2 3):
; (A 1 (A 2 2))
; (A 1 (A 1 (A 2 1)))
; (A 1 (A 1 2))
; (A 1 4)
; 16

; (A 2 4):
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 4))
; (A 1 16)
; 63356


; (A 2 5):
; (A 1 (A 2 4))
; (A 1 (A 1 (A 2 3)))
; (A 1 (A 1 (A 1 (A 2 2))))
; (A 1 (A 1 (A 1 (A 1 (A 2 1)))))
; (A 1 (A 1 (A 1 (A 1 2))))
; (A 1 (A 1 (A 1 4)))
; (A 1 (A 1 16))
; (A 1 65536)
; 2^63356
