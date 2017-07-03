instance creation
fromFile: aPathOrFileReference
	(GdsLibrary allInstances reverse
		detect: [ :lib | 
			([ lib file asAbsolute ]
				on: Error
				do: [ :ex | ex return: nil ]) = aPathOrFileReference asAbsolute ]
		ifNone: [  ]) ifNotNil: [ :lib | ^ lib ].
	^ self basicNew initialize file: aPathOrFileReference