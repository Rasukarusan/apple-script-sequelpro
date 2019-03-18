on run argv
	tell application "Sequel Pro"
		activate -- Sequel Proを起動
		delay 1 -- 遅延がないとフォーカス前に処理が始まってしまうため
		tell application "System Events"
			tell process "Sequel Pro"
				
				-- これ絶対必要。最前面にしないとtext fieldに入力する際、スクリプトエディタに入力されてしまう。
				-- Sequel Proを起動中だと何故か動作しないので、新規タブで開かせる。アプリを閉じている状態だと動作するのでフォーカスの問題の可能性。
				-- seleniumの時の感覚と似ている。
				set frontmost to true
				
				delay 1
				click menu item "新規接続タブ" of menu "ファイル" of menu bar item "ファイル" of menu bar 1 of application process "Sequel Pro" of application "System Events"
				
				-- 要素を辿っていく。上記のmenu item...のように1行でも可能だが、遅延問題のせいか動作しない場合がある。
				tell window "Sequel Pro"
					delay 0.5
					tell group 2
						-- 一番上のあらかじめSSHを設定したお気に入りを選択する
						tell splitter group 1
							tell scroll area 1
								tell outline 1
									every UI element
									delay 0.5
									--row 2は"お気に入り"の行なので実質一番上はrow 3となる（row 1はクイック接続）
									select row 3
								end tell
							end tell
							
							tell scroll area 2
								tell tab group 1
									delay 0.3
									set focused of text field 1 to true
									keystroke item 1 of argv
									key code 100
									
									-- MySQLホスト
									delay 0.3
									set focused of text field 9 to true
									keystroke item 1 of argv
									key code 100
									
									-- ユーザ名
									delay 0.3
									set focused of text field 8 to true
									keystroke item 2 of argv
									key code 100
									
									-- パスワード
									delay 0.3
									set focused of text field 7 to true
									keystroke item 3 of argv
									key code 100
									
									-- データベース
									delay 0.3
									set focused of text field 6 to true
									keystroke item 4 of argv
									key code 100

								end tell
								click button "接続"
							end tell
						end tell
					end tell
				end tell
			end tell
		end tell
	end tell
end run