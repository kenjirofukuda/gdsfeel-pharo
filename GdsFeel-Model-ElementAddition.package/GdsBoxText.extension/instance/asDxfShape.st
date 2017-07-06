*GdsFeel-Model-ElementAddition
asDxfShape
	| dxfShape boxCenter basePoint |
	dxfShape := DxfText new.
	dxfShape initializeDefaults.
	self setLayerNameToDxf: dxfShape.
	dxfShape setLineStyleToByLayer.
	dxfShape colorNumber: 256.
	dxfShape setCode: 370 data: '  -1'.
	dxfShape addCode: 100 data: 'AcDbText'.
	boxCenter := self dataBounds center.
	basePoint := (self vertices at: 1) x @ (self vertices at: 1) y.
	(self angleDegress closeTo: 0.0)
		ifFalse: [ 
			basePoint := basePoint
				rotateInModelBy: self angleDegress degreesToRadians
				about: boxCenter ].
	dxfShape primaryX: basePoint x.
	dxfShape primaryY: basePoint y.
	dxfShape primaryZ: 0.0.
	dxfShape height: self textHeight.
	dxfShape contents: self contents.
	dxfShape hAlign: #center.
	dxfShape centerX: boxCenter x.
	dxfShape centerY: boxCenter y.
	dxfShape centerZ: 0.0.
	(self angleDegress closeTo: 0.0)
		ifFalse: [ 
			dxfShape angleDegress: self angleDegress ].
	dxfShape addCode: 100 data: 'AcDbText'.
	dxfShape vAlign: #middle.
	^ dxfShape