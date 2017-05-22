(*
	This script generates an OmniOutliner outline from the all of the folders and projects in OmniFocus.
	
	version 0.1.1, by Curt Clifton
	
	Copyright © 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		• Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		• Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

tell application "OmniFocus" to activate

tell front document of application "OmniFocus"
	set alertReply to display alert "Ready to generate outline" message "This process could take several minutes, during which OmniFocus and OmniOutliner will be unavailable for other tasks." as warning buttons {"OK", "Cancel"} default button "Cancel"
	if (button returned of alertReply is "Cancel") then return
	set topLevelProjectsAndFolders to every section
end tell

tell application "OmniOutliner Professional.app"
	activate
	make new document at before documents
end tell

createRows(topLevelProjectsAndFolders)

tell application "OmniOutliner Professional.app"
	display alert "Outline generated" message "The generated outline should include all of your folders, projects, and actions from OmniFocus."
end tell
return

-- theItems is a list of top-level projects and folders
on createRows(theItems)
	if (theItems is {}) then return
	createRow(item 1 of theItems)
	createRows(rest of theItems)
end createRows

-- anItem is a project or folder
on createRow(anItem)
	set rowData to getRowData from anItem
	tell front document of application "OmniOutliner Professional.app"
		set aRow to make new «class OOrw» at end of every «class OOsu» with properties {«class OOtp»:(rowTopic of rowData), «class OOnt»:(rowNote of rowData)}
	end tell
	createChildren(anItem, aRow)
end createRow

on getRowData from anItem
	using terms from application "OmniFocus"
		set theTopic to name of anItem
		set theNote to (note of anItem)
	end using terms from
	return {rowTopic:theTopic, rowNote:theNote}
end getRowData

-- anItem is an OF folder, project, or action
-- aRow is an OmniOutliner row
on createChildren(anItem, aRow)
	using terms from application "OmniFocus"
		try
			-- First see if anItem is a folder
			set itemChildren to every section of anItem
		on error
			-- Error says anItem isn't a folder, so see if it is a project
			try
				set anItem to root task of anItem
			on error
				-- Error says anItem isn't a project, so it must be a task
			end try
			set itemChildren to every task of anItem
		end try
	end using terms from
	createChildrenHelper(itemChildren, aRow)
end createChildren

-- itemChildren is a list of OF folders, projects, and actions
-- aRow is an OmniOutliner row
on createChildrenHelper(itemChildren, aRow)
	if (itemChildren is {}) then return
	set childItem to item 1 of itemChildren
	set childData to getRowData from childItem
	tell front document of application "OmniOutliner Professional.app"
		set childRow to make new «class OOrw» with properties {«class OOtp»:(rowTopic of childData), «class OOnt»:(rowNote of childData)} at after last «class OOsu» of aRow
	end tell
	createChildren(childItem, childRow)
	createChildrenHelper(rest of itemChildren, aRow)
end createChildrenHelper