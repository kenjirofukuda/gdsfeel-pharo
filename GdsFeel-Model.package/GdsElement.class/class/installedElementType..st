testing
installedElementType: aSymbol
	"self arefInstalled"
	TypeToClassMap ifNil: [self setupClassMap].
	^TypeToClassMap includesKey: aSymbol asLowercase asSymbol.