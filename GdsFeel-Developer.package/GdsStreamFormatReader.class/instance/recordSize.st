as yet unclassified
recordSize
	| buff |
	stream atEnd ifTrue: [^-1].
	buff := (stream next: 2) asByteArray.
	^buff  unsignedShortAt: 1 bigEndian: true.