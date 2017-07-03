as yet unclassified
postNotificationName: aName object: anObject userInfo: aDictionary
	| n |
	n := GdsNotification new name: aName object: anObject userInfo: aDictionary.
	self postAndRelease: n.
	