action
updateInvalidArea	
	| currentUpdateBounds |
	currentUpdateBounds := GeometryUtils lookupDataBounds: (self currentItem vertices) .
	currentUpdateBounds := currentUpdateBounds merge: nonEditUpdateBounds.
	lastUpdateBounds
		ifNotNil: [currentUpdateBounds := currentUpdateBounds merge: lastUpdateBounds.].
	morph invalidBounds: currentUpdateBounds.
	lastUpdateBounds := currentUpdateBounds copy.