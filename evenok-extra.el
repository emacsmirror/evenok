;;; evenok-extra.el -*- lexical-binding: t; -*-

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

;;; Code:

(defgroup evenok-extra nil
  :group 'evenok
  :prefix "evenok-extra-")

(defface evenok-extra-flymake-error-bitmap nil nil)
(defface evenok-extra-flymake-warning-bitmap nil nil)
(defface evenok-extra-flymake-note-bitmap nil nil)

(defcustom evenok-extra-gnus-summary-dummy-line-format
  "                                           ╤ "
  "String to which `evenok-extra-gnus-summary-dummy' face will be
applied.  The result will be put in place of `%uE' within
`gnus-summary-dummy-line-format'."
  :type 'string)

(defface evenok-extra-gnus-summary-dummy nil nil)

(defun gnus-user-format-function-E (header)
  (propertize
    (concat
      evenok-extra-gnus-summary-dummy-line-format
      (mail-header-subject header))
    'face 'evenok-extra-gnus-summary-dummy))

(defface evenok-extra-hl-todo-fixme nil nil)
(defface evenok-extra-hl-todo-info nil nil)
(defface evenok-extra-hl-todo-pndg nil nil)
(defface evenok-extra-hl-todo-prgs nil nil)
(defface evenok-extra-hl-todo-todo nil nil)
(defface evenok-extra-hl-todo-xxx nil nil)

(defface evenok-extra-org-info nil nil)
(defface evenok-extra-org-cncl nil nil)
(defface evenok-extra-org-pndg nil nil)
(defface evenok-extra-org-prgs nil nil)

(defun evenok-extra-theme (name palette)
  (evenok-with-palette palette

    (custom-theme-set-variables name
      `(erc-log-match-format
         (concat
           (propertize "%t"
             'face (list :foreground ,faded))
           " "
           (propertize "%c"
             'face (list :foreground ,bright-blue))
           " "
           (propertize "%n"
             'face (list :foreground ,bright-yellow))
           ": "
           (propertize "%m"
             'wrap-prefix (list 'space :width 4)
             'line-prefix (list 'space :width 4))))
      '(flymake-error-bitmap
         (list 'exclamation-mark 'evenok-extra-flymake-error-bitmap))
      '(flymake-warning-bitmap
         (list 'question-mark 'evenok-extra-flymake-warning-bitmap))
      '(flymake-note-bitmap
         (list 'question-mark 'evenok-extra-flymake-note-bitmap))
      '(hl-todo-keyword-faces
         (list
           ;; apply `upcase' on lower-cased strings to avoid
           ;; highlighting by `hl-todo-mode'.
           (cons (upcase "fixme") 'evenok-extra-hl-todo-fixme)
           (cons (upcase "info")  'evenok-extra-hl-todo-info)
           (cons (upcase "pndg")  'evenok-extra-hl-todo-pndg)
           (cons (upcase "prgs")  'evenok-extra-hl-todo-prgs)
           (cons (upcase "todo")  'evenok-extra-hl-todo-todo)
           (cons (upcase "xxx+")  'evenok-extra-hl-todo-xxx)))
      '(org-todo-keyword-faces
         (list
           ;; apply `upcase' on lower-cased strings to avoid
           ;; highlighting by `hl-todo-mode'.
           (cons (upcase "info") 'evenok-extra-org-info)
           (cons (upcase "cncl") 'evenok-extra-org-cncl)
           (cons (upcase "prgs") 'evenok-extra-org-prgs)
           (cons (upcase "pndg") 'evenok-extra-org-pndg))))

    (custom-theme-set-faces name
      `(evenok-extra-flymake-error-bitmap   ((t :foreground ,bright-red)))
      `(evenok-extra-flymake-warning-bitmap ((t :foreground ,bright-orange)))
      `(evenok-extra-flymake-note-bitmap    ((t :foreground ,bright-blue)))
      `(evenok-extra-gnus-summary-dummy     ((t :foreground ,faded)))
      `(evenok-extra-hl-todo-fixme          ((t :foreground ,bright-red)))
      `(evenok-extra-hl-todo-info           ((t :foreground ,bright-green)))
      `(evenok-extra-hl-todo-pndg           ((t :foreground ,bright-orange)))
      `(evenok-extra-hl-todo-prgs           ((t :foreground ,bright-purple)))
      `(evenok-extra-hl-todo-todo           ((t :foreground ,bright-red)))
      `(evenok-extra-hl-todo-xxx            ((t :foreground ,bright-red)))
      `(evenok-extra-org-info               ((t :foreground ,bright-green)))
      `(evenok-extra-org-cncl               ((t :foreground ,bright-green)))
      `(evenok-extra-org-pndg               ((t :foreground ,bright-orange)))
      `(evenok-extra-org-prgs               ((t :foreground ,bright-purple))))))

(provide 'evenok-extra)

;;; evenok-extra.el ends here
