accessing
cross
	^ cross ifNil: [ cross := testPoint dist: self crossPoint ]