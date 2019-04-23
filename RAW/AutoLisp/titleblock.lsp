
(defun pointdivide (point n)
  (print "Pointdivide")
  (print point)
  (print n)
  (setq x(/ (cadr point) n))
  (setq y(/ (cadr point) n))
  (setq point (list x y))
  (print point)
 )


(defun tyyb (p1 p2 p3 p4)
	(command "line" p1 p2 p3 p4 p1 "")
  	(setq DEMARCATION_X (- (car p2) (* (car p2) 0.3)))
  	(command "line"
		 (list (/ (car p2) 2.0) (cadr p1)) ;; Draw the outlines of title block
		 (pointdivide p3 2.0)
		 (list (car p2) (/ (cadr p3) 2))
		 "")
  	(command "line" ;; Demarcate title block into two on the basis of percentage
		 (list DEMARCATION_X (/ (cadr p3) 2))
		 (list DEMARCATION_X (/ (cadr p1) 2))
		 "")
  	;; Array
  	(setq i 0)
  	(while (>= i 0)
	  (command "line"
		   (list DEMARCATION_X (+ (/ (cadr p4) 2) i))
		   (list (car p4) (+ (/ (cadr p4) 2) i))
		   "")
	  (setq i (- i 1))
	)
  	
  	
)

(tyyb (list 0 0) (list 10 0) (list 10 10) (list 0 10))