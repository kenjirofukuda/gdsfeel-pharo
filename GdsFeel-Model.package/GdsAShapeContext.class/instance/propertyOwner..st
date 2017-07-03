accessing
propertyOwner: anObject
	propertyOwner := anObject.
	GdsFeel dependentEnabled
		ifTrue: [
			self addDependent: anObject].