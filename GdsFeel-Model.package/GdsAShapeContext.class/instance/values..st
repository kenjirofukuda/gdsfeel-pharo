accessing
values: anArray
	self assert: [anArray size = 4].
	self assert: [anArray allSatisfy: [:each | each isNumber]].
	self columnCount: 	anArray first.
	self rowCount: 	anArray second.
	self xStep: anArray third.
	self yStep: anArray fourth.
	