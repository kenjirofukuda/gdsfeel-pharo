as yet unclassified
setValue: anObject
	| oldValue |
	oldValue := valueHolder.
	valueHolder := anObject.
	oldValue = anObject ifTrue: [^self].
	self postNotificationProperty: name oldValue: oldValue newValue: valueHolder