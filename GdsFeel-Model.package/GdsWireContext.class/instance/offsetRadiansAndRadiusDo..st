outline
offsetRadiansAndRadiusDo: aBlock
	|  unit r offsetRadians  |
	offsetRadians :=  self degressOfPathType degreesToRadians.
	unit := offsetRadians sin.
	r := unit = 0 ifTrue: [self halfWidth] ifFalse: [self halfWidth / unit].
	aBlock value: offsetRadians value: r.