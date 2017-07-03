tests
testToggle
	| prop |	
	prop := GdsBooleanProperty named: 'example' owner: nil.	
	self assert: prop getValue = false.
	prop toggle.
	self assert: prop getValue = true.
	prop toggle.
	self assert: prop getValue = false.
		