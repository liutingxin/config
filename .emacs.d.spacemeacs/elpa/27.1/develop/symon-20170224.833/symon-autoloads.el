;;; symon-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "symon" "symon.el" (0 0 0 0))
;;; Generated autoloads from symon.el

(defvar symon-mode nil "\
Non-nil if Symon mode is enabled.
See the `symon-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `symon-mode'.")

(custom-autoload 'symon-mode "symon" nil)

(autoload 'symon-mode "symon" "\
tiny graphical system monitor

If called interactively, enable Symon mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "symon" '("define-symon-monitor" "symon-")))

;;;***

;;;### (autoloads nil nil ("symon-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; symon-autoloads.el ends here