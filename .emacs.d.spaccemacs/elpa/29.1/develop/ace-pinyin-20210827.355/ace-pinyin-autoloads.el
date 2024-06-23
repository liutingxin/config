;;; ace-pinyin-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from ace-pinyin.el

(autoload 'ace-pinyin-jump-word "ace-pinyin" "\
Jump to Chinese word.
If ARG is non-nil, read input from Minibuffer.

(fn ARG)" t)
(autoload 'ace-pinyin-dwim "ace-pinyin" "\
With PREFIX, only search Chinese.
Without PREFIX, search both Chinese and English.

(fn &optional PREFIX)" t)
(autoload 'ace-pinyin-mode "ace-pinyin" "\
Toggle `ace-pinyin-mode'.

This is a minor mode.  If called interactively, toggle the
`Ace-Pinyin mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `ace-pinyin-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(put 'ace-pinyin-global-mode 'globalized-minor-mode t)
(defvar ace-pinyin-global-mode nil "\
Non-nil if Ace-Pinyin-Global mode is enabled.
See the `ace-pinyin-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-pinyin-global-mode'.")
(custom-autoload 'ace-pinyin-global-mode "ace-pinyin" nil)
(autoload 'ace-pinyin-global-mode "ace-pinyin" "\
Toggle Ace-Pinyin mode in all buffers.
With prefix ARG, enable Ace-Pinyin-Global mode if ARG is positive; otherwise,
disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Ace-Pinyin mode is enabled in all buffers where `turn-on-ace-pinyin-mode' would
do it.

See `ace-pinyin-mode' for more information on Ace-Pinyin mode.

(fn &optional ARG)" t)
(autoload 'turn-on-ace-pinyin-mode "ace-pinyin" "\
Turn on `ace-pinyin-mode'." t)
(autoload 'turn-off-ace-pinyin-mode "ace-pinyin" "\
Turn off `ace-pinyin-mode'." t)
(register-definition-prefixes "ace-pinyin" '("ace-pinyin-"))

;;; End of scraped data

(provide 'ace-pinyin-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; ace-pinyin-autoloads.el ends here