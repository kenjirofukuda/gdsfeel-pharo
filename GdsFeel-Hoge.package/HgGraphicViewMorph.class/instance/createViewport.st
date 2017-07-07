initialization
createViewport
	| vp |
	vp := GdsViewport new.
	vp model: self model.
	vp pixelBoundsSelector: #innerBounds.
	vp pixelBoundsTarget: self.
	vp announcer
		when: #viewTransformChanged
		do: [ 
			self clearOffCanvas.
			self changed ].
	^ vp