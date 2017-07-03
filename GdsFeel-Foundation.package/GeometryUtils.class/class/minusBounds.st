as yet unclassified
minusBounds
	MinusBounds ifNil: [ MinusBounds := self lookupMinusBounds. ].
	(MinusBounds origin < MinusBounds corner)
		ifTrue: [
			"swap orign corner" 
			|origin corner|
			origin := MinusBounds origin.
			corner := MinusBounds corner.
			MinusBounds instVarNamed: 'origin' put: corner.
			MinusBounds instVarNamed: 'corner' put: origin.].		
	^ MinusBounds copy
