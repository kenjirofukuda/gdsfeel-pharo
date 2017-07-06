accessing
color
	self layer ifNil: [^ self missingColor].
	^ self layer color