command
get: aGdsElement
	self colVertices ifNotEmpty: [^self error: 'item not empty'].
	self importAttribute: aGdsElement.
	aGdsElement statusNumber: itemNumber.
	editElement := aGdsElement.
	self changed.
	self changedPutGetDependent.