switch flow
switchSREF: record
	| handled |
	#SREF = record type
		ifTrue: [
			^self upCount: #SREF].
	handled := self switchElementBegin: record.
	handled ifTrue: [^self].		
	handled := self switchSNAME: record.
	handled ifTrue: [^self].		
	handled := self switchSTRANS: record.
	handled ifTrue: [^self].		
	handled := self switchElementEnd: record.
	handled ifTrue: [^self].		
