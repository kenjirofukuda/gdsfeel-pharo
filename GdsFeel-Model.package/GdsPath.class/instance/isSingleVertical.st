testing
isSingleVertical
	^ self isSingle and: [ self vertices first x = self vertices second x ]