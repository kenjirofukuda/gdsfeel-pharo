actions
installSampleGraphics
	self
		addGraphics:
			(Array
				streamContents: [ :arrayStream | 
					100
						timesRepeat: [ | x y |
							x := (-100 to: 100 by: 0.1) atRandom.
							y := (-100 to: 100 by: 0.1) atRandom.
							arrayStream
								<<
									(HgPointGraphic new
										origin: x @ y;
										yourself) ] ])