;; 加一
(define addl
  (lambda (n)
    (+ n 1)))
;; 减一

(define subl
  (lambda (n)
    (- n 1)))

;; 加法的实现

(define ++
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (addl (++ n(subl m)))))))

;; 减法
(define --
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (subl (-- n(subl m)))))))

;; 把一个tup内的值全加起来
(define addtup
  (lambda (tup)
  (cond
    ((null? tup) 0)
    (else(++ (car tup)(addtup (cdr tup)))))))


;; 乘法
(define X
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (++ n (X n(subl m)))))))

;; 两个相同长度的tup相加 例如(1 2 3)和 (2 3 4)
(define tup+
  (lambda (tup1 tup2)
    (cond
      ((and(null? tup1)(null? tup2))
       (quote ()))
      (else
       (cons (++ (car tup1)(car tup2))
             (tup+
              (cdr tup1)(cdr tup2)))))))

