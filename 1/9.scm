(define (dec x)
  (- x 1))

(define (inc x)
  (+ x 1))

;(define (+ a b)
;  (if (= a 0)
;    b
;    (inc (+ (dec a) b))))
;
; (+ 3 2)
; (inc (+ 2 2))
; (inc (inc (+ 1 2)))
; (inc (inc (inc (+ 0 2))))
; (inc (inc (inc 2)))
; (inc (inc 3))
; (inc 4)
; => 5, recursive process
;

 ;(define (+ a b)
 ;  (if (= a 0)
 ;    b
 ;    (+ (dec a) (inc b))))
 ;
 ;(+ 3 2)
 ;(+ 2 3)
 ;(+ 1 4)
 ;(+ 0 5)
 ;=> 5, iterative process