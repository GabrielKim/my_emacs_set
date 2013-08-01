;; Freenode Network
;; NickServ: /msg NickServ identify PASSWD
;; ChanServ: /msg ChanServ help

;; Freenode는 사용하지 않기 때문에 임시로 일단 주석처리.

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
;; NickServ: /msg 오징오징어 identify PASSWD
;; ChanServ: /msg ㅇㅈㅇ help
(defun irc-connect-ozinger ()
  "connect to Ozinger IRC server"
  (interactive)
  (erc :server "irc.ozinger.org"
       :port 6667
       :nick "invi"
       :full-name "Gabriel Kim"))
