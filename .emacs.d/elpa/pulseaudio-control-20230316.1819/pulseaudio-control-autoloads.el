;;; pulseaudio-control-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pulseaudio-control" "pulseaudio-control.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from pulseaudio-control.el

(defvar pulseaudio-control-display-mode nil "\
Non-nil if Pulseaudio-Control-Display mode is enabled.
See the `pulseaudio-control-display-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pulseaudio-control-display-mode'.")

(custom-autoload 'pulseaudio-control-display-mode "pulseaudio-control" nil)

(autoload 'pulseaudio-control-display-mode "pulseaudio-control" "\
Show the current sink and source information in the mode line.

If called interactively, enable Pulseaudio-Control-Display mode
if ARG is positive, and disable it if ARG is zero or negative.
If called from Lisp, also enable the mode if ARG is omitted or
nil, and toggle it if ARG is `toggle'; disable the mode
otherwise.

\(fn &optional ARG)" t nil)

(autoload 'pulseaudio-control-default-keybindings "pulseaudio-control" "\
Make `C-x /' the prefix for accessing pulseaudio-control bindings." t nil)

(autoload 'pulseaudio-control-display-volume "pulseaudio-control" "\
Display volume of currently-selected Pulse sink." t nil)

(autoload 'pulseaudio-control-increase-sink-volume "pulseaudio-control" "\
Increase the volume of the current Pulse sink by VOL.

\(fn VOL)" t nil)

(autoload 'pulseaudio-control-increase-source-volume "pulseaudio-control" "\
Increase the volume of the current Pulse source by VOL.

\(fn VOL)" t nil)

(autoload 'pulseaudio-control-decrease-sink-volume "pulseaudio-control" "\
Decrease the volume of the current Pulse sink by VOL.

\(fn VOL)" t nil)

(autoload 'pulseaudio-control-decrease-source-volume "pulseaudio-control" "\
Decrease the volume of the current Pulse sink by VOL.

\(fn VOL)" t nil)

(autoload 'pulseaudio-control-select-sink-by-index "pulseaudio-control" "\
Select which Pulse SINK to act on, by numeric index.

\(fn SINK)" t nil)

(autoload 'pulseaudio-control-select-source-by-index "pulseaudio-control" "\
Select which Pulse SOURCE to act on, by numeric index.

\(fn SOURCE)" t nil)

(autoload 'pulseaudio-control-select-sink-by-name "pulseaudio-control" "\
Select which Pulse sink to act on, by name." t nil)

(autoload 'pulseaudio-control-select-source-by-name "pulseaudio-control" "\
Select which Pulse source to act on, by name." t nil)

(autoload 'pulseaudio-control-set-sink-volume "pulseaudio-control" "\
Set volume of currently-selected Pulse sink.

The value can be:

* a percentage, e.g. '10%';
* in decibels, e.g. '2dB';
* a linear factor, e.g. '0.9' or '1.1'.

Argument VOLUME is the volume provided by the user.

\(fn VOLUME)" t nil)

(autoload 'pulseaudio-control-set-source-volume "pulseaudio-control" "\
Set volume of currently-selected Pulse source.

The value can be:

* a percentage, e.g. '10%';
* in decibels, e.g. '2dB';
* a linear factor, e.g. '0.9' or '1.1'.

Argument VOLUME is the volume provided by the user.

\(fn VOLUME)" t nil)

(autoload 'pulseaudio-control-toggle-current-sink-mute "pulseaudio-control" "\
Toggle muting of currently-selected Pulse sink." t nil)

(autoload 'pulseaudio-control-toggle-current-source-mute "pulseaudio-control" "\
Toggle muting of currently-selected Pulse source." t nil)

(autoload 'pulseaudio-control-toggle-sink-mute-by-index "pulseaudio-control" "\
Toggle muting of Pulse sink, specified by index." t nil)

(autoload 'pulseaudio-control-toggle-source-mute-by-index "pulseaudio-control" "\
Toggle muting of Pulse source, specified by index." t nil)

(autoload 'pulseaudio-control-toggle-sink-mute-by-name "pulseaudio-control" "\
Toggle muting of Pulse sink, specified by name." t nil)

(autoload 'pulseaudio-control-toggle-source-mute-by-name "pulseaudio-control" "\
Toggle muting of Pulse source, specified by name." t nil)

(defvar pulseaudio-control-default-sink-mode nil "\
Non-nil if Pulseaudio-Control-Default-Sink mode is enabled.
See the `pulseaudio-control-default-sink-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pulseaudio-control-default-sink-mode'.")

(custom-autoload 'pulseaudio-control-default-sink-mode "pulseaudio-control" nil)

(autoload 'pulseaudio-control-default-sink-mode "pulseaudio-control" "\
Set the use of @DEFAULT_SINK@ for volume operations.

If called interactively, enable Pulseaudio-Control-Default-Sink
mode if ARG is positive, and disable it if ARG is zero or
negative.  If called from Lisp, also enable the mode if ARG is
omitted or nil, and toggle it if ARG is `toggle'; disable the
mode otherwise.

\(fn &optional ARG)" t nil)

(defvar pulseaudio-control-default-source-mode nil "\
Non-nil if Pulseaudio-Control-Default-Source mode is enabled.
See the `pulseaudio-control-default-source-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pulseaudio-control-default-source-mode'.")

(custom-autoload 'pulseaudio-control-default-source-mode "pulseaudio-control" nil)

(autoload 'pulseaudio-control-default-source-mode "pulseaudio-control" "\
Set the use of @DEFAULT_SOURCE@ for volume operations.

If called interactively, enable Pulseaudio-Control-Default-Source
mode if ARG is positive, and disable it if ARG is zero or
negative.  If called from Lisp, also enable the mode if ARG is
omitted or nil, and toggle it if ARG is `toggle'; disable the
mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pulseaudio-control" '("pulseaudio-control-")))

;;;***

;;;### (autoloads nil nil ("pulseaudio-control-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pulseaudio-control-autoloads.el ends here
