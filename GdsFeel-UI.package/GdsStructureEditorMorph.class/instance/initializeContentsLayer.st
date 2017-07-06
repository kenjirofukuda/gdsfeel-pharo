initialization
initializeContentsLayer
	| layer |
	layer := self layerForKey: #contents.
	layer setDrawOnBlock: [:localCanvas :morph |
		(self viewport isNil  or: [self structure isNil ]) 
			ifFalse: [self drawContentsOn: localCanvas]]