t-propertiesOwner properties managing
valueOfProperty: aSymbol
	"answer the value of the receiver's property named aSymbol"
	self count: #valueOfProperty: property: aSymbol.
	^ self valueOfProperty: aSymbol ifAbsent: [  ]