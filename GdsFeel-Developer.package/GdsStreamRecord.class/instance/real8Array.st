converter
real8Array
	| elSize numElements |
	elSize := 8.
	numElements := self dataBytes size // elSize.
	^ Array streamContents: [ :s |
		1 to: numElements do: [ :index |
			| offset |
			offset := ((index - 1) * elSize) + 1.
			s nextPut: (
				self real8: (self dataBytes copyFrom: offset to: (offset + elSize - 1))) ] ]
	