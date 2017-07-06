as yet unclassified
gdsElementClassOf: aDxfShape
	|  className |
	className := aDxfShape class asString.
	(className sameAs: 'DxfLine')
		ifTrue:  [ ^ GdsPath ].
	(className sameAs: 'DxfCircle')
		ifTrue:  [ ^ GdsAcCircle ].
	(className sameAs: 'DxfArc')
		ifTrue:  [ ^ GdsAcArc ].
	(className sameAs: 'DxfPoint')
		ifTrue:  [ ^ GdsAcPoint ].
	(className sameAs: 'DxfPolyline')
		ifTrue:  [ ^ aDxfShape isClosed ifTrue: [ GdsBoundary ] ifFalse: [ GdsPath ] ].
	(className sameAs: 'DxfMtext')
		ifTrue:  [ ^ GdsBoxText ].
	(className sameAs: 'DxfText')
		ifTrue:  [ ^ GdsBoxText ].
	(className sameAs: 'DxfInsert')
		ifTrue:  [ 
			^ aDxfShape isMultiple 
				ifTrue: [ GdsArrayedStructureReference  ] 
				ifFalse: [ GdsStructureReference ] ].
	^ nil
	
