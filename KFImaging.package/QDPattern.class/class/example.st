example
example
	"QDPattern example"
	| isMorphic |
	isMorphic := true.
	(Smalltalk respondsTo: #isMorphic) 
		ifTrue: [isMorphic := Smalltalk perform: #isMorphic].
	isMorphic
		ifTrue: [self examplePatternTableMorph openInWorld]
		ifFalse: [self examplePatternTableForm display]