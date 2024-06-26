;;; ace-pinyin-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ace-pinyin" "ace-pinyin.el" (0 0 0 0))
;;; Generated autoloads from ace-pinyin.el

(autoload 'ace-pinyin-jump-word "ace-pinyin" "\
Jump to Chinese word.
If ARG is non-nil, read input from Minibuffer.

\(fn ARG)" t nil)

(autoload 'ace-pinyin-dwim "ace-pinyin" "\
With PREFIX, only search Chinese.
Without PREFIX, search both Chinese and English.

\(fn &optional PREFIX)" t nil)

(autoload 'ace-pinyin-mode "ace-pinyin" "\
Toggle `ace-pinyin-mode'.

If called interactively, enable Ace-Pinyin mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

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
With prefix ARG, enable Ace-Pinyin-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Ace-Pinyin mode is enabled in all buffers where
`turn-on-ace-pinyin-mode' would do it.
See `ace-pinyin-mode' for more information on Ace-Pinyin mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-ace-pinyin-mode "ace-pinyin" "\
Turn on `ace-pinyin-mode'." t nil)

(autoload 'turn-off-ace-pinyin-mode "ace-pinyin" "\
Turn off `ace-pinyin-mode'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ace-pinyin" '("ace-pinyin-")))

;;;***

;;;### (autoloads nil nil ("ace-pinyin-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ace-pinyin-autoloads.el ends here
