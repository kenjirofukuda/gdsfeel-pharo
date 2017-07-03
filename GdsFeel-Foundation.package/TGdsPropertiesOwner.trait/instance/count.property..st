t-propertiesOwner properties counting
count: aSelector property: aSymbol 
	"self propertyCounter at: (aSelector->aSymbol) ifAbsentPut: [0].
	self propertyCounter at: (aSelector->aSymbol) put: (self propertyCounter at: (aSelector->aSymbol) ) + 1."
