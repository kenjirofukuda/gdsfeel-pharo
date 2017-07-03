*GdsFeel-Foundation-extension
outlineSegments: offsetRadians r: r 
	| col |
	col := OrderedCollection new.
	self outlineSegments: offsetRadians  r: r do: [ :seg |
		col add: seg]. 
	^col asArray
	