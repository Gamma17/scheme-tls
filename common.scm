; Example one-line comment

#|
This is an extended comment.
This is the second line of the comment.
|#


(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
