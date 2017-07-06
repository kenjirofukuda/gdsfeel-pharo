*GdsFeel-Model-ElementAddition
asDxfShape
	| dxfShape |
	dxfShape := super asDxfShape.
	dxfShape rowCount: self rowCount.
	dxfShape columnCount: self columnCount.	
	dxfShape rowSpacing: self yStep.
	dxfShape columnSpacing: self xStep.	
	^ dxfShape	