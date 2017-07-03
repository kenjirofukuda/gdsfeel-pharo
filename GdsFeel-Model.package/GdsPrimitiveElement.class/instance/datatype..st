accessing
datatype: aInteger
	self assert: [aInteger isInteger].
	datatype := aInteger.
	self changed: #datatype.