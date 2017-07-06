initialization
model: aGdsStructure
	| oldModel |
	self structureWillChange.
	oldModel := super model.
	super model: aGdsStructure.
	aGdsStructure
		ifNil: [ oldModel
				ifNotNil: [ :om | 
					self crLog: 'unsubscribe'.
					self unbindCurrentItemFor: om ].
			self structureDidUnbind ]
		ifNotNil: [ self bindCurrentItemFor: aGdsStructure.
			self structureDidBind ].
	self structureDidChanged.
	self changed