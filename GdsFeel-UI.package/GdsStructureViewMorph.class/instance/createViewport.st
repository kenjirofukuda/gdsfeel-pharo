viewport
createViewport
	| vp |
	vp := GdsViewport new.
	vp model: self model.
	vp pixelBoundsSelector: #innerBounds.
	vp pixelBoundsTarget: self.
	vp announcer 
		when: #viewTransformChanged 
		do: [ 
			self removeCachedCanvas.
			self changed.
			"self fireFirstdrawing "].
	^vp
