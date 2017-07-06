switch flow
switchPATH: record
	| handled |
	#PATH = record type
		ifTrue: [
			^self upCount: #PATH].
	handled := self switchElementBegin: record.
	handled ifTrue: [^self].		
	handled := self switchPrimitiveBegin: record.
	handled ifTrue: [^self].		
	handled := self switchWireContext: record.
	handled ifTrue: [^self].		
	handled := self switchElementEnd: record.
	handled ifTrue: [^self].
