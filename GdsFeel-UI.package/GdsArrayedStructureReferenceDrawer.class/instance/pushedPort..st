private
pushedPort: aBlock
	| transforms |
	self assert: element isNil not.
	transforms := element repeatTransforms.
	transforms do: [:each |	
		morph viewport pushTransform: each during: aBlock]