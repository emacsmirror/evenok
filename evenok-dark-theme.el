;;; evenok-dark-theme.el --- A dark-theme with perceptively evenly distributed colors -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Mekeor Melire <mekeor@posteo.de>

;; Author: Mekeor Melire <mekeor@posteo.de>
;; Maintainer: Mekeor Melire <mekeor@posteo.de>
;; Created: 2023
;; Version: 0.6
;; Package-Requires: ((base16-theme "20230502.2156"))
;; Homepage: https://codeberg.org/mekeor/emacs-evenok-themes

;;; Code:

(require 'base16-theme)

(defvar evenok-dark-theme-colors
  (list
    :base00 "#000000"
    :base01 "#333333"
    :base02 "#444444"
    :base03 "#888888"
    :base04 "#bbbbbb"
    :base05 "#dddddd"
    :base06 "#ffffff"
    :base07 "#ffffff"
    :base08 "#ed83a9"
    :base09 "#f08b61"
    :base0A "#cda430"
    :base0B "#87bc5f"
    :base0C "#04c5aa"
    :base0D "#11bbe7"
    :base0E "#85a5ff"
    :base0F "#c78fe6"))

(deftheme evenok-dark)

(base16-theme-define 'evenok-dark
  evenok-dark-theme-colors)

(provide-theme 'evenok-dark)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
    (file-name-directory load-file-name)))

(provide 'evenok-dark-theme)

;;; evenok-dark-theme.el ends here
