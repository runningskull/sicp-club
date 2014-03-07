;;; Exercise 2.27

(define (deep-reverse lst)
  (if (null? (cdr lst))
      lst
      (append (deep-reverse (cdr lst))
              (if (list? (car lst))
                  (list (deep-reverse (car lst)))
                  (list (car lst))))))


(deep-reverse (list 1 2 (list 3 4 5) 6 7))


;; Is having both conditions of the (if) enclosed in (list)
;; an indication that there's a simplification we can make?
