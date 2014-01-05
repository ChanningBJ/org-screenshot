(provide 'org-screenshot)

(defun org-screenshot ()
  "Take a screenshot into a unique-named file in the current buffer file
  directory and insert a link to this file."
  (interactive)
  (setq filename
	(concat (make-temp-name
		 (concat buffer-file-name "_screenshot/") ) ".png"))
  (setq dirname
	(concat buffer-file-name "_screenshot/")
	)
  (if (file-exists-p dirname)
      ()
    (make-directory dirname)
    )
  
  (suspend-frame)
  (call-process-shell-command "scrot" nil nil nil nil " -s " (concat
							    "\"" filename "\"" ))
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images)
  )


(defun org-screenshot-test ()
  "Take a screenshot into a unique-named file in the current buffer file
  directory and insert a link to this file."
  (interactive)
  (setq filename
	(concat (make-temp-name
		 (concat buffer-file-name "_screenshot/") ) ".png"))
  (message filename)
  )


