sampling
cursorForms 
	^(Cursor class allMethodsInCategory: #constants ) collect: [:sel |Cursor perform: sel]