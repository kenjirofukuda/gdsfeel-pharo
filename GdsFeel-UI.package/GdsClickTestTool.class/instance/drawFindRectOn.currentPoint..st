as yet unclassified
drawFindRectOn: aLocalCanvas currentPoint: aPoint 
	| vert1 vert2 updateBounds findBounds |
	findBounds := self findRectOfCenter: aPoint.
	morph drawOn: aLocalCanvas strokeBounds: findBounds.
	oldFindRect ifNil: [ oldFindRect := findBounds copy ].
	vert1 := GeometryUtils verticesFromBounds: oldFindRect.
	vert2 := GeometryUtils verticesFromBounds: findBounds.
	updateBounds := GeometryUtils lookupDataBounds: (vert1, vert2).
	morph invalidBounds: updateBounds.