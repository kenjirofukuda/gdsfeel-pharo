utility
makeLabel: aLabel withValue: aValueOrBlock
	| optionalLabel |
	optionalLabel := aValueOrBlock value asString.
	optionalLabel ifEmpty: [^aLabel localizedGdsCaption].
	^String streamContents: [:stream |
		stream nextPutAll: aLabel localizedGdsCaption.
		self structure ifNotNil: [
			stream nextPutAll: ' ('.
			stream nextPutAll: optionalLabel.
			stream nextPutAll: ')']]