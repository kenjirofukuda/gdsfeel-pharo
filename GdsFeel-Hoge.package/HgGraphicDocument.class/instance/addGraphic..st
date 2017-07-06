adding
addGraphic: aHgGraphic
	self assert: (aHgGraphic isKindOf: HgGraphic).
	self addGraphics: (Array with: aHgGraphic)