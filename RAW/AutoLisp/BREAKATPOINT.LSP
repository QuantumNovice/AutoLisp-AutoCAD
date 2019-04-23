(defun c:BA (/ e p)
  ;; Break Object @ Point
  ;; Alan J. Thompson, 03.26.09 / 08.23.10
  (setvar 'errno 0)
  (if
    (while (and (not e) (/= 52 (getvar 'errno)))
      (setq e (entsel "\nSelect object to break: ")))
    
    (progn (setq p (cond ((getpoint "\nSpecify point to break @ <Selection Point>: "))
                         ((osnap (cadr e) "_near"))
                   )
           )
           (vl-cmdf "_.break" e "_F" "_non" p "_non" p)
    )
  )
  (princ)
)