
(defun pointdivide (point n)
  (print point)
  (print n)
  (setq x(/ (cadr point) 2))
  (setq y(/ (cadr point) 2))
  (setq point (list x y))
  (print point)

 )

(setq p1 (list 2 2))
(setq p2 (list 8 9.0))
(command "rectangle" p1 p2 "")
(setq (pointdivide p1 2))
(setq (pointdivide p2 2))
(command "rectangle" p1 p2 "")