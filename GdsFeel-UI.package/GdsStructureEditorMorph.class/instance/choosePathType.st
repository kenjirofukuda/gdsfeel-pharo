command-handler
choosePathType
	| number |
	number := self privateChoosePathType.
	number ifNil:[^self].	
	self structure currentItem pathtype: number.