utility
chooseUnit
	| index |
	index := UIManager default chooseFrom: GdsLibrary unitStrings lines: #() title: 'Choose Unit:'.
	index = 0
		ifTrue: [ ^ nil ].
	^ GdsLibrary unitStrings at: index