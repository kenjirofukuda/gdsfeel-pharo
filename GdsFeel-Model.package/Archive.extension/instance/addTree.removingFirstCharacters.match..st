*GdsFeel-Model-Bugfix
addTree: aFileNameOrDirectory removingFirstCharacters: n match: aBlock
	| dir relativePath relativePathString matches |
	dir := aFileNameOrDirectory asFileReference.
	relativePathString := (dir fullName allButFirst: n) .
	relativePath := relativePathString asFileReference.
	matches := dir entries select: [ :entry | aBlock value: entry ].
	matches
		do: [ :e | | newMember registerName |
			newMember := e isDirectory
					ifTrue: [ self memberClass newFromDirectory: e fullName ]
					ifFalse: [ self memberClass newFromFile: e fullName ].
			registerName := relativePathString 
				ifEmpty: [  e name  ]
				ifNotEmpty: [ (relativePath / e name) fullName ].
			(e isFile and: [ registerName beginsWith: '/' ])
				ifTrue: [ registerName := registerName allButFirst].
		newMember localFileName: registerName.
		self addMember: newMember.
		e isDirectory ifTrue: [ self addTree: e fullName removingFirstCharacters: n match: aBlock ].
	].
