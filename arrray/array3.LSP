
(defun GeometricSeries (a_1 r n)
	(print "a_1")
	(print a_1)
	(print "n")
	(print n)
	(print "r")
	(print r)
	;;; Main Code
	(setq a_n (* a_1 (expt r (- n 1))))
)

(defun c:a2 ()
  	(setq line (entsel))
  	(setq a0 (car (cadr line)))
  	(setq a1 (car (getpoint)))
  	(setq factor (/ a1 a0))
  	
	
  	(setq x 1)
  	;;(print factor)
  	;;(if (<= factor 1) (setq factor 1.1) )
  	(print factor)
	;;(setq factor 0.2)
	(setq x factor)
	(while (= 1 1)
  		(command "_.offset" x line pause "")
  		(setq line (entlast))
  		(setq x (* x factor))
  		
		)
)
