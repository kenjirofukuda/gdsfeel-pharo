private
missingField: aSymbol ofElement: aGdsElement
	| elementTypeString |
	elementTypeString := aGdsElement.
	(elementTypeString isKindOf: GdsElement)
		ifTrue: [elementTypeString := elementTypeString typeString].
	^'Missing {1} Field in {1} element. Abort!' format: {aSymbol asString . elementTypeString}

											