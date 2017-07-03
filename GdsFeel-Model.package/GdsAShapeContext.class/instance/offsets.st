accessing
offsets
	^ offsets ifNil: [offsets := self lookupOffsets].