accessing
idEnabledElementsInverted: aBoolean 
	| targetElements |
	targetElements := morph visibleElements.
	^aBoolean 
		ifTrue: [ targetElements select: [ :each | each state = #inId ] ]
		ifFalse: 
			[ targetElements reject: [ :each | #(inId inItem) includes: each state ] ]