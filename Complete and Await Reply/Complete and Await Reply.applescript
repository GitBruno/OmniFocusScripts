(*
	This script marks the selected actions as complete and creates new actions in a "Waiting For" context to track replies.
	
	by Curt Clifton
	
	version 1.2: Added feature fo make new "waiting for" tasks have a defer date relative to today's date.
	version 1.1: Added feature to make new "waiting for" tasks have a due date relative to the original tasks date, rather than relative to today's date.
	version 1.0.2: Fixed to not lose links in note of item
	version 1.0.1: Fixed to work with Mac App Store version of OmniFocus 2 Pro
	version 1.0: Lots of improvements:
		• Updated for OmniFocus 2. 
		• Uses Notification Center instead of Growl. 
		• Handles a Waiting context that is a sub-context, instead of just top-level contexts. 
		• Added a property to allow adjusting due date of created task, but made the default be no due date.
		• Adds an paragraph to the new action’s note indicating when the “waiting for” task was created.
		• If the selected task is already a “waiting for” task, the new task won’t have the “Reply on:” prefix added twice, but it will get another paragraph indicating when the follow-up was sent.
	version 0.2: Removed Growl support
	version 0.1: Original release
*)

(*
	This string is matched against your contexts to find a context in which to place the new "waiting-for" action.  The matching is the same as in the context column in OmniFocus, so you don't need the entire contexxt name, just a unique fragment.
*)
property waitingForContext : "wait"

(*
	This string is used as a prefix on the original item title when creating the "waiting-for" action.
*)
property waitingPrefix : "Reply on: "

(*
	This string is used as a prefix for a paragraph added to the new item’s note that indicates when the original action was completed.
*)
property notePrefix : "Reminder sent on "

(*
	The number of days from base date that the newly created "waiting-for" action will be due. Set to a negative number to put no due date on the new action.
*)
property daysUntilDue : -1

(*
	If daysUntilDue is not negative, then this controls whether the date of the newly created "waiting-for" action is set relative to the original task's due date or relative to today's date.
*)
property useTaskDateAsBaseDate : true

(*
	The number of days from now until the newly created "waiting-for" action will be available. Set to a negative number to put no defer date on the new action. The defer time is based on the OmniFocus Date & Time preference.
*)
property deferForDays : -1

(* 
	This string is used in notifications if multiple items are processed. For single items, we use the actual item title. 
*)
property multipleItemsCompleted : "Multiple Items"

(*
	The following properties are used for script notifications.
*)
property scriptSuiteName : "Curt’s Scripts"

set itemTitle to missing value
tell application "OmniFocus"
	tell front document
		-- Gets target context
		try
			set theContextID to id of item 1 of (complete waitingForContext as context)
			set theWaitingForContext to first flattened context whose id is theContextID
		on error
			display alert "No context found whose name contains “" & waitingForContext & "”"
			return
		end try
		tell content of document window 1 -- (first document window whose index is 1)
			set theSelectedItems to value of every selected tree
			if ((count of theSelectedItems) < 1) then
				display alert "You must first select an item to complete." as warning
				return
			end if
			repeat with anItem in theSelectedItems
				set itemTitle to name of anItem
				set theDupe to duplicate anItem to after anItem
				set originalDueDate to due date of anItem
				set completed of anItem to true
				
				-- Configure the duplicate item
				set oldName to name of theDupe
				if (oldName does not start with waitingPrefix) then
					set name of theDupe to waitingPrefix & oldName
				end if
				set textToInsert to notePrefix & ((current date) as text) & return
				insert textToInsert at before first character of note of theDupe
				set context of theDupe to theWaitingForContext
				set repetition of theDupe to missing value
				
				-- Set due date
				if (daysUntilDue < 0) then
					set due date of theDupe to missing value
				else
					if (not useTaskDateAsBaseDate) or originalDueDate is missing value then
						set baseDate to current date
					else
						set baseDate to originalDueDate
					end if
					set due date of theDupe to (baseDate) + daysUntilDue * days
				end if
				
				-- Set defer date
				if (deferForDays < 0) then
					set defer date of theDupe to missing value
				else
					-- TODO: should query user's default defer time, but that's broken in the shipping version of OF2
					set deferUntilDate to current date
					set time of deferUntilDate to 0
					set deferUntilDate to (deferUntilDate) + deferForDays * days
					set defer date of theDupe to deferUntilDate
				end if
			end repeat
			if (count of theSelectedItems) > 1 then
				set itemTitle to multipleItemsCompleted
			end if
		end tell
	end tell
end tell

if itemTitle is not missing value then
	my notify("Completed and Awaiting Reply", itemTitle)
end if

(*
	Uses Notification Center to display a notification message.
	theTitle – a string giving the notification title
	theDescription – a string describing the notification event
*)
on notify(theTitle, theDescription)
	display notification theDescription with title scriptSuiteName subtitle theTitle
end notify

