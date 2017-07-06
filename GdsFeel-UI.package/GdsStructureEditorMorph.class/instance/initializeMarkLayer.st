initialization
initializeMarkLayer
	| layer |
	layer := self layerForKey: #mark.
	layer setDrawOnBlock: [:localCanvas :morph |
		(self viewport isNil  or: [self structure isNil ]) 
			ifFalse: [
				self showsElementKey 
					ifTrue: [self drawElementKeysOn: localCanvas].				
				self drawMarksOn: localCanvas]]