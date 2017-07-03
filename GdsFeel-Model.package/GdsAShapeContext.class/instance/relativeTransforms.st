accessing
relativeTransforms
	transforms ifNil: [ transforms := self lookupTransforms ].
	^ transforms