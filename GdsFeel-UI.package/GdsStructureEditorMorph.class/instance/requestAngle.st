command-handler
requestAngle
	| angleExpr values |
	angleExpr := self structure currentItem angle asString.
	values :=self privateExpInput: 'Enter Angle in Degrees: ' defaults: angleExpr.
	values ifEmpty: [^self].
	self structure currentItem angle: values first.	