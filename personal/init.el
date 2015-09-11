(require 'use-package)

(use-package org)
(use-package ob-tangle)

(defun my/load-org-file (file)
  "Load up FILE (*.org) in prelude-personal-dir"
  (org-babel-load-file (expand-file-name file prelude-personal-dir)))

(my/load-org-file "key-bindings.org")
