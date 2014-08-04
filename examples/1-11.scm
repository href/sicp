(define (fn n)
  (cond ((< n 3) n)
        (else (+
                (fn (- n 1))
                (* 2 (fn (- n 2)))
                (* 3 (fn (- n 3)))))))

(define (fn-iter a b c count)
  (cond ((= count 0) a)
        (else (fn-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))))

(fn 1)
(fn 2)
(fn 3)
(fn 4)
(fn 5)

(fn-iter 0 1 2 1)
(fn-iter 0 1 2 2)
(fn-iter 0 1 2 3)
(fn-iter 0 1 2 4)
(fn-iter 0 1 2 5)