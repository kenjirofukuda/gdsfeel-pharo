private
pushedPort: aBlock
	self assert: element isNil not.
	morph viewport pushTransform: element transform during: aBlock.