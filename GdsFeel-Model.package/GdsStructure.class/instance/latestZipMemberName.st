private
latestZipMemberName
	| dirPath |
	dirPath := self relativeDirectoryName , '/'.
	^self latestObject: self zipMemberNames getBasenameBlock: [ :zipMemberPath | 
		zipMemberPath allButFirst: dirPath size].