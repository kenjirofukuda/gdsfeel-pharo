drawing
drawOn: aCanvas
	self viewport ifNil: [^super drawOn: aCanvas].
	self drawInlineOn: aCanvas.