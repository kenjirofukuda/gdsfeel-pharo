initialization
initializeIdLayer
	| layer |
	layer := self layerForKey: #id.
	layer setDrawOnBlock: [:localCanvas :morph |
		(self viewport isNil  or: [self structure isNil ]) 
			ifFalse: [self drawIdFeedbackOn: localCanvas]]