accessing
timeModifiedForStorage
	self storageFile isFile
		ifTrue: [ ^ DateAndTime fromSeconds: self storageFile modificationTime ].
	^nil
	