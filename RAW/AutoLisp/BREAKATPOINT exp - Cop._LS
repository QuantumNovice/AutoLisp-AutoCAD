(defun c:BAD (/ entity point)
  ;; Break Object @ Point ALIAS Shortcut
  ;; Alan J. Thompson, 03.26.09 / 08.23.10
  ;; Novice 19.1.19
  (setvar 'errno 0)
  
  ;; Select an object if no error occurs
  ;; Incase of error ask the user again
  (if
    (while (and (not entity) (/= 52 (getvar 'errno)))
      (setq entity (entsel "\nSelect object to break: "))) 
   
    (progn (setq point (cond ((getpoint "\nSpecify point to break @ <Selection Point>: "))
                         ((osnap (cadr entity) "_near"))
                   )
		)
           
           (command "_.break" entity "_F" "_non" point "_non" point)
    )
  )
)