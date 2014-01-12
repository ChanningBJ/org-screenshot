org-screenshot
==============

This this a extension for emacs org-mode to take a screen shot and insert into the org file

## setup

```lisp
(add-hook 'org-mode-hook 'iimage-mode)   ; enable iimage-mode
(add-to-list 'load-path  "~/workspace/github/org-screenshot/")
(require 'org-screenshot) 
(global-set-key (kbd "C-p") 'org-screenshot)
```
