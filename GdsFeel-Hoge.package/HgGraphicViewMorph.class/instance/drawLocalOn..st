drawing
drawLocalOn: aCanvas
	offCanvas
		ifNil: [ 
			self useNewCanvas
				ifFalse: [ self drawClasicCanvasOn: self ensureOffCanvas ]
				ifTrue: [ self drawNewCanvasOn: self ensureOffCanvas ] ].
	aCanvas drawImage: self ensureOffCanvas form at: 0 @ 0