;;; federalist.el --- utilities for editing federali.st

;; Copyright (C) 2007  Theresa O'Connor

;; Author: Theresa O'Connor <hober0@gmail.com>
;; Keywords: convenience

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; 

;;; Code:

(defun federalist-next ()
  (interactive)
  (let ((buffer-name (buffer-name)))
    (if (string-match "\\([0-9]+\\)[.]html$" buffer-name)
        (switch-to-buffer
         (format "%d.html"
                 (1+ (string-to-number (match-string 1 buffer-name)))))
      (next-line))))

(global-set-key (kbd "S-<down>") 'federalist-next)

(defun federalist-prev ()
  (interactive)
  (let ((buffer-name (buffer-name)))
    (if (string-match "\\([0-9]+\\)[.]html$" buffer-name)
        (switch-to-buffer
         (format "%d.html"
                 (1- (string-to-number (match-string 1 buffer-name)))))
      (previous-line))))

(global-set-key (kbd "S-<up>") 'federalist-prev)

(provide 'federalist)
;;; federalist.el ends here
