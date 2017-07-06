converter
int2Array
	| elSize numElements offset |
	elSize := 2.
	numElements := self dataBytes size // elSize.
	^ Array streamContents: [ :s |
		1 to: numElements do: [:index |
			offset := ((index - 1) * elSize) + 1.
			s nextPut: (self dataBytes shortAt: offset bigEndian: true).].]
	