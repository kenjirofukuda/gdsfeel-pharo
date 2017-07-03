accessing
structureName: aString
	structureName := aString.
	self changed: #sname.
	self changed: #srefEnabled.
	self changed: #ceEnabled.
	self changed: #chooseStructureNameLabel. "BAD BUT..."
