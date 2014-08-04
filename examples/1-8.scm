(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess .001)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(cube 2)
(cbrt 512)