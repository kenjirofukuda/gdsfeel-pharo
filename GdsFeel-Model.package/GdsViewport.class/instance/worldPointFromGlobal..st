transforms
worldPointFromGlobal:  aGlobalPoint
	^self transform invertPoint: (self morphicPointFromGlobal: aGlobalPoint).