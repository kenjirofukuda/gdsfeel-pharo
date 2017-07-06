rendering
strokeSref: aGdsElement on: aCanvas
	|  |
	aGdsElement refStructure ifNil: [ ^self ].
	aCanvas pathTransform restoreAfter: [
		aCanvas pathTransform multiplyBy: aGdsElement transform asAthensAT.
		self renderStructure: aGdsElement refStructure on: aCanvas ]