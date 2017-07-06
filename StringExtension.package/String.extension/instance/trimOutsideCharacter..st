*stringExtension
trimOutsideCharacter: aChar
	
	| first result |
	self isEmpty ifTrue: [^self].
	first := self findFirst: [:c | c ~= aChar].
	first = 0 ifTrue: [^ ''].  "no non-separator character"
	result :=  self
		copyFrom: first
		to: (self findLast: [:c | c ~= aChar]).
	result isOctetString ifTrue: [^ result asOctetString] ifFalse: [^ result].
