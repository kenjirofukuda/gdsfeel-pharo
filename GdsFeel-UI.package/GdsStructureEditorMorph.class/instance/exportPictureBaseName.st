documentation-support
exportPictureBaseName
	self structure ifNil: [^nil].
	^self structure name.