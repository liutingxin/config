;;; evil-find-char-pinyin-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-find-char-pinyin" "evil-find-char-pinyin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-find-char-pinyin.el

(defvar evil-find-char-pinyin-mode nil "\
Non-nil if Evil-Find-Char-Pinyin mode is enabled.
See the `evil-find-char-pinyin-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `evil-find-char-pinyin-mode'.")

(custom-autoload 'evil-find-char-pinyin-mode "evil-find-char-pinyin" nil)

(autoload 'evil-find-char-pinyin-mode "evil-find-char-pinyin" "\
Minor mode to make Evil's f/F/t/T be able to find Chinese characters.

This is a minor mode.  If called interactively, toggle the
`Evil-Find-Char-Pinyin mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='evil-find-char-pinyin-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'evil-find-char-pinyin-toggle-snipe-integration "evil-find-char-pinyin" "\


\(fn TOGGLE)" nil nil)

(register-definition-prefixes "evil-find-char-pinyin" '("evil-find-char-pinyin-"))

;;;***

;;;### (autoloads nil nil ("evil-find-char-pinyin-pkg.el") (0 0 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-find-char-pinyin-autoloads.el ends here
