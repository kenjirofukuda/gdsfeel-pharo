*gdsfeel-foundation
printSubclassesOn: aStream level: level printInstanceVariableNames: aBoolean
	"As part of the algorithm for printing a description of the receiver, print the
	subclass on the file stream, aStream, indenting level times."

	| subclassNames |
	aStream crtab: level.
	aStream nextPutAll: self name.
	aBoolean
		ifTrue: [
			aStream space; print: self instVarNames].
	self == Class
		ifTrue: 
			[aStream crtab: level + 1; nextPutAll: '[ ... all the Metaclasses ... ]'.
			^self].
	subclassNames := self subclasses asSortedCollection:[:c1 :c2| c1 name <= c2 name].
	"Print subclasses in alphabetical order"
	subclassNames do:
		[:subclass | 
		subclass 
			printSubclassesOn: aStream 
			level: level + 1 
			printInstanceVariableNames: aBoolean]