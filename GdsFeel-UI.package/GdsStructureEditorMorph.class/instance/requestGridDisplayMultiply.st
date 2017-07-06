command-handler
requestGridDisplayMultiply
	|  scaleExpr values |
	scaleExpr := self  viewport grid displayMultiply asString.
	values :=self 
		privateExpInput: 
			'display multiply' 
				expandMacros
		defaults: scaleExpr.
	values ifEmpty: [^self].		
	self  viewport grid displayMultiply: values first.