t-propertiesOwner properties managing
setProperty: aSymbol toValue: anObject 
	"change the receiver's property named aSymbol to anObject"
	self count: #setProperty: property: aSymbol.
	self properties at: aSymbol put: anObject