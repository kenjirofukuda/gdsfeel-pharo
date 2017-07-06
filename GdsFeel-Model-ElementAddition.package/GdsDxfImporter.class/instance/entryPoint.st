plugin
entryPoint
	| dxf |
	dxf := nil.
	GdsStation default structure 
		ifNil: [ ^ self inform: 'Structure Not Opend'].
	(Smalltalk at: #DxfFile ifAbsent: [])
		ifNil: [ ^ self inform: 'DxfFile class not installed' ]	
		ifNotNil: [ :clazz | 
			dxf := clazz fromUser ].
	dxf ifNil: [ ^ self inform: 'DXF import canceled '  ].
	dxf shapes ifEmpty: [ ^ self inform: ' shpae not found ' ].	
	self import: dxf.
	self structure explore.
	
				