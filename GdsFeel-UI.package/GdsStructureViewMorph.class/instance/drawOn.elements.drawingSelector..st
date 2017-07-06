drawing-world
drawOn: aLocalCanvas elements: elements drawingSelector: aDrawSel
	elements ifNil: [^self].
	elements ifEmpty: [^self].
	elements do: [:el | 	
		| drawer |
		drawer := GdsElementDrawer fromElement: el morph: self. 
		drawer perform: aDrawSel with: aLocalCanvas].
	