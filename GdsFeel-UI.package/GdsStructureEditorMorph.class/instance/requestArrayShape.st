command-handler
requestArrayShape
	|  ashapeExpr values |
	self structure currentItem ashapeInstalled ifFalse: [^self].
	ashapeExpr := self  structure currentItem ashape asRequestString.
	values :=self 
		privateExpInput: 
			'cols rows [colSpacing rowSpacing]' 
				expandMacros
		defaults: ashapeExpr.
	values ifEmpty: [^self].	
	(#(2 4) includes: values size) ifFalse: [^self].	
	values size = 2
		ifTrue: [
			| xStep yStep placeStructure |
			placeStructure := self  structure library structureNamed: self structure currentItem structureName.
			xStep := placeStructure dataExtentForElements  width.
			yStep := placeStructure dataExtentForElements height.
			values := values, {xStep . yStep}].			
	self  structure currentItem ashape values: values.