*gdsfeel-foundation
printOwnHierarchy
	"Answer a description containing the names and instance variable names 
	of all of the subclasses and superclasses of the receiver."

	| aStream index |
	index := 0.
	aStream := (String new: 16) writeStream.
	self printSubclassesOn: aStream level: index printInstanceVariableNames: false.
	^aStream contents