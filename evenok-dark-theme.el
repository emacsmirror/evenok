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
;; perceptively evenly distribute its colors while maximizing their
;; chroma (colorfulness).

;; Screenshots are available at:
;; - Emacs Lisp: <https://envs.sh/hJc.png>
;; - TypeScript: <https://envs.sh/hJj.png>

;; base16-evenok-dark-theme is built with base16. Thus, it only uses
;; 16 colors; 8 greyscale and 8 actual colors.

;; TODO: fix colors restricting to rgb. currently experimenting with:
;; oklch(72% 0.13 175)

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

    ;; greyscale.
    :base00 "#000000"
    :base01 "#333333"
    :base02 "#444444"
    :base03 "#888888"
    :base04 "#bbbbbb"
    :base05 "#dddddd"
    :base06 "#ffffff"
    :base07 "#ffffff"

    ;; colors. based on oklch(73.6% 0.135 358+n*45°), i.e.
    ;; lightness  L=73.6%
    ;; chroma     C=0.135
    ;; hue offset H=358°
    ;; https://oklch.com/#73.6,0.135,358,100
    :base08 "#ed83a9"
    :base09 "#f08b61"
    :base0A "#cda430"
    :base0B "#87bc5f"
    :base0C "#04c5aa"
    :base0D "#11bbe7"
    :base0E "#85a5ff"
    :base0F "#c78fe6"))

(deftheme base16-evenok-dark)

(base16-theme-define 'base16-evenok-dark
  base16-evenok-dark-theme-colors)

(provide-theme 'base16-evenok-dark)

(provide 'base16-evenok-dark-theme)

;;; base16-evenok-dark-theme.el ends here
