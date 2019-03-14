on openInSublime(theFiles)

	tell application "Sublime Text"

		open theFiles

		activate

	end tell

end openInSublime



on run

	tell application "Finder"

		if selection is {} then

			set theSelection to folder of the front window as string

		else

			set theSelection to selection as alias list

		end if

	end tell

	openInSublime(theSelection)

end run



on open (theFiles)

	openInSublime(theFiles)

end open
