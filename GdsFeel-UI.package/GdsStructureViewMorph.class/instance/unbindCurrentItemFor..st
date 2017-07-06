initialization
unbindCurrentItemFor: aGdsStructure
	aGdsStructure currentItem
		ifNotNil: [ :item | item announcer unsubscribe: self ]