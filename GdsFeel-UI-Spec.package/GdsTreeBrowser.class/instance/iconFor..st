widget API
iconFor: anItem
	| icon |
	icon := (Smalltalk ui icons iconNamed: (self iconKeyFor: anItem)) copy.
	(anItem isKindOf: GdsStructure)
		ifTrue: [ 
			(anItem valueOfProperty: #visible ifAbsent: [ true ])
				ifFalse: [ icon := (icon asFormOfDepth: 32) dimmed: 0.5 ] ].
	^ icon