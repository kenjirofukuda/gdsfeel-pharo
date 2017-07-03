accessing
setValue: anObject
	| oldValue newValue |
	lock ifTrue: [ ^ self ].
	self checkType: anObject.
	self checkAccept: anObject.
	lock := true.	
	oldValue := self oldValue.
	newValue := self newValue: anObject.
	[(self changedTest: newValue oldValue: oldValue)
		ifTrue: [
			self fireValueChangedNew: newValue old: oldValue]]
		ensure: [lock := false].
	