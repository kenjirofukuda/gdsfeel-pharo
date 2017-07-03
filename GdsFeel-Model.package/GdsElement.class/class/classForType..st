accessing
classForType: aStringOrSymbol
	| key |
	key := aStringOrSymbol asLowercase asSymbol.
	TypeToClassMap ifNil: [self setupClassMap].
	^TypeToClassMap at: key ifAbsent:[].