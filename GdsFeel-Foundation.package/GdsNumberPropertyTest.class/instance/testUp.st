tests
testUp
	| prop |
	
	prop := GdsNumberProperty new.	
	self assert: prop getValue = 0.	
	prop up.
	self assert: prop getValue = 1.	
	prop up.
	prop up.
	self assert: prop getValue = 3.	
	prop up: 5.
	self assert: prop getValue = 8.	
	prop up: -5. 
	self assert: prop getValue = 13 description: 'value convert to absolute'.	
	