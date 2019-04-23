

(defun c:a2 ()
  	(setq line (entsel))
  	(setq distanc 20)
  	(print (cadr line))
  	(setq x 1)
  	(setq factor (getreal "Factor"))
  	(princ factor)
  	(if (<= factor 1) (setq factor 1.1) )
	(while (= 1 1)
  		(command "_.offset" x line pause "")
  		(setq line (entlast))
  		(setq x (* x factor))
  		

)
  )
