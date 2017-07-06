as yet unclassified
handleDataGroup: aDxfDataGroup
	(beginBlock value: aDxfDataGroup)
		ifTrue: [ 
			self createActiveContainer.
			containsBegin 
				ifTrue: [ self pushToActive: aDxfDataGroup ].
			 ^ self ].
	(endBlock value: aDxfDataGroup)
		ifTrue: [ 
			containsEnd 
				ifTrue: [ self pushToActive: aDxfDataGroup ].
			 ^ self ].			
	self pushToActive: aDxfDataGroup