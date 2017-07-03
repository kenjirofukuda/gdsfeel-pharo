updating
handleStructureChanged: aGdsPropertyChanged
	| trace |
	trace := false.
	aGdsPropertyChanged oldValue
		ifNotNil: [ :s | 
			trace
				ifTrue:
					[ self traceCr: ('structureDeactivate: <1p>' expandMacrosWith: s name) ].
			s save.
			s removeDependent: self ].
	aGdsPropertyChanged newValue
		ifNotNil: [ :s | 
			trace
				ifTrue:
					[ self traceCr: ('structureActivate: <1p>' expandMacrosWith: s name) ].
			s addDependent: self ]
		ifNil: [ trace
				ifTrue: [ self traceCr: 'structureCleard: nil'.
					self
						traceCr: ('items dependents: <1p>' expandMacrosWith: items dependents) ] ].
	self fireStructureChanged