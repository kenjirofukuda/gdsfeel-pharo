element reader
readSREF: aGdsStructure
	| loopContext  element record  clazz |
	clazz := GdsElement classForType: #sref.
	clazz ifNil: [^{false . nil }].
	element := clazz basicNew initialize.

	loopContext := GdsStreamLoopContext new.
	loopContext setInform: self.
	loopContext structure: aGdsStructure.
	loopContext element: element.
	loopContext setupSREFkeys.
	loopContext result: {false . nil }.

	[loopContext break ifFalse: [record := reader nextRecord].
	loopContext break or: [record isNil]]
		whileFalse: [
			loopContext switchSREF: record].
	^loopContext result.