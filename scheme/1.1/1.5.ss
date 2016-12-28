; E 1.5

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

; (test 0 (p))

; Applicative-order
;    (test 0 (p))
; -> (test 0 (p))
; -> (test 0 (p))
; -> (test 0 (p))
; ... 
; infinite call to function p
;
; --------
; Normal-order
; if has special evaluation order
; In this case, the expression being tested is evaluated to true,
; and the false statement (call to function p) is never evaluated.
;    (test 0 (p))
; -> (if (= 0 0) 0 (p))
; -> (if (#t) 0 (p))
; -> 0

