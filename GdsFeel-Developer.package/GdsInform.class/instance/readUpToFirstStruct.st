as yet unclassified
readUpToFirstStruct
	| break record |
	break := false.
	record := nil.
	[break 
		ifFalse: [
		record := reader nextRecord].
	break  or: [record isNil]]
		whileFalse: [
			break := self readUpToFirstStructRecord: record]
