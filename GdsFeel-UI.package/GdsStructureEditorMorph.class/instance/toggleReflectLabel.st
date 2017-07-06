label
toggleReflectLabel
	^self 
		makeLabel: 'REFL' 
		withValue: (self structure currentItem isReflected ifTrue: ['Y'] ifFalse: ['N']).