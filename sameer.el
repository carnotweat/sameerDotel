;; no-to use-package, thanks to my version
;; why not setq? Nor far all
;; why not lambda ? name space 
;; why not eval-after-load?
;;hook is a  variable holding a list of functions
;; To-Do (dolist (hook '(prog-mode-hook text-mode-hook css-mode-hook ...))
;; To-Do do it in org-mode
(defun sameer/theme ()
  (interactive)
  (call-interactively 'load-theme))
;; I want it to take a list 
(defun sameer/delete ()
  (interactive)
  (call-interactively 'package-delete))
;; I want it to take a list
;; add to list?
;; (funcall #'sameer/delete org org-download)
;; closure? 
(defun sameer/refresh ()
  (interactive)
  (call-interactively 'package-refresh-contnts))
(defun sameer/install ()
  (interactive)
  (call-interactively 'package-install))
(dolist (hook '(c-mode-common-hook))
  (add-hook  'sameer/theme 'sameer/delete 'sameer/refresh 'sameer/install))


