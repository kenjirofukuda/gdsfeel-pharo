as yet unclassified
asDxfShape
	| dxfShape |
	dxfShape := DxfPoint new.
	dxfShape initializeDefaults.
	self setLayerNameToDxf: dxfShape.
	dxfShape setLineStyleToByLayer.
	dxfShape colorNumber: 256.
	dxfShape setCode: 370 data: '  -1'.
	dxfShape addCode: 100 data: 'AcDbPoint'.
	dxfShape firstX: self centerPoint x.
	dxfShape firstY: self centerPoint y.
	dxfShape firstZ: 0.0.
	^ dxfShape