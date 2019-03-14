on run {input, parameters}

	tell application "Finder"
		set this_folder to (folder of the front Finder window) as alias
	end tell

	tell application "Terminal"
		activate
		do script "cd \"" & (POSIX path of (this_folder as string)) & "\""
	end tell

	return input
end run
