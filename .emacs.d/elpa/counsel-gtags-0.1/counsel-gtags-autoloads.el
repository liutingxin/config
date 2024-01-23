;;; counsel-gtags-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "counsel-gtags" "counsel-gtags.el" (0 0 0 0))
;;; Generated autoloads from counsel-gtags.el

(autoload 'counsel-gtags-find-definition "counsel-gtags" "\
Find `tagname' definition.

\(fn TAGNAME)" t nil)

(autoload 'counsel-gtags-find-reference "counsel-gtags" "\
Find `tagname' references.

\(fn TAGNAME)" t nil)

(autoload 'counsel-gtags-find-symbol "counsel-gtags" "\
Find `tagname' references.

\(fn TAGNAME)" t nil)

(autoload 'counsel-gtags-find-file "counsel-gtags" "\
Find `filename' from tagged files.

\(fn FILENAME)" t nil)

(autoload 'counsel-gtags-pop "counsel-gtags" "\
Jump back to previous point." t nil)

(autoload 'counsel-gtags-create-tags "counsel-gtags" "\
Create tag files tags in `rootdir'. This command is asynchronous.

\(fn ROOTDIR LABEL)" t nil)

(autoload 'counsel-gtags-update-tags "counsel-gtags" "\
Update TAG file. Update All files with `C-u' prefix.
Generate new TAG file in selected directory with `C-u C-u'" t nil)

(autoload 'counsel-gtags-dwim "counsel-gtags" "\
Call the counsel-gtags command by current context(Do What I Mean)
by global --from-here option." t nil)

(autoload 'counsel-gtags-mode "counsel-gtags" "\
Toggle Counsel-Gtags mode on or off.

This is a minor mode.  If called interactively, toggle the
`Counsel-Gtags mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `counsel-gtags-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\\{counsel-gtags-mode-map}

\(fn &optional ARG)" t nil)

(register-definition-prefixes "counsel-gtags" '("counsel-gtags-"))

;;;***

;;;### (autoloads nil nil ("counsel-gtags-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; counsel-gtags-autoloads.el ends here
