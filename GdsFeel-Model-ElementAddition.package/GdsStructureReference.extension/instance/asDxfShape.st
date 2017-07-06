*GdsFeel-Model-ElementAddition
asDxfShape
	| dxfShape |
	dxfShape := DxfInsert new.
	dxfShape initializeDefaults.
	dxfShape addCode: 100 data: 'AcDbBlockReference'.
	dxfShape blockName: self structureName.
	dxfShape setCode: 10 data: self xy x.
	dxfShape setCode: 20 data: self xy y.
	dxfShape setCode: 30 data: 0.
	self angle asFloat = 0.0
		ifFalse: [ dxfShape angleDegress: self angle. ].
	self mag = 1.0
		ifFalse: [
			dxfShape scaleX: self mag.
			dxfShape scaleY: self mag.
			dxfShape scaleZ: self mag.].
	^ dxfShape