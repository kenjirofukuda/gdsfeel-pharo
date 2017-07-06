command-handler
requestWidth
	| widthExpr values |
	widthExpr := self structure currentItem width asString.
	values :=self privateExpInput: 'width:' defaults: widthExpr.
	values ifEmpty: [^self].			
	self structure currentItem width: values first abs.	