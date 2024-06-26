;;; evil-lion-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-lion" "evil-lion.el" (0 0 0 0))
;;; Generated autoloads from evil-lion.el
(autoload 'evil-lion-left "evil-lion" nil t)
(autoload 'evil-lion-right "evil-lion" nil t)

(defvar evil-lion-mode nil "\
Non-nil if Evil-Lion mode is enabled.
See the `evil-lion-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `evil-lion-mode'.")

(custom-autoload 'evil-lion-mode "evil-lion" nil)

(autoload 'evil-lion-mode "evil-lion" "\
evil-lion global mode, defines align operators 'gl' and 'gL'.

If called interactively, enable Evil-Lion mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

  Align with `gl MOTION CHAR` or right-align with `gL MOTION CHAR`.

  If CHAR is `/` you will be prompted for a regular expression instead
  of a plain character.

  If CHAR is `RET` alignment will be performed with align.el's rules
  specific for the current major mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-lion" '("evil-lion-")))

;;;***

;;;### (autoloads nil nil ("evil-lion-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-lion-autoloads.el ends here
