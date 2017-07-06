drawing
colorForElement: aGdsElement
	| fixPureWhite |
	fixPureWhite := [ :color | 
	color = Color white
		ifTrue: [ self visiblePenColor ]
		ifFalse: [ color ] ].
	aGdsElement state = #inStructure
		ifTrue: [ aGdsElement ownColor
				ifNotNil: [ :ownColor | ^ fixPureWhite value: ownColor ].
			aGdsElement hasLayer
				ifTrue: [ ^ self colorForLayer: aGdsElement layerNumber ] ].
	^ self visiblePenColor