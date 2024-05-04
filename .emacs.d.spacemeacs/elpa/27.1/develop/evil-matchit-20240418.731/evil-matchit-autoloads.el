;;; evil-matchit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-matchit" "evil-matchit.el" (0 0 0 0))
;;; Generated autoloads from evil-matchit.el

(autoload 'evilmi-jump-items-internal "evil-matchit" "\
Jump between items NUM times and apply function FUNC.

\(fn NUM &optional FUNC)" nil nil)

(autoload 'evilmi-jump-items-native "evil-matchit" "\
Jump between items NUM times.

\(fn &optional NUM)" t nil)

(autoload 'evilmi-load-plugin-rules "evil-matchit" "\
Load MODES's plugin RULES.

\(fn MODES RULES)" nil nil)

(autoload 'evilmi-init-plugins "evil-matchit" "\
Load plugins." t nil)

(autoload 'evilmi-select-items "evil-matchit" "\
Select NUM items/tags and the region between them.

\(fn &optional NUM)" t nil)

(autoload 'evilmi-delete-items "evil-matchit" "\
Delete NUM items/tags and the region between them.

\(fn &optional NUM)" t nil)

(autoload 'evilmi-version "evil-matchit" "\
Print version." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-c" "evil-matchit-c.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from evil-matchit-c.el

(autoload 'evilmi-c-get-tag "evil-matchit-c" "\
Get tag at point." nil nil)

(autoload 'evilmi-c-jump "evil-matchit-c" "\
Use INFO to jump NUM times.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-c" '("evilmi-c-")))

;;;***

;;;### (autoloads nil "evil-matchit-cmake" "evil-matchit-cmake.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-cmake.el

(autoload 'evilmi-cmake-get-tag "evil-matchit-cmake" nil nil nil)

(autoload 'evilmi-cmake-jump "evil-matchit-cmake" "\


\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-cmake" '("evilmi-cmake-")))

;;;***

;;;### (autoloads nil "evil-matchit-diff" "evil-matchit-diff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-diff.el

(autoload 'evilmi-diff-get-tag "evil-matchit-diff" "\
Get tag at point." nil nil)

(autoload 'evilmi-diff-jump "evil-matchit-diff" "\
Jump to the matching tag using INFO and NUM.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-diff" '("evilmi-diff-")))

;;;***

;;;### (autoloads nil "evil-matchit-elixir" "evil-matchit-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-elixir.el

(autoload 'evilmi-elixir-get-tag "evil-matchit-elixir" nil nil nil)

(autoload 'evilmi-elixir-jump "evil-matchit-elixir" "\


\(fn RLT NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-elixir" '("evilmi-elixir-")))

;;;***

;;;### (autoloads nil "evil-matchit-evil-setup" "evil-matchit-evil-setup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-evil-setup.el

(autoload 'evilmi-jump-to-percentage "evil-matchit-evil-setup" "\
Like Vim %, NUM is the percentage of location.

\(fn NUM)" t nil)
 (autoload 'evilmi-jump-items "evil-matchit" nil t)

(autoload 'evil-matchit-mode "evil-matchit-evil-setup" "\
Buffer-local minor mode to emulate matchit.vim.

If called interactively, enable Evil-Matchit mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-matchit-mode "evil-matchit-evil-setup" "\
Enable the minor mode in the current buffer." nil nil)

(autoload 'turn-off-evil-matchit-mode "evil-matchit-evil-setup" "\
Disable the minor mode in the current buffer." nil nil)

(put 'global-evil-matchit-mode 'globalized-minor-mode t)

(defvar global-evil-matchit-mode nil "\
Non-nil if Global Evil-Matchit mode is enabled.
See the `global-evil-matchit-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-matchit-mode'.")

(custom-autoload 'global-evil-matchit-mode "evil-matchit-evil-setup" nil)

(autoload 'global-evil-matchit-mode "evil-matchit-evil-setup" "\
Toggle Evil-Matchit mode in all buffers.
With prefix ARG, enable Global Evil-Matchit mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Matchit mode is enabled in all buffers where
`turn-on-evil-matchit-mode' would do it.
See `evil-matchit-mode' for more information on Evil-Matchit mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-evil-setup" '("evil")))

;;;***

;;;### (autoloads nil "evil-matchit-fortran" "evil-matchit-fortran.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-fortran.el

(autoload 'evilmi-fortran-get-tag "evil-matchit-fortran" nil nil nil)

(autoload 'evilmi-fortran-jump "evil-matchit-fortran" "\


\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-fortran" '("evilmi-fortran-")))

;;;***

;;;### (autoloads nil "evil-matchit-html" "evil-matchit-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-html.el

(autoload 'evilmi-html-get-tag "evil-matchit-html" "\
Get current tag." nil nil)

(autoload 'evilmi-html-jump "evil-matchit-html" "\
Use INFO from current tag to jump NUM times.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-html" '("evilmi-html--")))

;;;***

;;;### (autoloads nil "evil-matchit-indent" "evil-matchit-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-indent.el

(autoload 'evilmi-indent-get-tag "evil-matchit-indent" "\
Return a list containing start-position, tag-type, keyword." nil nil)

(autoload 'evilmi-indent-extract-keyword "evil-matchit-indent" "\
Extract keyword from LINE.

\(fn LINE)" nil nil)

(autoload 'evilmi-indent-jump "evil-matchit-indent" "\
Use INFO from `evilmi-indent-get-tag' to jump to matched tag.

\(fn INFO)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-indent" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-javascript" "evil-matchit-javascript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-javascript.el

(autoload 'evilmi-javascript-get-tag "evil-matchit-javascript" "\
Get tag at point." nil nil)

(autoload 'evilmi-javascript-jump "evil-matchit-javascript" "\
Jump to the matching tag using INFO and NUM.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-javascript" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-latex" "evil-matchit-latex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-latex.el

(autoload 'evilmi-latex-get-tag "evil-matchit-latex" nil nil nil)

(autoload 'evilmi-latex-jump "evil-matchit-latex" "\


\(fn RLT NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-latex" '("evilmi-latex-")))

;;;***

;;;### (autoloads nil "evil-matchit-markdown" "evil-matchit-markdown.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-markdown.el

(autoload 'evilmi-markdown-get-tag "evil-matchit-markdown" "\
Get current tag.  Return (list start-position tag)." nil nil)

(autoload 'evilmi-markdown-jump "evil-matchit-markdown" "\
Jump to the next tag using INFO and NUM.

\(fn INFO NUM)" nil nil)

;;;***

;;;### (autoloads nil "evil-matchit-ocaml" "evil-matchit-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-ocaml.el

(autoload 'evilmi-ocaml-get-tag "evil-matchit-ocaml" "\
Return information of current tag: (list position-of-word word)." nil nil)

(autoload 'evilmi-ocaml-jump "evil-matchit-ocaml" "\


\(fn RLT NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-ocaml" '("evilmi-ocaml-")))

;;;***

;;;### (autoloads nil "evil-matchit-octave" "evil-matchit-octave.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-octave.el

(autoload 'evilmi-octave-get-tag "evil-matchit-octave" "\
Get current tag info." nil nil)

(autoload 'evilmi-octave-jump "evil-matchit-octave" "\
Use INFO returned by `evilmi-octave-get-tag' and NUM to jump to matched tag.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-octave" '("evilmi-octave-")))

;;;***

;;;### (autoloads nil "evil-matchit-org" "evil-matchit-org.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from evil-matchit-org.el

(autoload 'evilmi-org-get-tag "evil-matchit-org" "\
Get current tag in org file." nil nil)

(autoload 'evilmi-org-jump "evil-matchit-org" "\
Jump to the matching tag using INFO and NUM.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-org" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-prog" "evil-matchit-prog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-prog.el

(autoload 'evilmi-prog-get-tag "evil-matchit-prog" "\
Get tag at point." nil nil)

(autoload 'evilmi-prog-jump "evil-matchit-prog" "\
Use INFO to jump NUM times.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-prog" '("evilmi-prog-")))

;;;***

;;;### (autoloads nil "evil-matchit-python" "evil-matchit-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-python.el

(autoload 'evilmi-python-get-tag "evil-matchit-python" "\
Return a list containing start-position, tag-type, keyword." nil nil)

(autoload 'evilmi-python-jump "evil-matchit-python" "\
Use INFO from `evilmi-python-get-tag' to jump to matched tag.
NUM is ignored.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-python" '("evilmi-python-")))

;;;***

;;;### (autoloads nil "evil-matchit-ruby" "evil-matchit-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-ruby.el

(autoload 'evilmi-ruby-get-tag "evil-matchit-ruby" "\
Get tag at point." nil nil)

(autoload 'evilmi-ruby-jump "evil-matchit-ruby" "\
Use INFO to jump NUM times.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-ruby" '("evilmi-ruby-")))

;;;***

;;;### (autoloads nil "evil-matchit-script" "evil-matchit-script.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-script.el

(autoload 'evilmi-script-get-tag "evil-matchit-script" "\
Get tag at point." nil nil)

(autoload 'evilmi-script-jump "evil-matchit-script" "\
Use INFO returned by `evilmi-script-get-tag' and NUM to jump to matched tag.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-script" '("evilmi-script-")))

;;;***

;;;### (autoloads nil "evil-matchit-sdk" "evil-matchit-sdk.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from evil-matchit-sdk.el

(autoload 'evilmi-sdk-curline "evil-matchit-sdk" "\
Get current line text." nil nil)

(autoload 'evilmi-sdk-member "evil-matchit-sdk" "\
Check if KEYWORD exist in KEYWORD-LIST.

\(fn KEYWORD KEYWORD-LIST)" nil nil)

(autoload 'evilmi-sdk-get-tag-info "evil-matchit-sdk" "\
Return (row column is-function-exit-point keyword).
The row and column mark the position in `evilmi-mylang-match-tags'
is-function-exit-point could be unknown status

\(fn KEYWORD MATCH-TAGS)" nil nil)

(autoload 'evilmi-sdk-get-tag "evil-matchit-sdk" "\
Use MATCH-TAGS and HOWTOS to return information for jump.

\(fn MATCH-TAGS HOWTOS)" nil nil)

(autoload 'evilmi-sdk-jump "evil-matchit-sdk" "\
Use RLT, NUM, MATCH-TAGS and HOWTOS to jump.
Return nil if no matching tag found.  Please note (point) is changed
after calling this function.

\(fn RLT NUM MATCH-TAGS HOWTOS)" nil nil)

(autoload 'evilmi-sdk-font-p "evil-matchit-sdk" "\
If current font at POS is among FONTS.

\(fn POS FONTS)" nil nil)

(autoload 'evilmi-sdk-semantic-flex "evil-matchit-sdk" "\
Using the syntax table, do something roughly equivalent to flex.
Semantically check between START and END.  Optional argument DEPTH
indicates at what level to scan over entire lists.
The return value is a token stream.  Each element is a list, such of
the form (symbol start-expression .  end-expression) where SYMBOL
denotes the token type.
END does not mark the end of the text scanned, only the end of the
beginning of text scanned.  Thus, if a string extends past END, the
end of the return token will be larger than END.  To truly restrict
scanning, use `narrow-to-region'.
The last argument, LENGTH specifies that only LENGTH tokens are returned.

\(fn START END &optional DEPTH LENGTH)" nil nil)

(autoload 'evilmi-sdk-tokens "evil-matchit-sdk" "\
Get semantic tokens of current N lines.

\(fn N)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-sdk" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-sh" "evil-matchit-sh.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from evil-matchit-sh.el

(autoload 'evilmi-sh-get-tag "evil-matchit-sh" nil nil nil)

(autoload 'evilmi-sh-jump "evil-matchit-sh" "\


\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-sh" '("evilmi-sh-")))

;;;***

;;;### (autoloads nil "evil-matchit-simple" "evil-matchit-simple.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-simple.el

(autoload 'evilmi-simple-get-tag "evil-matchit-simple" "\
Get current tag in simple language." nil nil)

(autoload 'evilmi-simple-jump "evil-matchit-simple" "\
Use INFO of current tag to jump to matching tag.  NUM is ignored.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-simple" '("evilmi-")))

;;;***

;;;### (autoloads nil "evil-matchit-sql" "evil-matchit-sql.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from evil-matchit-sql.el

(autoload 'evilmi-sql-get-tag "evil-matchit-sql" "\
Get tag at point." nil nil)

(autoload 'evilmi-sql-jump "evil-matchit-sql" "\
Use INFO returned by `evilmi-sql-get-tag' and NUM to jump to matched tag.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-sql" '("evilmi-sql-")))

;;;***

;;;### (autoloads nil "evil-matchit-template" "evil-matchit-template.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-template.el

(autoload 'evilmi-template-get-tag "evil-matchit-template" "\
Get tag at point." nil nil)

(autoload 'evilmi-template-jump "evil-matchit-template" "\
Jump to the matching tag using INFO and NUM.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-template" '("evilmi-template-")))

;;;***

;;;### (autoloads nil "evil-matchit-terminal" "evil-matchit-terminal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-terminal.el

(autoload 'evilmi-prompt-line-p "evil-matchit-terminal" "\
If line at POSITION has prompt at the beginning.

\(fn &optional POSITION)" nil nil)

(autoload 'evilmi-terminal-get-tag "evil-matchit-terminal" "\
Get tag at point." nil nil)

(autoload 'evilmi-terminal-jump "evil-matchit-terminal" "\
Use INFO to jump NUM times.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-terminal" '("evilmi-terminal-p")))

;;;***

;;;### (autoloads nil "evil-matchit-verilog" "evil-matchit-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-verilog.el

(autoload 'evilmi-verilog-get-tag "evil-matchit-verilog" "\
Get tag at point." nil nil)

(autoload 'evilmi-verilog-jump "evil-matchit-verilog" "\
Use INFO returned by `evilmi-verilog-get-tag' and NUM to jump to matched tag.

\(fn INFO NUM)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-matchit-verilog" '("evilmi-verilog-")))

;;;***

;;;### (autoloads nil "evil-matchit-yaml" "evil-matchit-yaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-matchit-yaml.el

(autoload 'evilmi-yaml-get-tag "evil-matchit-yaml" "\
Return a list containing start-position, tag-type, keyword." nil nil)

(autoload 'evilmi-yaml-jump "evil-matchit-yaml" "\
Use INFO returned by `evilmi-yaml-get-tag' and NUM to jump to matched tag.

\(fn INFO NUM)" nil nil)

;;;***

;;;### (autoloads nil nil ("evil-matchit-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-matchit-autoloads.el ends here