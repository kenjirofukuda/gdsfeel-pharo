accessing
statusNumber: aInteger
	"in item: 0 - 9
	in id:	-1
	in database: -2"
	self assert: [GdsElement enabledStateNumbers includes: aInteger].
	statusNumber := aInteger.
	self changed: #statusNumber.