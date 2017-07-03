accessing
dbName: aString
	^((aString endsWith: self extension)
		ifTrue: [aString]
		ifFalse: [aString, self extension]) asUppercase