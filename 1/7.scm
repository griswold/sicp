(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; small number: it only has to be within .001 of x, e.g.
;(good-enough? .007 .0000000000000000000000001)

; large number. improve doesnt even really change it
(define (improve guess x)
  (average guess (/ x guess)))
  
(define (average x y)
  (/ (+ x y) 2))

(define (how-many-improvements-til-no-change? big-number)
  improve and compare to last improvement)

(improve 4 999999999999999999999999999999999999999999)
