tests
testPostNotificationNameObject
	"Tests GdsNotificationCenter>>#postNotificationName:object:"

	self should: [
		GdsNotificationCenter defaultCenter
			postNotificationName: nil object: nil 
		] raise: Exception 