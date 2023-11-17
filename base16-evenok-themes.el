;;; base16-evenok-themes.el --- A light-theme with perceptively evenly distributed colors maximizing chroma -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Mekeor Melire <mekeor@posteo.de>

;; Author: Mekeor Melire <mekeor@posteo.de>
;; Maintainer: Mekeor Melire <mekeor@posteo.de>
;; Created: 2023
;; Version: 0.3
;; Package-Requires: ((base16-theme "20230502.2156"))
;; Homepage: https://codeberg.org/mekeor/emacs-base16-evenok-themes

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see
;; <https://www.gnu.org/licenses/>.

;;; Code:


;;;###autoload
(and load-file-name
  (boundp 'custom-theme-load-path)
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory
      (file-name-directory load-file-name))))

(provide 'base16-evenok-themes)

;;; base16-evenok-themes.el ends here
