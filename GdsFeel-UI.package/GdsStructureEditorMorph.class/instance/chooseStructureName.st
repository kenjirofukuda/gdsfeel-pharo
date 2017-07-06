command-handler
chooseStructureName
	| sname  |
	sname := self privateChooseStructureName.
	sname ifNil:[^self].	
	self structure currentItem structureName: sname.