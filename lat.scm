(load "common.scm")

(define lat?
  (lambda (vlist)
    (cond 
      ((null? vlist) #t)
      ((atom? (car vlist)) (lat? (cdr vlist)))
      (else #f)))) 

(define member?
  (lambda (a latlist)
    (cond
      ((null? latlist) #f)
      ((eq? (car latlist) a) #t)
      (else (member? a (cdr latlist))))))
