(let ((gc-cons-threshold (* 256 1024 1024))
      (file-name-handler-alist nil))

  (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

  (require 'init-bootstrap)
  (require 'init-general)
  (require 'init-themes)

  (require 'init-company)
  (require 'init-csharp)

  (when (file-exists-p custom-file)
    (load custom-file))

  (unless (server-running-p)
    (server-start)))
