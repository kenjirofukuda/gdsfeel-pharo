updating
refreshBounds
	offsets := nil.
	transforms := nil.
	propertyOwner ifNil: [^self].
	propertyOwner refreshBounds.