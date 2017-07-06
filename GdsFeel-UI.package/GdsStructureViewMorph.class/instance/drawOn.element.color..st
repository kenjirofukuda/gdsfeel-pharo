drawing
drawOn: aCanvas element: aGdsElement  color: aColor
	| drawer |
	self
		penColor: aColor
		during: [
			drawer := GdsElementDrawer 
				fromElement: aGdsElement
				morph: self.
			drawer fullDrawOn: aCanvas]