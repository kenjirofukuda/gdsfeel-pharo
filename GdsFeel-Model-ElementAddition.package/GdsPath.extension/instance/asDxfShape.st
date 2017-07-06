*GdsFeel-Model-ElementAddition
asDxfShape
	| dxfShape |
	dxfShape := DxfLine new.
	dxfShape initializeDefaults.
	self setLayerNameToDxf: dxfShape.
	dxfShape setLineStyleToByLayer.
	dxfShape colorNumber: 256.
	dxfShape setCode: 370 data: '  -1'.
	dxfShape addCode: 100 data: 'AcDbLine'.
	dxfShape startX: self vertices first x.
	dxfShape startY: self vertices first y.
	dxfShape startZ: 0.0.
	dxfShape endX: self vertices second x.
	dxfShape endY: self vertices second y.
	dxfShape endZ: 0.0.
	^ dxfShape