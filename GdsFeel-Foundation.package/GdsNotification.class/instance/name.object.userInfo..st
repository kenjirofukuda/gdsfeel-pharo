as yet unclassified
name: aName object: anObject userInfo: aDictionary
	aDictionary
		ifNotNil: [self assert: (aDictionary isKindOf: Dictionary)].
	name := aName.
	object := anObject.
	userInfo := aDictionary.