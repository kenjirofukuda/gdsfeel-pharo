drawing
strokeOutlineOn: aCanvas
	self canDisplayPoint ifFalse: [ ^ self ].
	morph drawOn: aCanvas centerCrossAt: element centerPoint pixelUnit: 3 width: 1.