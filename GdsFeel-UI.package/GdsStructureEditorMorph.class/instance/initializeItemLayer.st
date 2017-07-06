initialization
initializeItemLayer
	| layer |
	layer := self layerForKey: #item.
	layer setDrawOnBlock: [:localCanvas :morph |
		(self viewport isNil  or: [self structure isNil ]) 
			ifFalse: [self drawItemFeedbackOn: localCanvas]]