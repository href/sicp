(define (pyramid-at-level level)
  (cond ((< level 2) 1)
        (else (* 11 (pyramid-at-level (- level 1))))))

(define (print-pyramid levels)
  (cond ((> levels 0)
         (print-pyramid (- levels 1))
         (newline)
         (display (pyramid-at-level levels))
         )))

(print-pyramid 50)