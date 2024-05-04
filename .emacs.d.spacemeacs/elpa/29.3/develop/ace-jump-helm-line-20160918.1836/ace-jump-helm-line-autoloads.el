;;; ace-jump-helm-line-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from ace-jump-helm-line.el

(autoload 'ace-jump-helm-line "ace-jump-helm-line" "\
Jump to a candidate and execute the default action." t)
(autoload 'ace-jump-helm-line-and-select "ace-jump-helm-line" "\
Jump to and select the candidate in helm window." t)
(defalias 'ace-jump-helm-line-execute-action 'ace-jump-helm-line-and-select)
(autoload 'ace-jump-helm-line-idle-exec-add "ace-jump-helm-line" "\


(fn FUNC)")
(autoload 'ace-jump-helm-line-idle-exec-remove "ace-jump-helm-line" "\


(fn FUNC)")
(defvar ace-jump-helm-line-autoshow-mode nil "\
Non-nil if Ace-Jump-Helm-Line-Autoshow mode is enabled.
See the `ace-jump-helm-line-autoshow-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-jump-helm-line-autoshow-mode'.")
(custom-autoload 'ace-jump-helm-line-autoshow-mode "ace-jump-helm-line" nil)
(autoload 'ace-jump-helm-line-autoshow-mode "ace-jump-helm-line" "\
Automatically show line labels in `helm'.

This is a global minor mode.  If called interactively, toggle the
`Ace-Jump-Helm-Line-Autoshow mode' mode.  If the prefix argument
is positive, enable the mode, and if it is zero or negative,
disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='ace-jump-helm-line-autoshow-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "ace-jump-helm-line" '("ace-jump-helm-line-" "turn-on-ace-jump-helm-line--linum"))

;;; End of scraped data

(provide 'ace-jump-helm-line-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; ace-jump-helm-line-autoloads.el ends here