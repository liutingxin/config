;;; open-junk-file-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "open-junk-file" "open-junk-file.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from open-junk-file.el

(autoload 'find-file-hook--open-junk-file "open-junk-file" "\
Run `open-junk-file-hook' when the file is a JUNK file." nil nil)

(add-hook 'find-file-hook 'find-file-hook--open-junk-file)

(autoload 'open-junk-file "open-junk-file" "\
Open a new file whose filename is derived from current time.
You can write short program in it.  It helps to try-and-error programs.

For example, in Emacs Lisp programming, use M-x `open-junk-file'
instead of *scratch* buffer.  The junk code is SEARCHABLE.

FORMAT and FIND-FILE-FN are optional.
Default value of them are `open-junk-file-format' and
`open-junk-file-find-file-function'.

\(fn &optional FORMAT FIND-FILE-FN)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "open-junk-file" '("open-junk-file-")))

;;;***

;;;### (autoloads nil nil ("open-junk-file-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; open-junk-file-autoloads.el ends here
