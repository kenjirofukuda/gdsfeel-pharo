drawing
optionalDrawOn: aCanvas
	super optionalDrawOn: aCanvas.
	self canDisplaySegmentLength
		ifTrue: [ self drawSegmentLengthOn: aCanvas ]
		ifFalse: [ (self element valueOfProperty: #proxyMorph ifAbsent: [  ])
				ifNotNil: [ :m | morph removeMorph: m ].
			self element removeProperty: #proxyMorph ]