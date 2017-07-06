private
oneFrameDisplayImage: aImage
	self isAbort
		ifTrue: [ ^ true ].
	self displayImage: aImage.
	self isAbort
		ifTrue: [ ^ true ].
	^ false