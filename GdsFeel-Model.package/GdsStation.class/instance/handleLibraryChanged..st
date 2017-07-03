updating
handleLibraryChanged: aGdsPropertyChanged
	| trace |
	trace := false.
	aGdsPropertyChanged oldValue
		ifNotNil: [ :lib | 
			trace
				ifTrue: [ self
						traceCr: ('libraryDeactivate: <1p>' expandMacrosWith: lib libName) ].
			lib removeDependent: self.
			self isAutoCloseLibrary
				ifTrue: [ lib close ] ].
	aGdsPropertyChanged newValue
		ifNotNil: [ :lib | 
			trace
				ifTrue: [ self
						traceCr: ('libraryActivate: <1p>' expandMacrosWith: lib libName) ].
			lib addDependent: self.
			self structure: nil.
			lib open ].
	self fireLibraryChanged