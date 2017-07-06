testing
isHighQuorityImage: aForm
	^((aForm extent y) > (aForm extent x))
		ifTrue: [(aForm extent y >= 640) and: [aForm extent x >= 480]]
		ifFalse: [(aForm extent y >= 480) and: [aForm extent x >= 640]].