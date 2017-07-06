drawing
drawOffOn: aCanvas
	model ifNil: [^self].
	offCanvas
		ifNil: [
			offCanvas := 
				FormCanvas 
					extent: (self pixelBounds extent) 
					depth: (self defaultOffCanvasDepth ). 
			offCanvas fillColor: self color.
			self drawLocalIgnoreItemOn: offCanvas].
	offCanvas 
		ifNotNil: [
			aCanvas drawImage: offCanvas form at: self pixelBounds origin.].