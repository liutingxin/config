;;; term-cursor-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "term-cursor" "term-cursor.el" (0 0 0 0))
;;; Generated autoloads from term-cursor.el

(autoload 'term-cursor-mode "term-cursor" "\
Minor mode for term-cursor.

If called interactively, enable Term-Cursor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-term-cursor-mode 'globalized-minor-mode t)

(defvar global-term-cursor-mode nil "\
Non-nil if Global Term-Cursor mode is enabled.
See the `global-term-cursor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-term-cursor-mode'.")

(custom-autoload 'global-term-cursor-mode "term-cursor" nil)

(autoload 'global-term-cursor-mode "term-cursor" "\
Toggle Term-Cursor mode in all buffers.
With prefix ARG, enable Global Term-Cursor mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Term-Cursor mode is enabled in all buffers where
`(lambda nil (term-cursor-mode t))' would do it.
See `term-cursor-mode' for more information on Term-Cursor mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "term-cursor" '("term-cursor-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; term-cursor-autoloads.el ends here
