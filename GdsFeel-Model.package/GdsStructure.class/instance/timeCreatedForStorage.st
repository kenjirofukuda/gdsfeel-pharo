accessing
timeCreatedForStorage
	self storageFile isFile
		ifTrue: [ ^ DateAndTime fromSeconds: self storageFile creationTime ].
	^nil
	