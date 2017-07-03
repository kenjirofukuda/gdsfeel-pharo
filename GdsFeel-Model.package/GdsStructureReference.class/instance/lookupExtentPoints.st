protected
lookupExtentPoints
	^ self lookupBasicExtentPoints collect: [ :each | self transform transformPoint: each ]