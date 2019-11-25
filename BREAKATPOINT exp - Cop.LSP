;; Break AT Point Continuous until Return
;; Haseeb
;; 19.1.19

(defun c:BA (/ entity point)
  (setq entity (entsel))
  (setq point (getpoint))
  
  (command "_.break" entity "_F" "_non" point "_non" point)
  
)