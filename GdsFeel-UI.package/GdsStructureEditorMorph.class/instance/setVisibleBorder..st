initialization
setVisibleBorder:  aStringMorph
	aStringMorph color: self visibleLocationColor.
	(GdsFeelMorphic borderedSensorDisplay)
		ifTrue: [	
			aStringMorph 
				borderColor: (
					aStringMorph color = Color black 
						ifTrue: [Color white] ifFalse:[Color black])].
	