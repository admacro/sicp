; E 1.5
; Applicative-order
;    (test 0 (p))
; -> (test 0 p)
; -> (if (= 0 0) 0 p)
; -> (if (#t) 0 p)
; -> 0
;
; --------
; Normal-order
;    (test 0 (p))
; -> (if (= 0 0) 0 (p))
; -> (if (= 0 0) 0 p)
; -> (if (#t) 0 p)
; -> 0

