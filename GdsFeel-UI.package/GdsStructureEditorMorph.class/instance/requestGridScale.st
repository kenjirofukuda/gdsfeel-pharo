command-handler
requestGridScale
	|  scaleExpr values |
	scaleExpr := self  viewport grid asRequestString.
	values :=self 
		privateExpInput: 
			'xyScale<n>or<n>xScale yScale<n>or<n>xOffset yOffset xScale yScale' 
				expandMacros
		defaults: scaleExpr.
	values ifEmpty: [^self].		
	self  viewport grid values: values.