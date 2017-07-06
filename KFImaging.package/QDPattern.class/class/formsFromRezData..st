class initialization
formsFromRezData: aRezString
	|forms bytes numPat rest |
	forms := OrderedCollection new.	
	bytes := self bytesFromRezData: aRezString.
	numPat := (bytes first bitShift: 8) bitOr: bytes second.
	rest := bytes allButFirst: 2.
	self assert: [rest size // numPat = 8].
	0 to: (numPat - 1)
		do: [:patIndex | 
			forms add: 
				(Form 
					extent: 8 @ 8
					fromArray: ((rest copyFrom: (patIndex * 8) + 1 to: (patIndex * 8) + 8)
				 		collect: [:byte | byte bitShift: 24])
						offset: 0 @ 0).].
	^forms asArray.