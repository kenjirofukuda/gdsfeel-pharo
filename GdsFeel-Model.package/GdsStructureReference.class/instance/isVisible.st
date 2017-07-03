testing
isVisible
	| defaultResult |
	defaultResult := super isVisible.
	defaultResult
		ifFalse: [ ^ false ].
	self refStructure ifNil: [ ^ false ].
	^ self refStructure valueOfProperty: #visible ifAbsent: [true].
		
	