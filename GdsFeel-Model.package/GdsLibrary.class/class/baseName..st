accessing
baseName: aString
	^((aString endsWith: self extension)
		ifTrue: [aString  allButLast: self extension size]
		ifFalse: [aString]) asUppercase