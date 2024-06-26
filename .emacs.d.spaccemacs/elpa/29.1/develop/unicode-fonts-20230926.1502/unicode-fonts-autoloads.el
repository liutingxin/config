;;; unicode-fonts-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from unicode-fonts.el

(let ((loads (get 'unicode-fonts 'custom-loads))) (if (member '"unicode-fonts" loads) nil (put 'unicode-fonts 'custom-loads (cons '"unicode-fonts" loads)) (put 'i18n 'custom-loads (cons 'unicode-fonts (get 'i18n 'custom-loads)))))
(let ((loads (get 'unicode-fonts-tweaks 'custom-loads))) (if (member '"unicode-fonts" loads) nil (put 'unicode-fonts-tweaks 'custom-loads (cons '"unicode-fonts" loads)) (put 'unicode-fonts 'custom-loads (cons 'unicode-fonts-tweaks (get 'unicode-fonts 'custom-loads)))))
(let ((loads (get 'unicode-fonts-debug 'custom-loads))) (if (member '"unicode-fonts" loads) nil (put 'unicode-fonts-debug 'custom-loads (cons '"unicode-fonts" loads)) (put 'unicode-fonts 'custom-loads (cons 'unicode-fonts-debug (get 'unicode-fonts 'custom-loads)))))
(autoload 'unicode-fonts-first-existing-font "unicode-fonts" "\
Return the (normalized) first existing font name from FONT-NAMES.

FONT-NAMES is a list, with each element typically in Fontconfig
font-name format.

The font existence-check is lazy; fonts after the first hit are
not checked.

(fn FONT-NAMES)")
(autoload 'unicode-fonts-font-exists-p "unicode-fonts" "\
Run `font-utils-exists-p' with a limited scope.

The scope is defined by `unicode-fonts-restrict-to-fonts'.

FONT-NAME, POINT-SIZE, and STRICT are as documented at
`font-utils-exists-p'.

(fn FONT-NAME &optional POINT-SIZE STRICT)")
(autoload 'unicode-fonts-read-block-name "unicode-fonts" "\
Read a Unicode block name using `completing-read'.

Spaces are replaced with underscores in completion values, but
are removed from the return value.

Use `ido-completing-read' if IDO is set.

(fn &optional IDO)")
(autoload 'unicode-fonts-setup "unicode-fonts" "\
Set up Unicode fonts for FONTSET-NAMES.

Optional FONTSET-NAMES must be a list of strings.  Fontset names
which do not currently exist will be ignored.  The default value
is `unicode-fonts-fontset-names'.

Optional REGENERATE requests that the disk cache be invalidated
and regenerated.

(fn &optional FONTSET-NAMES REGENERATE)" t)
(register-definition-prefixes "unicode-fonts" '("persistent-softest-" "unicode-"))

;;; End of scraped data

(provide 'unicode-fonts-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; unicode-fonts-autoloads.el ends here
