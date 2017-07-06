*GdsFeel-Model-ElementAddition
dxfShapesForExport
	^ self elements
		collect: [ :el | 
			| shape |
			shape := el asDxfShape.
			shape setCode: 5 data: (el keyNumber + 2000) printStringHex.
			shape ]
		thenSelect: [ :shape | shape notNil ]