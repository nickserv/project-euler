(defun divisible (x y)
  (= (mod x y) 0))

(defun divisible-by-3-or-5 (x)
  (or
    (divisible x 3)
    (divisible x 5)))

(defun list-to (maximum)
  (loop for x from 0 below maximum collect x))

(defun multiples nil
  (remove-if-not
    (lambda (x) (divisible-by-3-or-5 x))
    (list-to 1000)))

(defun sum (lst)
  (apply '+ lst))

(print (sum (multiples)))
