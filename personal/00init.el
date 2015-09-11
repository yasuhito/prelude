;; personal/ ディレクトリの中で最初にロードしたいので、
;; ファイル名は 00init.el にしてあります。

(prelude-require-package 'use-package)
(require 'use-package)

(use-package org)
(use-package ob-tangle)

(defun my/load-org-file (file)
  "Load up FILE (*.org) in prelude-personal-dir"
  (org-babel-load-file (expand-file-name file (file-name-directory load-file-name))))

(my/load-org-file "key-bindings.org")
(my/load-org-file "ddskk.org")
(my/load-org-file "doc-mode.org")
