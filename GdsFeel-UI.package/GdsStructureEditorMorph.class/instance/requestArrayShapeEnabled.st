testing-enabled
requestArrayShapeEnabled
	self structure ifNil: [^false].
	self structure currentItem ashapeInstalled ifFalse: [^false].
	^self structure currentItem elementType = #aref
