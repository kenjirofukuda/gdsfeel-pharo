printing
latestContents
	self isOpen
		ifTrue: [ ^self latestFile readStream contents ]
		ifFalse: [ library zipArchiveDo: [ :zip | | s |
				s := (zip memberNamed: self latestZipMemberName) contentStreamFromEncoding: 'UTF-8'.
				s text.
				^s contents]]