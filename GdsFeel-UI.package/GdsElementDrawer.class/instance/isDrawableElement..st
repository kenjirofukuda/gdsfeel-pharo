testing
isDrawableElement: aGdsElement 
	| drawer |
	drawer := GdsElementDrawer fromElement: aGdsElement morph: morph.
	^ drawer isDrawable