objects from disk
attributesFrom: aDictionary
	self setSelectable: (aDictionary at: 'selectable' ifAbsent: ['true']) = 'true'.  
	self setVisible: (aDictionary at: 'visible' ifAbsent: ['true']) = 'true'.  