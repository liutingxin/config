;;; expand-region-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from cc-mode-expansions.el

(register-definition-prefixes "cc-mode-expansions" '("er/"))


;;; Generated autoloads from clojure-mode-expansions.el

(register-definition-prefixes "clojure-mode-expansions" '("er/"))


;;; Generated autoloads from cperl-mode-expansions.el

(register-definition-prefixes "cperl-mode-expansions" '("er/"))


;;; Generated autoloads from css-mode-expansions.el

(register-definition-prefixes "css-mode-expansions" '("er/"))


;;; Generated autoloads from enh-ruby-mode-expansions.el

(register-definition-prefixes "enh-ruby-mode-expansions" '("er/add-enh-ruby-mode-expansions"))


;;; Generated autoloads from er-basic-expansions.el

(register-definition-prefixes "er-basic-expansions" '("er--" "er/mark-"))


;;; Generated autoloads from erlang-mode-expansions.el

(register-definition-prefixes "erlang-mode-expansions" '("er/add-erlang-mode-expansions"))


;;; Generated autoloads from expand-region.el

(autoload 'er/expand-region "expand-region" "\
Increase selected region by semantic units.

With prefix argument expands the region that many times.
If prefix argument is negative calls `er/contract-region'.
If prefix argument is 0 it resets point and mark to their state
before calling `er/expand-region' for the first time.

(fn ARG)" t)


;;; Generated autoloads from expand-region-core.el

(autoload 'er/contract-region "expand-region-core" "\
Contract the selected region to its previous size.
With prefix argument contracts that many times.
If prefix argument is negative calls `er/expand-region'.
If prefix argument is 0 it resets point and mark to their state
before calling `er/expand-region' for the first time.

(fn ARG)" t)
(register-definition-prefixes "expand-region-core" '("er--" "er/"))


;;; Generated autoloads from expand-region-custom.el

(let ((loads (get 'expand-region 'custom-loads))) (if (member '"expand-region-custom" loads) nil (put 'expand-region 'custom-loads (cons '"expand-region-custom" loads)) (put 'tools 'custom-loads (cons 'expand-region (get 'tools 'custom-loads)))))
(defvar expand-region-preferred-python-mode 'python "\
The name of your preferred python mode")
(custom-autoload 'expand-region-preferred-python-mode "expand-region-custom" t)
(defvar expand-region-guess-python-mode t "\
If expand-region should attempt to guess your preferred python mode")
(custom-autoload 'expand-region-guess-python-mode "expand-region-custom" t)
(defvar expand-region-autocopy-register "" "\
If set to a string of a single character (try \"e\"), then the
contents of the most recent expand or contract command will
always be copied to the register named after that character.")
(custom-autoload 'expand-region-autocopy-register "expand-region-custom" t)
(defvar expand-region-skip-whitespace t "\
If expand-region should skip past whitespace on initial expansion")
(custom-autoload 'expand-region-skip-whitespace "expand-region-custom" t)
(defvar expand-region-fast-keys-enabled t "\
If expand-region should bind fast keys after initial expand/contract")
(custom-autoload 'expand-region-fast-keys-enabled "expand-region-custom" t)
(defvar expand-region-contract-fast-key "-" "\
Key to use after an initial expand/contract to contract once more.")
(custom-autoload 'expand-region-contract-fast-key "expand-region-custom" t)
(defvar expand-region-reset-fast-key "0" "\
Key to use after an initial expand/contract to undo.")
(custom-autoload 'expand-region-reset-fast-key "expand-region-custom" t)
(defvar expand-region-exclude-text-mode-expansions '(html-mode nxml-mode) "\
List of modes which derive from `text-mode' for which text mode expansions are not appropriate.")
(custom-autoload 'expand-region-exclude-text-mode-expansions "expand-region-custom" t)
(defvar expand-region-smart-cursor nil "\
Defines whether the cursor should be placed intelligently after expansion.

If set to t, and the cursor is already at the beginning of the new region,
keep it there; otherwise, put it at the end of the region.

If set to nil, always place the cursor at the beginning of the region.")
(custom-autoload 'expand-region-smart-cursor "expand-region-custom" t)
(define-obsolete-variable-alias 'er/enable-subword-mode? 'expand-region-subword-enabled "\
2019-03-23")
(defvar expand-region-subword-enabled nil "\
Whether expand-region should use subword expansions.")
(custom-autoload 'expand-region-subword-enabled "expand-region-custom" t)
(register-definition-prefixes "expand-region-custom" '("expand-region-"))


;;; Generated autoloads from feature-mode-expansions.el

(register-definition-prefixes "feature-mode-expansions" '("er--block-between-keywords" "er/"))


;;; Generated autoloads from html-mode-expansions.el

(register-definition-prefixes "html-mode-expansions" '("er--" "er/"))


;;; Generated autoloads from js-mode-expansions.el

(register-definition-prefixes "js-mode-expansions" '("er/"))


;;; Generated autoloads from js2-mode-expansions.el

(register-definition-prefixes "js2-mode-expansions" '("er/add-js2-mode-expansions" "js2-mark-parent-statement"))


;;; Generated autoloads from jsp-expansions.el

(register-definition-prefixes "jsp-expansions" '("er/"))


;;; Generated autoloads from latex-mode-expansions.el

(register-definition-prefixes "latex-mode-expansions" '("er/"))


;;; Generated autoloads from nxml-mode-expansions.el

(register-definition-prefixes "nxml-mode-expansions" '("er/"))


;;; Generated autoloads from octave-expansions.el

(register-definition-prefixes "octave-expansions" '("er/"))


;;; Generated autoloads from python-el-expansions.el

(register-definition-prefixes "python-el-expansions" '("er--python-string-delimiter" "er/"))


;;; Generated autoloads from python-el-fgallina-expansions.el

(register-definition-prefixes "python-el-fgallina-expansions" '("er--python-" "er/"))


;;; Generated autoloads from python-mode-expansions.el

(register-definition-prefixes "python-mode-expansions" '("er--" "er/" "py-goto-beyond-clause"))


;;; Generated autoloads from ruby-mode-expansions.el

(register-definition-prefixes "ruby-mode-expansions" '("er/"))


;;; Generated autoloads from sml-mode-expansions.el

(register-definition-prefixes "sml-mode-expansions" '("er/"))


;;; Generated autoloads from subword-mode-expansions.el

(register-definition-prefixes "subword-mode-expansions" '("er/"))


;;; Generated autoloads from text-mode-expansions.el

(register-definition-prefixes "text-mode-expansions" '("er/"))


;;; Generated autoloads from the-org-mode-expansions.el

(register-definition-prefixes "the-org-mode-expansions" '("er/"))


;;; Generated autoloads from web-mode-expansions.el

(register-definition-prefixes "web-mode-expansions" '("er/add-web-mode-expansions"))


;;; Generated autoloads from yaml-mode-expansions.el

(register-definition-prefixes "yaml-mode-expansions" '("er--" "er/" "yaml-indent"))


;;; End of scraped data

(provide 'expand-region-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; expand-region-autoloads.el ends here
