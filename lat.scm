(load "common.scm")

; Is "vlist" a list of atoms?
(define lat?
  (lambda (vlist)
    (cond 
      ((null? vlist) #t)
      ((atom? (car vlist)) (lat? (cdr vlist)))
      (else #f)))) 

; Is "a" a member of latlist?
(define member?
  (lambda (a latlist)
    (cond
      ((null? latlist) #f)
      ((eq? (car latlist) a) #t)
      (else (member? a (cdr latlist))))))

; New list from list of atoms "latlist" with first occurrence of "a" removed
(define rember
  (lambda (a latlist)
    (cond
      ((null? latlist) latlist)
      ((eq? (car latlist) a) (cdr latlist))
      (else (cons (car latlist) (rember a (cdr latlist)))))))

; Assumes list is empty or is list of non-empty lists
(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l)) (firsts (cdr l)))))))

(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons old (cons new (cdr lat))))
      (else (cons (car lat) (insertR new old (cdr lat)))))))

