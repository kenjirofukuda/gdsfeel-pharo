as yet unclassified
pointFor: aString value: aPoint 
	pointMap ifNil: [ pointMap := Dictionary new ].
	pointMap 
		at: aString
		put: aPoint