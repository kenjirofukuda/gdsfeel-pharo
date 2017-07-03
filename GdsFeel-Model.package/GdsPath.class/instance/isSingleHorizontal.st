testing
isSingleHorizontal
	^ self isSingle and: [ self vertices first y = self vertices second y ]