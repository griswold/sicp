(define (cube x)
  (* x x x))

; Newton's method for approximation
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1 x))

(abs (- 2 (cube (cube-root 2))))