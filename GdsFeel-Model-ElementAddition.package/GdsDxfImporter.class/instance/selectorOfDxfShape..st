as yet unclassified
selectorOfDxfShape: aDxfShape
	^ ('attributesFrom', aDxfShape class asString, ':', 'element:') asSymbol.
