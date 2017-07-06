switch flow
switchAREF: record
	| handled |
	#AREF = record type
		ifTrue: [
			^self upCount: #AREF].
	handled := self switchElementBegin: record.
	handled ifTrue: [^self].		
	handled := self switchSNAME: record.
	handled ifTrue: [^self].		
	handled := self switchSTRANS: record.
	handled ifTrue: [^self].	
	#COLROW = record type
		ifTrue: [ | ints |
			ints := record int2Array.
			element columnCount: ints first.
			element rowCount: ints second.
			^self upCount: #COLROW].		
	handled := self switchElementEnd: record.
	handled ifTrue: [^self].		
