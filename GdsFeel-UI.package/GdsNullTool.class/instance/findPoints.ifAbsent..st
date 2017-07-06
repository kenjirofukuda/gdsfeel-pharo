action
findPoints: aPoint ifAbsent: aBlock
	| foundElements crossPoints targetPoints vertexPoints box |
	morph visibleElements ifEmpty: [ ^ #() ].
	box := self findRectOfCenter: aPoint.
	foundElements := self structure
		findNearestElementsByPoint: aPoint
		elements: morph visibleElements.
	foundElements ifEmpty: [ ^ #() ].
	vertexPoints := GdsElement vertexPointsOfElements: foundElements.
	crossPoints := GdsElement crossPointsOfElements: foundElements.
	targetPoints := (crossPoints , vertexPoints) asSet select: [ :p | box containsPoint: p ].
	targetPoints ifEmpty: [ aBlock cull: foundElements cull: vertexPoints cull: crossPoints ].
	^ targetPoints asArray