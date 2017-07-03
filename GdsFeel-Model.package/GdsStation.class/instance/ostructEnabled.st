command-handler
ostructEnabled
	self library ifNil: [ ^ false ].
	self structure ifNotNil: [ ^ false ].
	^ self library structures isNotEmpty