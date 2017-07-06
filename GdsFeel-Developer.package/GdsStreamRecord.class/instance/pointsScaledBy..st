accessing
pointsScaledBy: aFacter
	| items numPoints offsetX offsetY |
	items := self int4Array.
	numPoints := items size / 2.
	^ Array streamContents: [ :s | 
		1 to: numPoints do: [:index |
			offsetX := ((index - 1) * 2) + 1 .
			offsetY := offsetX + 1.
			s nextPut: (
				((items at: offsetX) * aFacter)@((items at: offsetY) * aFacter)) ] ]