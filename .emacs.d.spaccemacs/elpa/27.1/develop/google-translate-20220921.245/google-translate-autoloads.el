;;; google-translate-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "google-translate-backend" "google-translate-backend.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-backend.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-backend" '("google-translate-backend-")))

;;;***

;;;### (autoloads nil "google-translate-core" "google-translate-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-core" '("google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-core-ui" "google-translate-core-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-core-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-core-ui" '("google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-default-ui" "google-translate-default-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-default-ui.el

(autoload 'google-translate-query-translate "google-translate-default-ui" "\
Interactively translate text with Google Translate.

Query a text (a word or a phrase), and pop up a buffer named *Google
Translate* displaying available translations of the text.

If no defaults for the source and target languages are specified (by
setting the variables `google-translate-default-source-language' and
`google-translate-default-target-language'), interactively query the
missing parts.  For example, a reasonable option may be to specify a
default for the target language and always be queried for the source
language.

With a `C-u' prefix argument, query the source and target languages,
even if any defaults are specified.  For example, you may frequently
need to translate from English to Russian, and you may choose to set
the default source and target languages to \"en\" and  \"ru\", resp.
However, occasionally you may also need to translate from Russian to
English.  With a `C-u' prefix argument you can override the defaults
and specify the source and target languages explicitly.

The languages are queried with completion, and the null input at the
source language prompt is considered as an instruction for Google
Translate to detect the source language.

\(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-query-translate-reverse "google-translate-default-ui" "\
Like `google-translate-query-translate', but performs translation
in the reverse direction.

The value of the variable `google-translate-default-source-language'
\(if set) becomes the target language, and the value of the variable
`google-translate-default-target-language' (if also set) becomes the
source language.

In particular, when both variables are set, translation is performed
in the reverse direction.

\(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-at-point "google-translate-default-ui" "\
Translate the word at point or the words in the active region.

For the meaning of OVERRIDE-P, see `google-translate-query-translate'.

\(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-at-point-reverse "google-translate-default-ui" "\
Like `google-translate-at-point', but performs translation in the
reverse direction.

\(fn &optional OVERRIDE-P)" t nil)

(autoload 'google-translate-buffer "google-translate-default-ui" "\
Translate current buffer.

For the meaning of OVERRIDE-P, see `google-translate-query-translate'.

\(fn &optional OVERRIDE-P REVERSE-P)" t nil)

(autoload 'google-translate-paragraphs-overlay "google-translate-default-ui" "\
Translate current buffer with paragraph by paragraph and SHOW results in overlay below paragraph.
This command also specificly support org-mode.

\(fn &optional OVERRIDE-P REVERSE-P)" t nil)

(autoload 'google-translate-paragraphs-insert "google-translate-default-ui" "\
Translate current buffer with paragraph by paragraph and INSERT results below paragraph.
This command does NOT support document format like org-mode.

\(fn &optional OVERRIDE-P REVERSE-P)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-default-ui" '("%google-translate-" "google-translate-")))

;;;***

;;;### (autoloads nil "google-translate-smooth-ui" "google-translate-smooth-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from google-translate-smooth-ui.el

(autoload 'google-translate-smooth-translate "google-translate-smooth-ui" "\
Translate a text using translation directions.

Make a prompt in minibuffer for a text to translate. Default text
is word at point.

In case of `google-translate-translation-directions-alist' is
empty list then after inputed translating text prompts for source
language and then for target languages.

In case of `google-translate-translation-directions-alist' is not
empty list takes current translation direction and makes
appropriate translation. Current translation direction indicates
in the minibuffers' prompt.

A current translation direction could be changed directly in the
minibuffer by means of key bindings such as C-n and C-p for
changing to the next translation direction and to the previous
one respectively." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-translate-smooth-ui" '("google-translate-")))

;;;***

;;;### (autoloads nil nil ("google-translate-pkg.el" "google-translate.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; google-translate-autoloads.el ends here
