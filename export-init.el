(setq package-user-dir (concat default-directory "elpa"))
(unless (file-directory-p package-user-dir)
  (make-directory package-user-dir))

(package-initialize)

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(package-refresh-contents)

(package-install 'org)
(package-install 'ox-reveal)
(require 'ox-reveal)
