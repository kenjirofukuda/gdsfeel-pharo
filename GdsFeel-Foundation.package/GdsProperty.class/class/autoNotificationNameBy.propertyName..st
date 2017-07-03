as yet unclassified
autoNotificationNameBy: aClass propertyName: aPropertyName
	^String streamContents: [:s |
		s nextPutAll: aClass asString.
		s nextPutAll: aPropertyName capitalized.
		s nextPutAll: 'DidChangeNotification'.
	]