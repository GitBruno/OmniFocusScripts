(*
	This script generates an OmniOutliner outline from the selected items in OmniFocus.
	
	version 0.1.1, by Curt Clifton
	
	Copyright © 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		• Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		• Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

tell front document of application "OmniFocus"
	tell document window 1
		set theItems to value of selected trees of content
	end tell
	if ((count of theItems) is 0) then
		display alert "Select an item to turn into an OmniOutliner outline."
		return
	end if
	-- FIXME: OF doesn't yet support this:
	-- set theItems to expel descendants theItems
end tell

tell application "OmniOutliner Professional.app"
	make new document at before documents --with properties {name:"Items from OmniFocus"}
end tell

createRows(theItems)
return

on createRows(theItems)
	if (theItems is {}) then return
	createRow(item 1 of theItems)
	createRows(rest of theItems)
end createRows

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

on createChildren(anItem, aRow)
	using terms from application "OmniFocus"
		set itemChildren to every task of anItem
	end using terms from
	createChildrenHelper(itemChildren, aRow)
end createChildren

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