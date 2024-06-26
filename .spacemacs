;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. "~/.mycontribs/")
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;;install html mode, see@https://develop.spacemacs.org/layers/+lang/html/README.html#lsp to install some tools
     (html :variables
           web-fmt-tool 'web-beautify)
         org-enable-github-support t
         )

     markdown
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     helm
     lsp

     ;; ivy
     (lsp :variables
          lsp-lens-enable t
          lsp-use-lsp-ui t

          ;;html css require
          css-enable-lsp t
          less-enable-lsp t
          scss-enable-lsp t
          html-enable-lsp t
          )

     python

     (python :variables
             python-backend 'lsp
             python-format-on-save t
             )

     (c-c++ :variables
            c-c++-backend 'lsp-clangd
            c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-enable-clang-format-on-save t
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-google-style t
            c-c++-enable-clang-format-on-save t
            c-c++-dap-adapters '(dap-lldb dap-cpptools) ;;@https://develop.spacemacs.org/layers/+lang/c-c++/README.html#lsp Install Debugger support，--> M-x dap-cpptools-setup
            c-c++-adopt-subprojects t)

     ;In order the following configuration to take effect, please make sure that the lua-language-server is installed on your system.
     (lua :variables
          lua-backend 'lsp
          lua-lsp-server 'lua-language-server
          ;;下面两个目录的配置需要从/usr下找找
          ;; lsp-clients-lua-language-server-bin "~/.emacs.d/.cache/lsp/lua-language-server/bin/Linux/lua-language-server" ; default path
          ;; lsp-clients-lua-language-server-bin "/usr/bin/lua-language-server" ; default path
          lsp-clients-lua-language-server-bin "/usr/bin/lua-language-server" ; default path
          lsp-clients-lua-language-server-main-location "/usr/lib/lua-language-server/main.lua") ; default path
     version-control

     ;;-------------------------------Checking-------------------------------------------------------
     (spell-checking :variables spell-checking-enable-by-default nil)
     syntax-checking


     ;;-------------------------------File Browser---------------------------------------------------
     neotree

     ;; (treemacs :variables
     ;;           treemacs-use-follow-mode 'tag ;; alse can be set 'tag
     ;;           treemacs-use-filewatch-mode t
     ;;           treemacs-use-git-mode 'deferred
     ;;           treemacs-collapse-dirs 3
     ;;           treemacs-lock-width t
     ;;           treemacs-width 20
     ;;           treemacs-indent-guide-style 'line
     ;;           ;; treemacs-use-all-the-icons-theme t
     ;;           ;; treemacs-use-icons-dired t
     ;;           treemacs-load-theme 'Default
     ;;           )


     ;;-------------------------------Music----------------------------------------------------------
     ;;The more info, please vist @https://developer.spotify.com/dashboard to set id and secret
     ;;@at https://develop.spacemacs.org/layers/+music/spotify/README.html to set spotify layers
     (spotify :variables
              counsel-spotify-client-id '93524362b3ec4602a29193a68eb086a0
              counsel-spotify-client-secret '0d97ec8b93a64e61b8987bf77ecef4b3)
     )

   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '()

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   ;; dotspacemacs-install-packages 'used-only))
   dotspacemacs-install-packages 'used-only)

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need to
   ;; compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;;
   ;; WARNING: pdumper does not work with Native Compilation, so it's disabled
   ;; regardless of the following setting when native compilation is in effect.
   ;;
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)

   ;;dotspacemacs-startup-banner 'official
   ;;dotspacemacs-startup-banner 'random;;My add config
   dotspacemacs-startup-banner '010;My add config
   ;; dotspacemacs-startup-banner 'random;My add config

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 3 line
   ;; heights. If set to a number (int or float) it is used as a constant
   ;; scaling factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "all-the-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons nil

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         modus-operandi
                         spacemacs-dark
                         default
                         spacemacs-light
                         ;farmhouse-theme;;My add config start
                         monokai;;My add config end
                         tsdh-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. This setting has no effect when
   ;; running Emacs in terminal. The font set here will be used for default and
   ;; fixed-pitch faces. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   ;; dotspacemacs-default-font '("Source Code Pro"
   dotspacemacs-default-font '("0xProto"
                               ;; dotspacemacs-default-font '("0xProto Nerd Font"
                               :size 25
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; It is also possible to use a posframe with the following cons cell
   ;; `(posframe . position)' where position can be one of `center',
   ;; `top-center', `bottom-center', `top-left-corner', `top-right-corner',
   ;; `top-right-corner', `bottom-left-corner' or `bottom-right-corner'
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; dotspacemacs-which-key-position '(posframe . top-center) ;;尽量别启动这个，因为可能会导致按键信息显示不完整，只显示一部分
   ;; dotspacemacs-which-key-position 'right ;;也别启动这个，按键信息会移动屏幕上的文本信息

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer';; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   ;; dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-at-startup t;;My add config
   ;;
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default t) (Emacs 24.4+ only)
   ;; dotspacemacs-maximized-at-startup t
   dotspacemacs-maximized-at-startup t;;My add config

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   ;; dotspacemacs-scroll-bar-while-scrolling t
   ;; dotspacemacs-scroll-bar-while-scrolling t
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   ;;dotspacemacs-line-numbers nil
   dotspacemacs-line-numbers t;;My add config

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

       (setq configuration-layer--elpa-archives
             '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
               ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
               ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
       )


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."



  ;;------------------------------general config-------------------------------------------------------
  (setq-default scroll-margin 5);;My add config: scroll marin set 4 lines.
  ;;globla display line numbers. Edward add this line in 2024/6/14, @https://emacs-china.org/t/spacemacs-fundmental/18070/3
  (global-display-line-numbers-mode)

  ;; (toggle-frame-fullscreen)

  ;;set proxy

  ;;-----------------------------add file to list-----------------------------------------------------
  ;; Use text mode for file that doesn't have an extension. edward add this line in 2024/6/14, @https://emacs-china.org/t/spacemacs-fundmental/18070/3
  ;; (add-to-list 'auto-mode-alist '("/[^./]*\\'" . text-mode))
  ;; Use conf-mode for dotfiles.
  ;; (add-to-list 'auto-mode-alist '("/\\.[^/]*\\'" . conf-mode))
  ;; (add-to-list 'auto-mode-alist '("/\\.[^/]*rc\\'" . text-mode))



  ;;------------------------------org config-----------------------------------------------------------
  (with-eval-after-load 'org
    (setq
     org-startup-indented t;; only one start can be show
     org-superstar-headline-bullets-list '(?Ⅰ ?Ⅱ ?Ⅲ ?Ⅳ);;set star themes edward add this line in 2024/6/17

     ;; org-adapt-indentation t
     )
    )

  ;;------------------------------whic config-----------------------------------------------------------
  ;; (setq
  ;;  which-key-show-remaining-keys t
  ;;  which-key--god-mode-support-enabled t
  ;;  which-key-side-window-max-width 1
  ;;  which-key-side-window-max-height 1
  ;;  )
  (setq which-key-side-window-max-width 0.5) ; 设置为屏幕宽度的40%
  (setq which-key-side-window-max-height 0.5)   ; 设置侧边窗口高度为屏幕高度的一半


  ;;------------------------------switch themes----------------------------------------------------------
  (defun switch-to-light-theme ()
    "Switch to light theme."
    (interactive)
    (if (require 'helm-themes nil 'noerror)
        (progn
          (helm-themes--load-theme "modus-operandi"))
      (progn
        (require 'helm-themes)
        (helm-themes-init)
        (helm-themes--load-theme "modus-operandi"))))

  (define-key evil-normal-state-map (kbd "SPC ,") 'switch-to-light-theme)


  (defun switch-to-dark-theme ()
    "Switch to dark theme."
    (interactive)
    (if (require 'helm-themes nil 'noerror)
        (progn
          (helm-themes--load-theme "tsdh-dark"))
      (progn
        (require 'helm-themes)
        (helm-themes-init)
        (helm-themes--load-theme "tsdh-dark"))))

  (define-key evil-normal-state-map (kbd "SPC .") 'switch-to-dark-theme )



  ;; ;; My add config: file browser start
  ;; (defun my-toggle-file-browser ()
  ;;   "Toggle between Neotree and Treemacs."
  ;;   (interactive)
  ;;   (if (bound-and-true-p neo-buffer-name)
  ;;       (progn
  ;;         (neotree-toggle)
  ;;         (treemacs))
  ;;     (progn
  ;;       (treemacs)
  ;;       (neotree-toggle))))

  ;; (defun my-startup-file-browser ()
  ;;   "Start Neotree when Spacemacs starts."
  ;;   (interactive)
  ;;   (neotree-toggle))

  ;; (add-hook 'spacemacs-startup-hook 'my-startup-file-browser)



;; (defun toggle-file-browser ()
;;   "Toggle between Neotree and Treemacs."
;;   (interactive)
;;   (if (featurep 'neotree)
;;       (progn
;;         (spacemacs/treemacs-toggle)
;;         (neotree-hide))
;;     (spacemacs/neotree-toggle)))

;;   (evil-define-key 'normal 'global (kbd "SPC f /") 'toggle-file-browser)
;;   ;; My add config: file browser end.



  ;;------------------- (global-set-key (kbd "SPC '") 'ansi-term)
  (define-key evil-normal-state-map (kbd "SPC '") 'ansi-term)

  ;;see @https://blog.csdn.net/u010164190/article/details/71124582粘贴流程图片展示
  ;see @https://hugoheden.wordpress.com/2009/03/08/copypaste-with-emacs-in-terminal/
  ;Copy/paste with emacs in terminal
  ;; https://hugoheden.wordpress.com/2009/03/08/copypaste-with-emacs-in-terminal/
  ;; I prefer using the "clipboard" selection (the one the
  ;; typically is used by c-c/c-v) before the primary selection
  ;; (that uses mouse-select/middle-button-click)
  (setq x-select-enable-clipboard t) ;;linux 图形化版本 ---> edward add this line in 2024/6/13
  ;; If emacs is run in a terminal, the clipboard- functions have no
  ;; effect. Instead, we use of xsel, see
  ;; http://www.vergenet.net/~conrad/software/xsel/ -- "a command-line
  ;; program for getting and setting the contents of the X selection"
  ;;Linux 命令行版本 --> edward add this line in 2024/6/13
  (unless window-system
    (when (getenv "DISPLAY")
      ;; Callback for when user cuts
      (defun xsel-cut-function (text &optional push)
        ;; Insert text to temp-buffer, and "send" content to xsel stdin
        (with-temp-buffer
          (insert text)
          ;; I prefer using the "clipboard" selection (the one the
          ;; typically is used by c-c/c-v) before the primary selection
          ;; (that uses mouse-select/middle-button-click)
          (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
      ;; Call back for when user pastes
      (defun xsel-paste-function()
        ;; Find out what is current selection by xsel. If it is different
        ;; from the top of the kill-ring (car kill-ring), then return
        ;; it. Else, nil is returned, so whatever is in the top of the
        ;; kill-ring will be used.
        (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
          (unless (string= (car kill-ring) xsel-output)
 	          xsel-output )))
      ;; Attach callbacks to hooks
      (setq interprogram-cut-function 'xsel-cut-function)
      (setq interprogram-paste-function 'xsel-paste-function)
      ;; Idea from
      ;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
      ;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
      ))

    ;;copy&paste Mac图形化与命令行版本 ----> edward add this line in 2024/6/13
    ;; (defun copy-from-osx ()
    ;;   (shell-command-to-string "pbpaste"))
    ;; (defun paste-to-osx (text &optional push)
    ;;   (let ((process-connection-type nil))
    ;;     (let ((proc (start-process"pbcopy" "*Messages*" "pbcopy")))
    ;;       (process-send-string proc text)
    ;;       (process-send-eof proc))))
    ;; (setq interprogram-cut-function 'paste-to-osx)
    ;; (setq interprogram-paste-function 'copy-from-osx)

  ;(evil-define-key 'normal 'global (kbd "SPC '") 'my-open-shell)
  ;;------------------- My add config: open shell end.

  ;; (evil-define-key 'emacs 'global (kbd "<capslock>") 'evil-escape)

  ;;------------------- My add config: open .zshrc start.
  ;(spacemacs/set-leader-keys "fez" 'open-zshrc-file)

  (defun open_zshrc_file ()
    "Open the .zshrc file in the home directory."
    (interactive)
    (find-file "~/.zshrc"))

  (define-key evil-normal-state-map (kbd "SPC fez") 'open_zshrc_file)

  (defun refresh_zshrc_file ()
    "Refresh the .zshrc file in the home directory."
    (interactive)
    (shell-command "source ~/.zshrc"))
  (define-key evil-normal-state-map (kbd "SPC fer") 'refresh_zshrc_file)

  ;;------------------- My add config: open .zshrc end.

  ;;Please install all-the-icons: M-x all-the-icons-install-fonts
  (setq neo-theme (if (display-graphic-p) 'icons 'all-the-icons))
  ;; (setq neo-window-width 20)
  ;; (setq neo-show-hidden-fil s t)
  ;; (setq neo-smart-open t)
  ;; (setq neo-autorefresh t)


  ;;@see at https://github.com/emacs-lsp/lsp-mode/issues/2255, to slove Invalid face reference: lsp-flycheck-info-unnecessary #2255
  ;(defface lsp-flycheck-info-unnecessary
  ;  '((t))
  ;  "Face which apply to side line for symbols not used.
;Possibly erroneously redundant of lsp-flycheck-info-unnecessary-face."
;    :group 'lsp-ui-sideline)
)


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ox-gfm which-key-posframe blacken code-cells company-anaconda anaconda-mode counsel-gtags cython-mode ggtags helm-cscope helm-pydoc importmagic epc ctable concurrent live-py-mode lsp-pyright pip-requirements pipenv load-env-vars pippel poetry py-isort pydoc pyenv-mode pythonic pylookup pytest pyvenv sphinx-doc stickyfunc-enhance xcscope yapfify helm-rtags helm-spotify-plus multi helm wfnames helm-core counsel-projectile counsel counsel-spotify flyspell-correct-ivy ivy-avy ivy-hydra ivy-purpose ivy-rtags ivy-xref ivy-yasnippet lsp-ivy smex swiper ivy wgrep treemacs-all-the-icons helm-lsp lsp-origami origami lsp-treemacs lsp-ui lsp-mode auto-dictionary auto-yasnippet browse-at-remote diff-hl flycheck-pos-tip pos-tip flyspell-correct-helm flyspell-correct helm-c-yasnippet helm-company yasnippet-snippets yasnippet evil-org git-link git-messenger git-modes git-timemachine gitignore-templates gnuplot helm-git-grep helm-ls-git helm-org-rifle htmlize org-cliplink org-contrib org-download org-mime org-pomodoro alert log4e gntp org-present org-projectile org-project-capture org-category-capture org-rich-yank orgit-forge orgit forge yaml ghub closql emacsql treepy smeargle treemacs-magit magit magit-section git-commit with-editor transient company emoji-cheat-sheet-plus gh-md markdown-mode valign vmd-mode monokai-theme farmhouse-themes ws-butler writeroom-mode winum which-key volatile-highlights vim-powerline vi-tilde-fringe uuidgen undo-tree treemacs-projectile treemacs-persp treemacs-icons-dired treemacs-evil toc-org term-cursor symon symbol-overlay string-inflection string-edit-at-point spacemacs-whitespace-cleanup spacemacs-purpose-popwin spaceline space-doc restart-emacs request rainbow-delimiters quickrun popwin pcre2el password-generator paradox overseer org-superstar open-junk-file nameless multi-line macrostep lorem-ipsum link-hint inspector info+ indent-guide hybrid-mode hungry-delete holy-mode hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-descbinds helm-comint helm-ag google-translate golden-ratio flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-evilified-state evil-escape evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu emr elisp-slime-nav elisp-def editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish devdocs define-word column-enforce-mode clean-aindent-mode centered-cursor-mode auto-highlight-symbol auto-compile all-the-icons aggressive-indent ace-link ace-jump-helm-line)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
