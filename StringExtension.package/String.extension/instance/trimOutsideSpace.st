*stringExtension
trimOutsideSpace
	"fix to: Pharo withBlanksTrimmed deprecated"	
	(self respondsTo: #trimBoth)
		ifTrue: [^self perform: #trimBoth].	
	^self withBlanksTrimmed.