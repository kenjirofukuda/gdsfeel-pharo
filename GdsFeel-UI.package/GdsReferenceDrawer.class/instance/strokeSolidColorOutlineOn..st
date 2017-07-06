drawing
strokeSolidColorOutlineOn: aCanvas
	| color |
	self refStructure ifNil: [^self].
	color := nil.
	element
		ifNotNil: [color := morph colorForElement: element].
	self pushedPort: [
		 self shallowStrokeOutlineOn: aCanvas color: color]. 