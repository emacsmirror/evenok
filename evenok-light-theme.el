;;; evenok-light-theme.el --- Light Theme with Perceptively Evenly Distributed Colors -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Free Software Foundation, Inc.

;; Author:                  Mekeor Melire <mekeor@posteo.de>
;; Homepage:                https://codeberg.org/mekeor/emacs-evenok
;; Maintainer:              Mekeor Melire <mekeor@posteo.de>
;; SPDX-License-Identifier: GPL-3.0-or-later

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

;;; Commentary:

;; This feature provides a light theme with perceptively evenly
;; distributed colors.

;;; Code:

(deftheme evenok-light
  :family 'evenok
  :kind 'color-scheme
  :background-mode 'light)

(require 'evenok)

(evenok-theme 'evenok-light evenok-palette-light)

(evenok-with-palette evenok-palette-light

  (custom-theme-set-faces 'evenok-light
    '(default ((t :weight demibold))))

  (custom-theme-set-variables 'evenok-light
    '(frame-background-mode 'light)
    `(pdf-view-midnight-colors (cons ,black ,white))))

(provide-theme 'evenok-light)

;;; evenok-light-theme.el ends here
