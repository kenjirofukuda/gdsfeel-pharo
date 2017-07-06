command-handler
requestMag
	| magExpr values |
	magExpr := self structure currentItem mag asString.
	values := self privateExpInput: 'Enter Magnification: ' defaults: magExpr.
	values ifEmpty: [^self].			
	self structure currentItem mag: values first abs.	