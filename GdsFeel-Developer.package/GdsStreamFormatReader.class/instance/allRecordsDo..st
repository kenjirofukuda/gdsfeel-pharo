as yet unclassified
allRecordsDo: aBlock
	| record |
	self reset.
	record := nil.
	[record := self nextRecord.
	record isNil]
		whileFalse: [			
			aBlock value: record].
	