;; 去列表的第一个值
(define first
  (lambda(l)
    (cond
      ((null? l)(quote()))
      (else(cons(car (car l))
            (first (cdr l )))))))