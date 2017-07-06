rendering
lookupSolidPenWidth: aCanvas
	| x y tr |
	x := ByteArray new: 8.
	y := ByteArray new: 8.
	x doubleAt: 1 put: 1.
	y doubleAt: 1 put: 1.
			
	tr := AthensCairoTransform new canvas: aCanvas.
	tr primInverseDistanceTransformX: x Y: y.
	^ x  doubleAt: 1
	