(*
	This script clears every flag in the front OmniFocus database.
			
	version 0.1, by Curt Clifton
	
	version 0.1: Original release
*)

(*
	The following properties are used for script notification via Growl.
*)
property growlAppName : "Curt's Scripts"
property scriptStartNotification : "Script Began"
property scriptFinishNotification : "Script Completed"
property defaultNotifications : {scriptFinishNotification}
property allNotifications : defaultNotifications & {scriptStartNotification}
property iconLoaningApplication : "OmniFocus.app"

(*
	Main entry point.
*)
try
	set theResponse to display dialog "Really clear every flag in the OmniFocus database?" buttons {"Clear Flags", "Cancel"} default button "Cancel" cancel button "Cancel" with title "Clear Every Flag?" with icon caution
on error
	return
end try
tell application "OmniFocus"
	
	tell front document
		set flagged of (every flattened task whose flagged is true) to false
	end tell
	
end tell
my notify("Flags Cleared", "Flags cleared on all items in the database.", scriptFinishNotification)

(*
	Uses Growl to display a notification message.
	theTitle – a string giving the notification title
	theDescription – a string describing the notification event
	theNotificationKind – a string giving the notification kind (must be an element of allNotifications)
*)
on notify(theTitle, theDescription, theNotificationKind)
	tell application "GrowlHelperApp.app"
		«event register» given «class appl»:growlAppName, «class anot»:allNotifications, «class dnot»:defaultNotifications, «class iapp»:iconLoaningApplication
		«event notifygr» given «class name»:theNotificationKind, «class titl»:theTitle, «class appl»:growlAppName, «class desc»:theDescription
	end tell
end notify