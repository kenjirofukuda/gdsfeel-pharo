as yet unclassified
readHeader
	| header |
	header := reader nextRecord.
	header 
		ifNil: [
			self abort: 'HEADER is missing. Aborting'].
