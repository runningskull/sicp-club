(define (square x)
  (* x x))



;; not using (map)

(define (-tree-map fn tree)
  (let ((fncar (if (list? (car tree))
                   (tree-map fn (car tree))
                   (fn (car tree)))))
    (if (null? (cdr tree))
        (list fncar)
        (append (list fncar)
                (tree-map fn (cdr tree))))))



;; using (map) - so much simpler :)

(define (tree-map fn tree)
  (map (lambda (x)
         (if (list? x) (tree-map fn x) (fn x)))
       tree))



(tree-map square (list 1 2 (list 3 4) 5 6 (list 7 8 (list 9 10))))

;; (1 2 (3 4) 5 6 (7 8 (9 10)))
