accessing
findGraphicAt: aPoint pixelDistance: aPixel worldScale: aScale
	^ self graphics
		ifEmpty: [ nil ]
		ifNotEmpty: [ | foundPair |
			foundPair := ((self graphics
				collect: [ :each | Array with: each with: (each distance: aPoint) ])
				sort: [ :a :b | (a at: 2) < (b at: 2) ]) first.
			((foundPair at: 2) <=  (aPixel / aScale asFloat))
				ifTrue: [ foundPair at: 1 ] ifFalse: [ nil ] ].