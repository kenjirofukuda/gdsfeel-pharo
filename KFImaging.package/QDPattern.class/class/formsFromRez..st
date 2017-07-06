class initialization
formsFromRez: aRezString
	| input line nibbleArray forms f|
	(aRezString trimOutsideSpace beginsWith: 'data')
		ifTrue: [
			^self formsFromRezData: aRezString].
	forms := OrderedCollection new.	
	input := ReadStream on: aRezString.
	[ input atEnd ] whileFalse: 
		[ line := (input upTo: Character cr) trimOutsideSpace.
		(line beginsWith: '$"') ifTrue: 
			[
			nibbleArray := QDPattern rezHexStringToNibbleArray: line.
			f := Form 
				extent: 8 @ 8
				fromArray: (self nibbleArrayTo32bitIntegerArray: nibbleArray)
				offset: 0 @ 0.
			forms add: f ] ].
	^forms asArray