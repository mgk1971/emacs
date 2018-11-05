;;; package --- ANSI-colors in the compilation buffer output

;;; Commentary:
;; from http://endlessparentheses.com/ansi-colors-in-the-compilation-buffer-output.html

;;; Code:
(require 'ansi-color)
(defun endless/colorize-compilation ()
  "Colorize from `compilation-filter-start' to `point'."
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region
     compilation-filter-start (point))))

(add-hook 'compilation-filter-hook
          #'endless/colorize-compilation)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;; my_compilation.el ends here
