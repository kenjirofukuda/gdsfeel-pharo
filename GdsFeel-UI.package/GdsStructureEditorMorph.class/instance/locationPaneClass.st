initialization
locationPaneClass
	GdsFeelMorphic borderedSensorDisplay
		ifTrue: [^ Smalltalk at: #BorderedStringMorph ifAbsent: [StringMorph]].
	^StringMorph
