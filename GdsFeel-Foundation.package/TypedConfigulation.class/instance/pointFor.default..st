as yet unclassified
pointFor: aString default: aValue 
	pointMap ifNil: [ pointMap := Dictionary new ].
	^ pointMap 
		at: aString
		ifAbsentPut: [ aValue ]