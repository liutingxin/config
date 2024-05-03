;;; helm-comint-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-comint" "helm-comint.el" (0 0 0 0))
;;; Generated autoloads from helm-comint.el

(autoload 'helm-comint-prompts "helm-comint" "\
Pre-configured `helm' to browse the prompts of the current comint buffer." t nil)

(autoload 'helm-comint-prompts-all "helm-comint" "\
Pre-configured `helm' to browse the prompts of all comint sessions." t nil)

(autoload 'helm-comint-input-ring "helm-comint" "\
Preconfigured `helm' that provide completion of `comint' history." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-comint" '("helm-comint-")))

;;;***

;;;### (autoloads nil nil ("helm-comint-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-comint-autoloads.el ends here
