accessing
markerPoints
	markerPoints ifNil: [markerPoints := OrderedCollection new.].
	^markerPoints asArray.