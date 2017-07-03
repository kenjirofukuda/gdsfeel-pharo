check
checkType: anObject kindOf: aPropertyClass
	(self nilAllowed and: [anObject isNil])
		ifTrue: [ ^ self ].
	
	(anObject isKindOf: aPropertyClass)
		ifFalse: [ 
			^self error: ('value only: ',  aPropertyClass asString, ' but: ', anObject printString) ].
