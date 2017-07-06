switch flow
switchTEXT: record
	| handled |
	#TEXT = record type
		ifTrue: [
			^self upCount: #TEX].
	handled := self switchPrimitiveBegin: record.
	handled ifTrue: [^self].
	#PRESENTATION = record type
		ifTrue: ["FIXME"].		
	handled := self switchWireContext: record.
	handled ifTrue: [^self].		
	handled := self switchSTRANS: record.
	handled ifTrue: [^self].		
	handled := self switchXY: record.
	handled ifTrue: [^self].		
	#STRING = record type
		ifTrue: ["FIXME"].		
	handled := self switchElementEnd: record usingXY: false.
	handled ifTrue: [^self].
