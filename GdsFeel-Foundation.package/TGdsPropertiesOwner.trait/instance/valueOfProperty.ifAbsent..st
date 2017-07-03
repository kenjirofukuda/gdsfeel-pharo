t-propertiesOwner properties managing
valueOfProperty: aSymbol ifAbsent: aBlock 
	"if the receiver possesses a property of the given name, answer  
	its value. If not then evaluate aBlock and answer the result of  
	this block evaluation"
	self count: #valueOfProperty:ifAbsent: property: aSymbol.
	^ self properties at: aSymbol ifAbsent: [^ aBlock value]