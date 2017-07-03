private
privateUnget
	editElement ifNil: [self error: 'item is not holds element'].
	self colVertices ifEmpty: [ self error: 'empty vertices' ].
	self elementClass ifNil: [ self error: 'element type not set' ].
	self privateWipe.	
	editElement statusNumber: GdsElement inDatabaseStausNumber.
	editElement := nil.
