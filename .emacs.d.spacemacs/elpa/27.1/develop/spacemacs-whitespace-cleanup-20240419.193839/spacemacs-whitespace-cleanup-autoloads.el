;;; spacemacs-whitespace-cleanup-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "spacemacs-whitespace-cleanup" "spacemacs-whitespace-cleanup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from spacemacs-whitespace-cleanup.el

(autoload 'spacemacs-whitespace-cleanup-mode "spacemacs-whitespace-cleanup" "\
Minor mode to clean whitespace.

If called interactively, enable Spacemacs-Whitespace-Cleanup mode
if ARG is positive, and disable it if ARG is zero or negative.
If called from Lisp, also enable the mode if ARG is omitted or
nil, and toggle it if ARG is `toggle'; disable the mode
otherwise.

The minor mode is based on the value of the dotfile variable
 `dotspacemacs-whitespace-cleanup' to determine the behavior
of the cleanup.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spacemacs-whitespace-cleanup" '("global-spacemacs-whitespace-cleanup-mode" "spacemacs-whitespace-cleanup")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; spacemacs-whitespace-cleanup-autoloads.el ends here
