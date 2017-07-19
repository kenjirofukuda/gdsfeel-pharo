actions
installSampleGraphicsBounds: aWorldBounds
	|  samples |
	samples := self createSampleGraphicsXmin: aWorldBounds origin x yMin: aWorldBounds origin y xMax: aWorldBounds corner x yMax: aWorldBounds corner y step: 1.0 / aWorldBounds width.
	self addCreateGraphicsUndoRecord: samples.
	self addGraphics: samples.