adding
addDataGroupAll: aCollection
	aCollection do: [ :each | self addDataGroup: each ]