;;; evil-mark-replace-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-mark-replace" "evil-mark-replace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-mark-replace.el

(autoload 'evilmr-toggle-only-word-p "evil-mark-replace" "\
Toggle `evilmr-only-word-p'." t nil)

(autoload 'evilmr-replace "evil-mark-replace" "\
Mark region with MARK-FN and replace in marked area.

\(fn MARK-FN)" nil nil)

(autoload 'evilmr-show-tagged-region "evil-mark-replace" "\
Mark and show tagged region." t nil)

(autoload 'evilmr-tag-selected-region "evil-mark-replace" "\
Tag selected region." t nil)

(autoload 'evilmr-replace-in-buffer "evil-mark-replace" "\
Mark buffer and replace the thing." t nil)

(autoload 'evilmr-replace-in-defun "evil-mark-replace" "\
Mark defun and replace the thing." t nil)

(autoload 'evilmr-replace-in-tagged-region "evil-mark-replace" "\
Mark tagged region and replace the thing." t nil)

(autoload 'evilmr-version "evil-mark-replace" "\
Print current version." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-mark-replace" '("evilmr-")))

;;;***

;;;### (autoloads nil nil ("evil-mark-replace-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-mark-replace-autoloads.el ends here
