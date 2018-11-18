;;; org-gtd.el --- GTD
;;;

;;; Commentary:
;;;

;;; Code:
;;;


(require 'org)

(defcustom org-gtd-directory "~/.org"
  "ORG 파일들을 저장할 경로를 지정한다."
  :type  'string
  :group 'org-gtd)

(setq org-agenda-files
      (cons org-gtd-directory nil))

(setq org-default-notes-file
      (concat (foile-name-as-directory org-gtd-directory)
	      "inbox.org"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
	(sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)")))

(setq org-capture-templates
      '(("t" "Todo" entry (file "~/.org/inbox.org")
	 "* TODO %?\n%U\n")))

(setq org-refile-targets
      '((nil :maxlevel . 1)
	(org-agenda-files :maxlevel . 1)))

(setq org-confirm-babel-evaluate nil)

(provide 'org-gtd)

;;; org-gtd.el ends here
