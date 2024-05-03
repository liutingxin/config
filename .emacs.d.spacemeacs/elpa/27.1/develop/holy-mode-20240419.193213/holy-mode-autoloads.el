;;; holy-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "holy-mode" "holy-mode.el" (0 0 0 0))
;;; Generated autoloads from holy-mode.el

(defvar holy-mode nil "\
Non-nil if Holy mode is enabled.
See the `holy-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `holy-mode'.")

(custom-autoload 'holy-mode "holy-mode" nil)

(autoload 'holy-mode "holy-mode" "\
Global minor mode to repulse the evil from spacemacs.

If called interactively, enable Holy mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

The `insert state' is replaced by the `emacs state'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "holy-mode" '("amen" "holy-" "in-nomine-patris-et-filii-et-spiritus-sancti")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; holy-mode-autoloads.el ends here
