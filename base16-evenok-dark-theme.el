;;; base16-evenok-dark-theme.el --- A dark-theme with perceptively evenly distributed colors maximizing chroma -*- lexical-binding: t; -*-

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

;;; Commentary:

;; base16-evenok-dark-theme is a color theme for Emacs that aims to
;; perceptively evenly distribute its colors while primarily
;; maximizing their chroma (colorfulness) and secondly their
;; lightness.

;; Screenshots are available at:
;; - Emacs Lisp: <https://envs.sh/hJc.png>
;; - TypeScript: <https://envs.sh/hJj.png>

;; base16-evenok-dark-theme is built with base16. Thus, it only uses
;; 16 colors; 8 greyscale and 8 actual colors.

;; The greyscale is currently simply copied from base16-pop-theme. It
;; may be subject of changes.

;; The 8 colors have been picked using the OKLCH color space (using
;; the color picker website <https://oklch.com>), which makes sure
;; that they are perceived with equal lightness and that they are
;; evenly distributed in the perceived spectrum (with 45° inbetween).
;; The primary goal of the color selection has been the maximization
;; of chroma (i.e. colorfulness) (0.165) and secondly of lightness
;; (71.1%). The two gaps, that appear on the hue-axis with the
;; mentioned chroma and lightness values, have been avoided with an
;; appropriate offset, namely 10°.

;;; Code:

(require 'base16-theme)

(defvar base16-evenok-dark-theme-colors
  (list

    ;; greyscale. copied from base16-pop-theme-colors.
    :base00 "#000000"
    :base01 "#333333"
    :base02 "#444444"
    :base03 "#888888"
    :base04 "#bbbbbb"
    :base05 "#dddddd"
    :base06 "#ffffff"
    :base07 "#ffffff"

    ;; colors. based on oklch with l=71.1% and c=0.165. gap at blue
    ;; and cyan hues. offset 10° for red and 190° for cyan.
    :base08 "#f5708a"
    :base09 "#ee8122"
    :base0A "#b8a300"
    :base0B "#54bc5c"
    :base0C "#00bab3"
    :base0D "#00aff2"
    :base0E "#9095ff"
    :base0F "#d47ada"))

(deftheme base16-evenok-dark)

(base16-theme-define 'base16-evenok-dark
  base16-evenok-dark-theme-colors)

(provide-theme 'base16-evenok-dark)

(provide 'base16-evenok-dark-theme)

;;; base16-evenok-dark-theme.el ends here
