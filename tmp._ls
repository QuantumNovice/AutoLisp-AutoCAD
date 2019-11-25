

(defun c:a2 ()
  	(setq x 0)
  	(while (< x 10)
	  (command "line" (list 0 x) (list 10 x) "")
	  (setq x (* x 2))
	)
  )
