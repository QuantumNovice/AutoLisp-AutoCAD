

(defun c:a2 ()
  	(setq x 1)
  	(setq start (getpoint "start"))
  	(setq end (getpoint "end"))
  	(setq distanc (- (cadr end) (cadr start)))
  	(princ distanc)
  	(while (< x distanc)
	  (command "line" (list 0 x) (list 10 x) "")
	  (setq x (* x 1.2))
	)
  )
