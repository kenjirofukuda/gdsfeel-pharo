tests
testAddObserverSelectorNameObject
	"Tests GdsNotificationCenter>>#addObserver:selector:name:object:"

	"Don't allow nil observer"
	self should: [
		GdsNotificationCenter defaultCenter
			addObserver: nil selector: nil name: nil object: nil
		] raise: Exception. 

	"Don't allow nil selector"
	self should: [
		GdsNotificationCenter defaultCenter
			addObserver: self selector: nil name: nil object: nil
		] raise: Exception. 	