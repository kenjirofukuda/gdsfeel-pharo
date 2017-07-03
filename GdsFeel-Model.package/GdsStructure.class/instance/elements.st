accessing
elements
	elements 
		ifNil: [
			self library file isFile
				ifTrue: [
					self load ] ]. 			 
	^ elements
		ifNil: [ #() ]
		ifNotNil: [ elements ].