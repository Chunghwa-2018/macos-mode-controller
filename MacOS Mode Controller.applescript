-- MacOS Mode controller
-- https://github.com/Chunghwa-2018/macos-mode-controller
-- auth: zhaohongliang
-- version: 0.1v
-- alfred version: 4.6.7 [1305]
-- macos version: catalina 10.15.7


set query 	to "{query}"

set ON_	to "on"
set OFF	to "off"


tell application "System Events"
	if query is equal to ON_ then
		tell appearance preferences
			set dark mode to true
		end tell
	else if query is equal to OFF then
		tell appearance preferences
			set dark mode to false
		end tell
	else
		tell appearance preferences
			set dark mode to not dark mode
		end tell
	end if
end tell
