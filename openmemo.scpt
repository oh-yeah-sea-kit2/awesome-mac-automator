on run {input, parameters}

	tell application "Finder" to make new file at (the target of the front window) as alias

	return input
end run
