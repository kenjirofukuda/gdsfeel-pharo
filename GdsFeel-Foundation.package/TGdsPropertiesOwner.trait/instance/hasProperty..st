t-propertiesOwner properties managing
hasProperty: aSymbol 
	"Answer whether the receiver has the property named aSymbol"
	self count: #hasProperty: property: aSymbol.
	^ self properties includesKey: aSymbol