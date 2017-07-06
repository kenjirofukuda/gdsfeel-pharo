testing
holdsElement.
	self structure ifNil: [^false].
	^self structure currentItem holdsElement.