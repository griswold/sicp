(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
                 
;(A 1 10)
;(A 0 (A 1 9))
;(A 0 (A 0 (A 1 8)))
;(A 0 (A 0 (A 0 (A 1 7))))
;(A 0 (A 0 (A 0 (A 0 (A 1 6)))))
;(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
;....
; => 1024

(A 2 4)
; => 65536

(A 3 3)
; => 65536

(define (f n) (A 0 n))
; multiplies 2 by n

(define (g n) (A 1 n))
; raises 2 to the n

(define (h n) (A 2 n))
; example: (A 2 3)
; (A 2 3)
; (A 1 (A 2 2))
; (A 1 (A 1 (A 2 1)))
; (A 1 (A 1 2))
; (A 1 (A 0 (A 1 1)))
; (A 1 (A 0 2))
; (A 1 4)
; (A 0 (A 1 3))
; (A 0 (A 0 (A 1 2)))
; (A 0 (A 0 (A 0 (A 1 1))))
; (A 0 (A 0 (A 0 2)))
; (A 0 (A 0 4))
; (A 0 8)
; => 16
(h 0)
; => 0
(h 1)
; => 2
(h 2)
; => 4
(h 3)
; => 16
(h 4)
; => 65536
(h 5)
;Aborting!: maximum recursion depth exceeded

; raises 2 to the h(n - 1) power for x > 1 ?