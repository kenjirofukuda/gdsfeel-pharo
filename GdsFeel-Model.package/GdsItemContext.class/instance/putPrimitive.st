command
putPrimitive
	| newElement savedKeyNumber |
	savedKeyNumber := self keyNumber.
	newElement := self createElement.
	savedKeyNumber negative
		ifFalse: [ newElement keyNumber: savedKeyNumber ].
	editElement
		ifNotNil: [ self structure removeElement: editElement.
			editElement isNil ].
	self structure addElement: newElement.
	newElement statusNumber: GdsElement inDatabaseStausNumber.
	self putEpilogue: newElement