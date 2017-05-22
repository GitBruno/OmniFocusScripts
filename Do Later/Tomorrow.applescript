(*
	Tomorrow.scpt
	By Bruno Herfst
	
	This script changes the due date to tomorrow
	For all the crap you don't want to do today.
	
*)

tell application "OmniFocus"
	tell content of first document window of front document
		--Get selection
		set validSelectedItemsList to value of (selected trees where class of its value is not item and class of its value is not folder)
		set totalItems to count of validSelectedItemsList
		if totalItems is 0 then
			return
		end if
		
		set newDate to (current date) - (time of (current date)) + 86400
		
		repeat with selectedItem in validSelectedItemsList
			try
				set originalDueDateTime to due date of selectedItem
				if (originalDueDateTime is not missing value) then
					--Set new due date with original due time
					set originalDueStartDate to originalDueDateTime - (time of originalDueDateTime)
					set theDelta to (newDate - originalDueStartDate) / 86400
					set newDueDateTime to (originalDueDateTime + (theDelta * days))
					set due date of selectedItem to newDueDateTime
					set originalStartDateTime to defer date of selectedItem
					if (originalStartDateTime is not missing value) then
						set newStartDateTime to (originalStartDateTime + (theDelta * days))
						set defer date of selectedItem to newStartDateTime
					end if
				else
					set due date of selectedItem to (newDate)
				end if
			end try
		end repeat
		
	end tell
end tell

