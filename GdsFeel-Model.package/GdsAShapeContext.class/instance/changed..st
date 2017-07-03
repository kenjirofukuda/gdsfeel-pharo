updating
changed: anObject
	propertyOwner ifNil: [ ^ super changed: anObject ].
	propertyOwner changed: anObject.
	super changed: anObject