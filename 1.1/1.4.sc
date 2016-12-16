; E 1.4
; Operators can be used as operands and returned by expression
; if b is greater than 0, then expression returns the value of summary of a and b
; if b is less than 0 or b equals to 0, then expression returns the value of a minus b

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; (a-plus-abs-b 3 -2)