objects from disk
attributesOn: aDictionary
	super attributesOn: aDictionary.
	aDictionary at: 'sname' put: self structureName asString.
	(self angle closeTo: 0.0)
		ifFalse: [
			aDictionary at: 'angle' put: self angle].	
	(self mag closeTo: 1.0)
		ifFalse: [
			aDictionary at: 'mag' put: self mag].
	self isReflected 
		ifTrue: [	
			aDictionary at: 'reflected' put: self isReflected].					