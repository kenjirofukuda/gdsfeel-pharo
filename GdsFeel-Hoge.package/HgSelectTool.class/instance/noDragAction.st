event handler
noDragAction
	| xyPoint |
	xyPoint := self lastWorldPoint.
	(self document findGraphicAt: xyPoint pixelDistance: 6 worldScale: self viewport viewScale)
		ifNotNil: [ :graphic | 
			graphic selected: graphic selected not.
			self view
				clearOffCanvas;
				changed	"TODO: fire event" ]