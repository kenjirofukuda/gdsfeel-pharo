private
lookupOffsets
	^ Array streamContents: [ :s |
		0 to: self columnCount - 1  do: [:xIndex |
			0 to: self rowCount - 1 do: [:yIndex |
				s nextPut: (xIndex * self xStep) @ (yIndex * self yStep) ] ] ]
