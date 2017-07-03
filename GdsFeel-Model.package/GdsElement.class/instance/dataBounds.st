accessing-points
dataBounds
	dataBounds ifNil: [dataBounds := self lookupDataBounds].
	^dataBounds. 