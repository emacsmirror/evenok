;;; evenok-light-theme.el -*- lexical-binding: t; -*-

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

(deftheme evenok-light)

(evenok-theme 'evenok-light
  '(black          . "#ffffff") ;; L=100%
  '(dark           . "#dedede") ;; L=90%
  '(dim            . "#bebebe") ;; L=80%
  '(grey           . "#9e9e9e") ;; L=70%
  '(grey-red       . "#c5917c")
  '(grey-orange    . "#b19c6c")
  '(grey-green     . "#6dad9e")
  '(grey-purple    . "#ad92be")
  '(grey-magenta   . "#c38d9f")
  '(faded          . "#808080") ;; L=60%
  '(faded-red      . "#a4735f")
  '(faded-orange   . "#927e4e")
  '(faded-green    . "#4e8e80")
  '(faded-purple   . "#8f749f")
  '(faded-magenta  . "#a36f80")
  '(bright         . "#424242") ;; L=38%
  '(bright-red     . "#613523")
  '(bright-orange  . "#52400d")
  '(bright-yellow  . "#344a21")
  '(bright-green   . "#014e42")
  '(bright-cyan    . "#014a5d") ;; oklch(38% 0.07 222.36)
  '(bright-blue    . "#324168")
  '(bright-purple  . "#4f375d")
  '(bright-magenta . "#603143")
  '(white          . "#000000")) ;; L=0%

(custom-theme-set-faces 'evenok-light
  '(default ((t :weight demibold))))

(provide-theme 'evenok-light)

(provide 'evenok-light-theme)

;;; evenok-theme.el ends here
