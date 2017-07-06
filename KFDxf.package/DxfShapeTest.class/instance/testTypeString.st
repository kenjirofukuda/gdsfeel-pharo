tests-accessing
testTypeString
	self assert: DxfLine typeString equals: 'LINE' .
	self assert: DxfPoint typeString equals: 'POINT' .
	self assert: DxfMtext typeString equals: 'MTEXT' .
	self assert: DxfText typeString equals: 'TEXT' .
	self assert: DxfCircle typeString equals: 'CIRCLE'.
	self assert: DxfInsert typeString equals: 'INSERT'.
	