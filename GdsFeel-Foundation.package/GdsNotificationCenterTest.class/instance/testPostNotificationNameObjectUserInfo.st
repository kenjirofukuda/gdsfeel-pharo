tests
testPostNotificationNameObjectUserInfo
	"Tests GdsNotificationCenter>>#postNotificationName:object:userInfo:"

	"userInfo: only Dictionary"
	self should: [
		GdsNotificationCenter defaultCenter 
			postNotificationName: 'Boke' object: self userInfo: Array new. 
		] raise: Exception 