actions
installSampleGraphicsXmin: aXmin yMin: aYmin xMax: aXmax yMax: aYmax step: aStep
	|  samples |
	samples := self createSampleGraphicsXmin: aXmin yMin: aYmin xMax: aXmax yMax: aYmax step: aStep.
	self addCreateGraphicsUndoRecord: samples.
	self addGraphics: samples.