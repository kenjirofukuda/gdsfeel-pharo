accessing
typedMap
	TypedMap ifNil: [ TypedMap := TypedConfigulation new ].
	^ TypedMap