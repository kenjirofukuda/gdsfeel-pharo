as yet unclassified
readPrimitiveEnd: element
	|  record  points |
	record := reader nextRecord.
	#XY = record type
		ifFalse: [^self abort: (self missingField:  record type ofElement: element)].
	points := record pointsScaledBy: library userUnit .
	element vertices: points.
	
	record := reader nextRecord.
	#ENDEL = record type
		ifFalse: [^self abort: (self missingField:  record type ofElement: element)].
