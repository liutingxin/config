;;; persistent-soft-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from persistent-soft.el

(let ((loads (get 'persistent-soft 'custom-loads))) (if (member '"persistent-soft" loads) nil (put 'persistent-soft 'custom-loads (cons '"persistent-soft" loads)) (put 'extensions 'custom-loads (cons 'persistent-soft (get 'extensions 'custom-loads)))))
(autoload 'persistent-soft-location-readable "persistent-soft" "\
Return non-nil if LOCATION is a readable persistent-soft data store.

(fn LOCATION)")
(autoload 'persistent-soft-location-destroy "persistent-soft" "\
Destroy LOCATION (a persistent-soft data store).

Returns non-nil on confirmed success.

(fn LOCATION)")
(autoload 'persistent-soft-exists-p "persistent-soft" "\
Return t if SYMBOL exists in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Returns nil on failure, without throwing an error.

(fn SYMBOL LOCATION)")
(autoload 'persistent-soft-fetch "persistent-soft" "\
Return the value for SYMBOL in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Returns nil on failure, without throwing an error.

(fn SYMBOL LOCATION)")
(autoload 'persistent-soft-flush "persistent-soft" "\
Flush data for the LOCATION data store to disk.

(fn LOCATION)")
(autoload 'persistent-soft-store "persistent-soft" "\
Under SYMBOL, store VALUE in the LOCATION persistent data store.

This is a noop unless LOCATION is a string and pcache is loaded.

Optional EXPIRATION sets an expiry time in seconds.

Returns a true value if storage was successful.  Returns nil
on failure, without throwing an error.

(fn SYMBOL VALUE LOCATION &optional EXPIRATION)")
(register-definition-prefixes "persistent-soft" '("persistent-soft-"))

;;; End of scraped data

(provide 'persistent-soft-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; persistent-soft-autoloads.el ends here
