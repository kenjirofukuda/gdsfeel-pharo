switch flow common
switchSNAME: record
	| structureName |
	(self hasEntry: #SNAME) ifTrue: [^false].
	#SNAME = record type
		ifFalse: [^inform stderr: (inform missingField:  record type ofElement: element)].
	structureName := record asString.
	structureName isEmptyOrNil
		ifTrue: [^inform abort: (inform missingField:  record type ofElement: element)].		
	element structureName: record asString.
	self upCount: #SNAME.
	^true
