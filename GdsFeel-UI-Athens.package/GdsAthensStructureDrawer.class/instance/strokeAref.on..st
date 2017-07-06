rendering
strokeAref: aGdsElement on: aCanvas
	|  |
	aGdsElement refStructure ifNil: [ ^self ].
	aCanvas pathTransform restoreAfter: [
		"pt multiplyBy: aGdsElement transform asAthensAT."
		aGdsElement repeatTransforms do: [ :mat |
			aCanvas pathTransform restoreAfter: [
				aCanvas pathTransform multiplyBy:  mat asAthensAT. 
				self renderStructure: aGdsElement refStructure on: aCanvas ] ] ]