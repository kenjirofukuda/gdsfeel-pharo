switch flow common
switchWireContext: record 
	#PATHTYPE = record type
		ifTrue: [
			element pathtype: record int2.
			self upCount: #PATHTYPE.
			^true].
		
	#WIDTH = record type
		ifTrue: [
			element width: (record int4 * inform library userUnit).
			self upCount: #WIDTH.
			^true].
		
	^false
	
	
	