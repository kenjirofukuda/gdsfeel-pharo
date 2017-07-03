accessing
setValue: aNumber 
	| floatValue |
	self checkType: aNumber kindOf: Number.
	floatValue := aNumber asFloat.
	self checkAccept: floatValue.
	super setValue: floatValue.