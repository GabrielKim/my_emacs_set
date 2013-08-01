;; Freenode Network
;; NickServ: /msg NickServ identify PASSWD
;; ChanServ: /msg ChanServ help

;; Freenode�� ������� �ʱ� ������ �ӽ÷� �ϴ� �ּ�ó��.

;(defun irc-connect-freenode ()
;  "connect to freenode IRC server"
;  (interactive)
;  (erc-tls :server "irc.freenode.net"
;           :port 7000
;           :nick "MyNick"
;           :password "-_-"
;           :full-name "My Full Name"))

;; HanIRC Network
;; NickServ: /msg ^^ login NICK PASSWD
;; ChanServ: /msg ChanServ help
(defun irc-connect-hanirc ()
  "connect to HanIRC server"
  (interactive)
  (erc :server "apink.hanirc.org"
       :port 6667
       :nick "invi"
       :full-name "Gabriel Kim"))

;; Ozinger Network
;; NickServ: /msg ��¡��¡�� identify PASSWD
;; ChanServ: /msg ������ help
(defun irc-connect-ozinger ()
  "connect to Ozinger IRC server"
  (interactive)
  (erc :server "irc.ozinger.org"
       :port 6667
       :nick "invi"
       :full-name "Gabriel Kim"))
