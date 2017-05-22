(*
	Tonight.scpt
	By Bruno Herfst
	
	This script changes the due time to 11pm
	For all the crap you want to do at night.
	
*)

property defaultStartTime : 23 --default time to use (in hours, 24-hr clock)

tell application "OmniFocus"
	tell content of first document window of front document
		--Get selection
		set validSelectedItemsList to value of (selected trees where class of its value is not item and class of its value is not folder)
		set totalItems to count of validSelectedItemsList
		if totalItems is 0 then
			return
		end if
		
		set todayStart to (current date) - (get time of (current date)) + (defaultStartTime * 3600)
		
		repeat with thisItem in validSelectedItemsList
			set due date of thisItem to my todayStart
		end repeat
		
	end tell
end tell

