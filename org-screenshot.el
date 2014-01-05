(provide 'org-screenshot)

(defun org-screenshot ()
  "Take a screenshot into a unique-named file in the current buffer file
  directory and insert a link to this file."
  (interactive)
  (setq filename
	(concat (make-temp-name
		 (concat  (getenv "HOME") "/workspace/emacs/notes/" ) ) ".png"))
  (suspend-frame)
  (call-process-shell-command "scrot" nil nil nil nil " -s " (concat
							    "\"" filename "\"" ))
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images)
  )
