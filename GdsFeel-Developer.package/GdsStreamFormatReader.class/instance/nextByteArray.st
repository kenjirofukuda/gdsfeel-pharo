as yet unclassified
nextByteArray
	| restSize bytes recordSize |
	recordSize := self recordSize.
	recordSize < 0 ifTrue: [^nil].
	restSize := recordSize - 2.
	recordSize <= 0 ifTrue: [^nil].	
	bytes := (stream next: restSize) asByteArray.
	^bytes