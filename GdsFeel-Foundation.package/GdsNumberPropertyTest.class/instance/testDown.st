tests
testDown
	| prop |
	
	prop := GdsNumberProperty new.	
	self assert: prop getValue = 0.	
	prop down.
	self assert: prop getValue = -1.	
	prop down.
	prop down.
	self assert: prop getValue = -3.	
	prop down: 5.
	self assert: prop getValue = -8.	
	prop down: -5. 
	self assert: prop getValue = -13 description: 'value convert to absolute'.	
	