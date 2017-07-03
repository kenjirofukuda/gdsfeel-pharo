convert
asAbbreviateArray
	^ Array streamContents: [ :s |
		self isZeroOffset 
			ifTrue: [
				s nextPut: scaleX.
				self isSameScale 
					ifFalse: [s nextPut: scaleY]]
			ifFalse: [
				s nextPutAll: self asArray]].
