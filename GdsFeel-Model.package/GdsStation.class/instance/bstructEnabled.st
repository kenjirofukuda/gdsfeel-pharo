command-handler
bstructEnabled
	self library ifNil: [^false].
	self structure ifNotNil: [^false].
	^true.
