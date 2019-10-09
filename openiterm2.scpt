tell application "Finder"
	-- set _dir to POSIX path of ((folder of (front window)) as alias)
	if exists Finder window 1 then
		set currentDir to target of Finder window 1 as Unicode text
		set posixPath to get POSIX path of currentDir
	end if
end tell


tell application "iTerm"
	activate
	set _current_session to current session of current window
	tell current window
		create tab with default profile
		
		tell current session of current tab
			write text "cd " & posixPath
		end tell
	end tell
end tell
