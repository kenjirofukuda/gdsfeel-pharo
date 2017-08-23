accessing
devicdeBoundOf: aViewPort
	| dOrigin dCorner dBounds |
	dOrigin := aViewPort xy2hv: self bounds origin .
	dCorner := aViewPort xy2hv: self bounds corner .
	dBounds := Rectangle encompassing: { dOrigin . dCorner }.
	^ dBounds expandBy: self halfHandleSize. 