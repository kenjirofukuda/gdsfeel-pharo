switch flow
switchBOUNDARY: record
	| handled |
	#BOUNDARY = record type
		ifTrue: [
			^self upCount: #BOUNDARY].
	handled := self switchElementBegin: record.
	handled ifTrue: [^self].		
	handled := self switchPrimitiveBegin: record.
	handled ifTrue: [^self].
	handled := self switchElementEnd: record.
	handled ifTrue: [^self].
