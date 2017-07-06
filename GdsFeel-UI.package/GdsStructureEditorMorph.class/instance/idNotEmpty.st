testing
idNotEmpty
	self structure ifNil: [^ false].
	self structure idSelection ifNil: [^ false] .	
	^self structure idSelection notEmpty.