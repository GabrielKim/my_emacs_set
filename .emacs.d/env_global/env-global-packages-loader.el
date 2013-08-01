(defun edotset-packages-load ()
  ;; Package���� �о�� load �Ѵ�.
  ;; �䱸���� :
  ;;
  ;; 1. load�� ������ Data�� version�� �ٸ��ٸ�, package�� update�� �� �� �ֵ��� �Ѵ�.
  ;; (�� �䱸������ �켱 emacswiki�� �ִ� �͵� ���ԵǴµ�, ��ǻ� �̰� Auto�� ������� �������� ũ���ؾ��Ѵ�. ���⼭ Version�� �ֽ����� �ƴ����� �����ϱ� ���ؼ��� Ư���� �ܾ��� find�� �ؾ��ϴµ� �̰��� ��� �� �ٸ��� ������ �ſ� ��ƴٰ� �� �� �ִ�.
  ;; ���� �̰��� �ٺ������� �Ϸ��� (D)VCS�� �ʿ��ѵ� git, svn, hg���� �̿��ϴ°��� ���� �� ����. �� package���� ���� üũ�� ���� version�� �ֽ��̸� ���Ǹ� ���ϰ� update�� �ؾ��Ѵ�.
  ;; �׷��� ���⼭ �� �ɸ��� ���� packages data�� ��� �����ϳİ� �߿��ϴ�. �̰��� �ܼ��ϰ� �����Ѵٸ� package name - version - package URL �� �� ���̴�.
  ;; �ƹ�ư, �ſ� ¥������ ����� �۾��� �� ����... �Ѥ�;)
  ;;
  ;; 2. 
  (edotset-packages-read)

)

;; Note that :
;; Package�� �д� �Լ��̴�.
;; ** �ٽ� �ڵ��Ѵ� �Ѥ�;
(defun edotset-packages-read ()
  "Read to installed packages data into edotset"
  (let ((in (open "~/edotset_package.dat" :if-does-not-exist nil)))
    (when in
      (format t "" (read-line in))
      (close in))))

;; Note that :
;; packages list�� update �� �� �ֵ��� ������ ���� �޴´�.
;; �����ϸ� �ǽð����� ������ ���� �޾� �ϴ°��� �ʿ��� ���� ������, �� �κ��� ������� ���Ǹ� ���ϰ� �ؾ� �ϴ� ������ �� ����. 
(defun edotset-update-packages-list ()
  "edotset packages list update instructions"
  (interactive)
)
