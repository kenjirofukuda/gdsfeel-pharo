accessing
file: aPathOrFileReference
	file ifNotNil: [ ^self error: 'file set at once.' ].
	file := aPathOrFileReference asFileReference.
	