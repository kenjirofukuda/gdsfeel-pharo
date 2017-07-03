debug
ifDebugOn: aStreamBlock
	self ifDebug: [
		Transcript cr; show: 
			(String streamContents: [ :stream |
				stream nextPutAll: '***DEBUG***'.
				stream nextPutAll: ' '.
				aStreamBlock value: stream])].
	