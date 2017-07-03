accessing
lookupNumbers
	layers ifNil: [^#()].
	^layers keys sort.