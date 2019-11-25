(defun c:BA (/ entity point)
  ;; Break Object @ Point ALIAS Shortcut
  ;; Alan J. Thompson, 03.26.09 / 08.23.10
  ;; Novice 19.1.19
  (setvar 'errno 0)
  
  ;; Select an object if no error occurs
  ;; Incase of error ask the user again
  (if
    (while (and (not e) (/= 52 (getvar 'errno)))
      (setq entity (entsel "\nSelect object to break: "))) 
    ;; If user specifies a poinr break at that point
    ;; 	else break at the nearest object snap
    (setq point (cond ((getpoint "\nSpecify point to break @ <Selection Point>: "))
                         ((osnap (cadr entity) "_near"))
                   )
           ;; We need to put anything in the entry to escape
	   ;; Initial break snap I used "junk"
           (command "_.break" entity "junk" point "junk" point)
    )
  )
)