testing-enabled
itemReverseEnabled
	self structure ifNil: [ ^ false ].
	^ self structure currentItem itemReverseEnabled