as yet unclassified
postNotification: aGdsNotification
	aGdsNotification
		ifNil: [Exception signal: 'Tried to post a nil notification.'].
	self postAndRelease: aGdsNotification.
	