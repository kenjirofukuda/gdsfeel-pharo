as yet unclassified
isMultiValue: aValue
	^ (aValue isCollection) or: [ aValue isDictionary] 