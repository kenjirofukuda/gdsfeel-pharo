as yet unclassified
allRecords
	^Array streamContents: [ :s |
		self allRecordsDo: [:each | s nextPut: each]]	