;;;; Exercise 2.18

(define (reverse lst)
  (if (null? (cdr lst))
      lst
      (append (reverse (cdr lst)) (list (car lst)))))


(reverse (list 1 2 3 4))

;; Is there a tail-optimized way? Probably... 
