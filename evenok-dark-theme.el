;;; evenok-dark-theme.el -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Free Software Foundation, Inc.

;; Author:     Mekeor Melire <mekeor@posteo.de>
;; Homepage:   https://codeberg.org/mekeor/emacs-evenok
;; Maintainer: Mekeor Melire <mekeor@posteo.de>

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see
;; <https://www.gnu.org/licenses/>.

;;;; Code:

(require 'evenok)

(deftheme evenok-dark)

(evenok-theme 'evenok-dark

  ;; L=0%
  '(black . "#000000")

  ;; L=22%
  '(dark . "#1b1b1b")

  ;; L=35%
  '(dim . "#3a3a3a")

  ;; L=48%
  '(grey . "#5d5d5d")
  '(grey-red . "#96365d")
  '(grey-orange . "#993d0d")
  '(grey-green . "#3d6c01")
  '(grey-purple . "#3d57a9")
  '(grey-magenta . "#784293")

  ;; L=57%
  '(faded . "#777777")
  '(faded-red . "#b45177")
  '(faded-orange . "#b7582e")
  '(faded-green . "#56872a")
  '(faded-purple . "#5572c6")
  '(faded-magenta . "#935daf")

  ;; L=73.6%
  '(bright . "#a9a9a9")
  '(bright-red . "#ed83a9") ;; oklch(73.6% 0.135 358)
  '(bright-orange . "#f08b61")
  '(bright-yellow . "#cda430")
  '(bright-green . "#87bc5f")
  '(bright-cyan . "#04c5aa")
  '(bright-blue . "#11bbe7")
  '(bright-purple . "#85a5ff")
  '(bright-magenta . "#c78fe6")

  ;; L=100%
  '(white . "#ffffff"))

(provide-theme 'evenok-dark)

(provide 'evenok-dark-theme)

;;; evenok-theme.el ends here
