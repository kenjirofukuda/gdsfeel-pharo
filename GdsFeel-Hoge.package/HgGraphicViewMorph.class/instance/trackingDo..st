event handling
trackingDo: aTrackingBlock
	self trackingObject
		ifNotNil: [ :track | 
			aTrackingBlock value: track ]