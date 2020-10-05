;; -----------------
;; Emacs設定ファイル
;; -----------------

;; 日本語設定
(setenv "LANG" "ja_JP.UTF-8")
(prefer-coding-system 'utf-8-unix)
;; symlinkは必ず追いかける
(setq vc-follow-symlinks t)
;; 括弧を自動で補完する
(electric-pair-mode 1)
;; tabにスペース４つを利用
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; scratchの初期メッセージ消去
(setq initial-scratch-message "")
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; 1行ごとの改ページ
(setq scroll-conservatively 1)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; メニューバーの非表示
(menu-bar-mode -1)
;; ツールバーの非表示
;; (tool-bar-mode -1)
;; バックアップファイルを作成させない
(setq make-backup-files nil)
;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)
;; カーソルの点滅をやめる
(blink-cursor-mode 0)


;; beep音を消す
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)

;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; 日付と時間をモードラインに表示
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
