private
popTransform
	| result |
	result := transformStack last. 
	transformStack := transformStack allButLast.
	transform := nil.
	^result.