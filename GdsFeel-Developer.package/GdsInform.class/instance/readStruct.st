as yet unclassified
readStruct
	| break record structure result |	
	record := reader nextRecord.
	#BGNSTR = record type
		ifFalse: [
			reader unreadRecord: record.
			record := reader nextRecord.
			#ENDLIB = record type
				ifTrue: [^nil]
				ifFalse:[
					self abort: 'Missing ENDLIB field. Abort!']].
	structure := (GdsStructure basicNew initialize) 
		library: library;
		yourself.
	
	break := false.
	[break ifFalse: [record := reader nextRecord].
	break or: [record isNil]]
		whileFalse: [
			result := self readStruct: record structure: structure.
			break := result first.
			break ifTrue: [^result last]].
	^nil.
	