testing
closeEnabled
	self structure ifNil: [^true].
	^self structure closeEnabled