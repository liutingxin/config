;;; cliphist-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cliphist" "cliphist.el" (0 0 0 0))
;;; Generated autoloads from cliphist.el

(autoload 'cliphist-version "cliphist" "\
Echo package version." nil nil)

(autoload 'cliphist-read-items "cliphist" "\
Read clipboard items." t nil)

(autoload 'cliphist-paste-item "cliphist" "\
Paste selected item into current buffer.
Rectangle paste the item if arg RECT-PASTE is non-nil.

\(fn &optional RECT-PASTE)" t nil)

(autoload 'cliphist-select-item "cliphist" "\
Select one item from clipboard history.
NUM and selected item is passed to `cliphist-select-item-callback'.

\(fn &optional NUM)" t nil)

(register-definition-prefixes "cliphist" '("cliphist-"))

;;;***

;;;### (autoloads nil "cliphist-clipit" "cliphist-clipit.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cliphist-clipit.el

(register-definition-prefixes "cliphist-clipit" '("cliphist-clipit-"))

;;;***

;;;### (autoloads nil "cliphist-flycut" "cliphist-flycut.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cliphist-flycut.el

(register-definition-prefixes "cliphist-flycut" '("cliphist-flycut-"))

;;;***

;;;### (autoloads nil "cliphist-greenclip" "cliphist-greenclip.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cliphist-greenclip.el

(register-definition-prefixes "cliphist-greenclip" '("cliphist-greenclip-"))

;;;***

;;;### (autoloads nil "cliphist-parcellite" "cliphist-parcellite.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cliphist-parcellite.el

(register-definition-prefixes "cliphist-parcellite" '("cliphist-parcellite-"))

;;;***

;;;### (autoloads nil "cliphist-sdk" "cliphist-sdk.el" (0 0 0 0))
;;; Generated autoloads from cliphist-sdk.el

(register-definition-prefixes "cliphist-sdk" '("cliphist-sdk-"))

;;;***

;;;### (autoloads nil nil ("cliphist-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cliphist-autoloads.el ends here
