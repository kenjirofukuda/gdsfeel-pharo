t-propertiesOwner properties managing
removeProperty: aSymbol 
	"removes the property named aSymbol if it exists"
	self count: #removeProperty: property: aSymbol.
	self properties removeKey: aSymbol ifAbsent: [  ]