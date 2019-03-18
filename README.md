# AppleScript-SequelPro

SequelProの入力をAppleScriptで自動入力するスクリプト

# Requirement

・MacOS

# Install

```bash
```

# Sequel Proの設定

以下画像のようにSequel Proの『お気に入り』の一番上にSSHの鍵設定等をしておく。

# Usage
*** 初回実行時は許可してくださいのダイアログが出るので許可する。システム環境設定 > セキュリティとプライバシー > アクセシビリティでiTermをチェック ***
```
# Contribution

要素のtext field一覧

```
set focused of text field 1 to true --名前
set focused of text field 2 to true --SSHポート
set focused of text field 3 to true --SSHパスワード
set focused of text field 4 to true --SSHユーザ
set focused of text field 5 to true --SSHホスト
set focused of text field 6 to true --ポート
set focused of text field 7 to true --データベース
set focused of text field 8 to true -- パスワード
set focused of text field 9 to true -- ユーザ名
set focused of text field 10 to true -- MySQLホスト
```

