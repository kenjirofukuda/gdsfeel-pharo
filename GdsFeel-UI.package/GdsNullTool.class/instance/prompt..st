accessing
prompt: aStringOrBlock
	(aStringOrBlock isKindOf: BlockClosure )
		ifTrue: [
			Transcript cr; show: (String streamContents: [:stream |
				aStringOrBlock value: stream])]
		ifFalse: [Transcript cr; show: aStringOrBlock].