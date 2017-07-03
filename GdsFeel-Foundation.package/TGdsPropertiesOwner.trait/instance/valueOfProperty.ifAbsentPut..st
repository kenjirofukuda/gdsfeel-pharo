t-propertiesOwner properties managing
valueOfProperty: aSymbol ifAbsentPut: aBlock 
	"If the receiver possesses a property of the given name, answer  
	its value. If not, then create a property of the given name, give 
	it the value obtained by evaluating aBlock, then answer that  
	value"
	self count: #valueOfProperty:ifAbsentPut: property: aSymbol.
	^ self properties at: aSymbol ifAbsentPut: aBlock