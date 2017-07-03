*GdsFeel-Foundation
fixNegativeZero
	^ self collect: [ :each | each fixNegativeZero ]