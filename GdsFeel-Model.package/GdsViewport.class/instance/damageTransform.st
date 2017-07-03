private
damageTransform
	lockUpdate ifTrue: [ updateCount := updateCount + 1. ^  self ].
	basicTransform := nil.
	transform := nil.
	self announcer announce: #viewTransformChanged.