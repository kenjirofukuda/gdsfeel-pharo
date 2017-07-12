accessing
toolClass
	^ toolClass := toolClass ifNil: [ HgSelectTool ]