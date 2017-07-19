actions
createSampleGraphicsXmin: aXmin yMin: aYmin xMax: aXmax yMax: aYmax step: aStep
	^ Array
		streamContents: [ :arrayStream | 
			100
				timesRepeat: [ | x y |
					x := (aXmin to: aXmax by: aStep) atRandom.
					y := (aYmin to: aYmax by: aStep) atRandom.
					arrayStream
						<<
							(HgPointGraphic new
								origin: x @ y;
								yourself) ] ]