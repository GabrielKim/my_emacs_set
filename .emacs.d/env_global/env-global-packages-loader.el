(defun edotset-packages-load ()
  ;; Package들을 읽어내어 load 한다.
  ;; 요구사항 :
  ;;
  ;; 1. load시 이전의 Data와 version이 다르다면, package의 update를 할 수 있도록 한다.
  ;; (이 요구사항은 우선 emacswiki에 있는 것도 포함되는데, 사실상 이걸 Auto로 만들려면 페이지를 크롤해야한다. 여기서 Version이 최신인지 아닌지를 구분하기 위해서는 특정한 단어의 find를 해야하는데 이것이 모두 다 다르기 때문에 매우 어렵다고 할 수 있다.
  ;; 또한 이것을 근본적으로 하려면 (D)VCS가 필요한데 git, svn, hg등을 이용하는것이 좋을 것 같다. 각 package들의 버젼 체크를 통해 version이 최신이면 동의를 구하고 update를 해야한다.
  ;; 그런데 여기서 또 걸리는 점은 packages data를 어떻게 구성하냐가 중요하다. 이것을 단순하게 구성한다면 package name - version - package URL 이 될 것이다.
  ;; 아무튼, 매우 짜증나고 어려운 작업이 될 수도... ㅡㅡ;)
  ;;
  ;; 2. 
  (edotset-packages-read)

)

;; Note that :
;; Package를 읽는 함수이다.
;; ** 다시 코딩한다 ㅡㅡ;
(defun edotset-packages-read ()
  "Read to installed packages data into edotset"
  (let ((in (open "~/edotset_package.dat" :if-does-not-exist nil)))
    (when in
      (format t "" (read-line in))
      (close in))))

;; Note that :
;; packages list를 update 할 수 있도록 파일을 내려 받는다.
;; 엥간하면 실시간으로 파일을 내려 받아 하는것이 필요할 수도 있지만, 이 부분은 사용자의 동의를 구하고 해야 하는 문제인 것 같다. 
(defun edotset-update-packages-list ()
  "edotset packages list update instructions"
  (interactive)
)
