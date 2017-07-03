as yet unclassified
postNotificationProperty: aPropertyName oldValue: aOldValue newValue: aNewValue
	aOldValue = aNewValue ifTrue: [^self].
	GdsNotificationCenter defaultCenter 
		postNotificationName: (self autoNotificationNameBy: owner propertyName: aPropertyName)
		object:  owner
		userInfo: (Dictionary newFrom: {#oldValue->aOldValue . #newValue->aNewValue})