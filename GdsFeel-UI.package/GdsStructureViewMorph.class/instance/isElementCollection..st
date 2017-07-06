updating
isElementCollection: anObject
	^((anObject isKindOf: Collection) and: [anObject notEmpty and: [anObject first isKindOf: GdsElement]])
