drawing
strokeOn: aCanvas element: aGdsElement  color: aColor
	| drawer |
	self
		penColor: (aColor ifNil: [(self colorForElement: aGdsElement)] ifNotNil: [aColor])
		during: [
			drawer := GdsElementDrawer 
				fromElement: aGdsElement
				morph: self.
				drawer strokeOutlineOn: aCanvas]