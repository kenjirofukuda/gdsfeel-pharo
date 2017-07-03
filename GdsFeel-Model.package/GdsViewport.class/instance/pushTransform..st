private
pushTransform: aMatrixTransform2x3
	self assert: aMatrixTransform2x3 isNil not.
	transformStack add: aMatrixTransform2x3.
	transform := nil.