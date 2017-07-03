accessing
sampleStructure
	self sampleLibrary
		ifNotNil: [ :lib | 
			lib structures
				ifNotEmpty: [ :structures | 
					(structures detect: [ :s | s name sameAs: 'BANDGAP' ] ifNone: [ nil ])
						ifNotNil: [ :s | ^ s ].
					^ structures first ] ].
	^ nil