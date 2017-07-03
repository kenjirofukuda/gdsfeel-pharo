accessing
statusNumber
	"in item: 0 - 9
	in id:	-1
	in database: -2"
	statusNumber ifNil: [statusNumber := GdsElement inDatabaseStausNumber].
	^statusNumber