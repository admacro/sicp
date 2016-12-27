; E 1.3
; Summerize the squares of the two larger numbers given three numbers
(define (sum-larger-sqr a b c)
    (cond ((and (> a b) (> b c)) (+ (* a a) (* b b)))
          ((and (> a b) (> c b)) (+ (* a a) (* c c)))
          (else (+ (* b b) (* c c)))))

; (sum-larger-sqr 9 -6 3)
