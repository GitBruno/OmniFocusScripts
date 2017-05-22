(*
	This script generates an OmniOutliner outline from the currently displayed view in OmniFocus.
	
	version 1.0, by Curt Clifton
	
*)

tell front document of application "OmniFocus"
	tell document window 1
		set topLevelTrees to every tree of content
	end tell
end tell

tell application "OmniOutliner.app"
	activate
	make new document at before documents
end tell

createRows(topLevelTrees)
return

-- theItems is a list of top-level trees
on createRows(theItems)
	if (theItems is {}) then return
	createRow(item 1 of theItems)
	createRows(rest of theItems)
end createRows

-- anItem is a tree
on createRow(anItem)
	set rowData to getRowData from anItem
	tell front document of application "OmniOutliner.app"
		set aRow to make new «class OOrw» at end of every «class OOsu» with properties {«class OOtp»:(rowTopic of rowData), «class OOnt»:(rowNote of rowData)}
	end tell
	createChildren(anItem, aRow)
end createRow

on getRowData from anItem
	using terms from application "OmniFocus"
		set theTopic to name of anItem
		try
			set itemValue to value of anItem
			set theNote to (note of itemValue)
			-- Not all tree nodes have notes, so punt on error
		on error
			set theNote to ""
		end try
	end using terms from
	return {rowTopic:theTopic, rowNote:theNote}
end getRowData

-- anItem is a tree
-- aRow is an OmniOutliner row
on createChildren(anItem, aRow)
	using terms from application "OmniFocus"
		set itemChildren to every tree of anItem
	end using terms from
	createChildrenHelper(itemChildren, aRow)
end createChildren

-- itemChildren is a list of trees
-- aRow is an OmniOutliner row
on createChildrenHelper(itemChildren, aRow)
	if (itemChildren is {}) then return
	set childItem to item 1 of itemChildren
	set childData to getRowData from childItem
	tell front document of application "OmniOutliner.app"
		set childRow to make new «class OOrw» with properties {«class OOtp»:(rowTopic of childData), «class OOnt»:(rowNote of childData)} at after last «class OOsu» of aRow
	end tell
	createChildren(childItem, childRow)
	createChildrenHelper(rest of itemChildren, aRow)
end createChildrenHelper