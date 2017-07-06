viewport
createViewport
	| vp |
	vp := GdsViewport new.
	vp model: self structure.
	vp pixelBoundsSelector: #innerBounds.
	vp pixelBoundsTarget: self.
	vp announcer 
		when: #viewTransformChanged 
		do: [ 
			self viewTransformChanged ].
	^ vp