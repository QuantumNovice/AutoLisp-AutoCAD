

(defun c:a2 ()
  	(setq line (entsel))
  	(setq distanc 20)
  	(print (cadr line))
  	(setq x 1)
  	(setq factor (getreal "Factor"))
  	(if (<= factor 1) (setq factor 1.1) )
  	(print factor)
	(while (< x distanc)
  		(command "_.offset" x line pause "")
  		(setq line (entlast))
  		(setq x (* x factor))
  		

)
  )
