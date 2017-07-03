xml/json data exchange
attributesOn: aDictionary
	self isSelectable
		ifFalse: [
			aDictionary at: 'selectable' put: self isSelectable].
	self isVisible 
		ifFalse: [	
			aDictionary at: 'visible' put: self isVisible].