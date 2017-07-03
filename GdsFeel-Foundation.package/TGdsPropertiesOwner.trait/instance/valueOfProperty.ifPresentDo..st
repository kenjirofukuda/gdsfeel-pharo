t-propertiesOwner properties managing
valueOfProperty: aSymbol ifPresentDo: aBlock 
	"If the receiver has a property of the given name, evaluate  
	aBlock on behalf of the value of that property"
	self count: #valueOfProperty:ifPresentDo: property: aSymbol.
	^ aBlock value: (self valueOfProperty: aSymbol ifAbsent: [^ self])