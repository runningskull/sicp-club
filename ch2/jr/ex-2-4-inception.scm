;; this gives a glimpse down the rabbit hole that has
;; church notation (mentioned in ex2.6) at the bottom

(define (-cons x y)
  (lambda (m) (m x y)))

(define (-car z)
  (z (lambda (p q) p)))

(define (-cdr z)
  (z (lambda (p q) q)))


(-car (-cons 3 5))
(-cdr (-cons 3 5))
