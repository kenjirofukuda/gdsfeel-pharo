as yet unclassified
qcadExamplesDirectory
	self applicationDirectories 
		do: [ :pathString | 
			| path |
			path := pathString asFileReference.
			path isDirectory
				ifTrue: [
					(path directoryNames select: [ :dirName | dirName asLowercase beginsWith: 'qcad' ])
						ifNotEmpty: [ :dirs | 
							path := path / dirs first / 'examples'.
							path isDirectory
								ifTrue: [ ^ path ] ] ] ].
	^ nil