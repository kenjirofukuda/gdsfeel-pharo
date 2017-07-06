drawing
drawOn: aCanvas string: aString bounds: aBounds
	| xStart glyph mat |
	self fontDescription ifNil: [ ^ self ].
	string := aString asString.
	morphicBounds := aBounds.
	self calcContext.
	xStart := 0.
	mat := MatrixTransform2x3 withRotation: self angle.
	aCanvas asBalloonCanvas
		preserveStateDuring: [ :balloonCanvas | 
			balloonCanvas transformBy: transform. 
			balloonCanvas aaLevel: self aaLevel.
			string
				do: [ :char | 
					| contors |
					glyph := self fontDescription face glyphOfCharacter: char.
					char = $a ifTrue: [  ].
					
					contors := glyph outline contoursCollection
						collect: [ :assoc | assoc value , {assoc value first} ].
					balloonCanvas
						preserveStateDuring: [ :subCanvas | | charXTransform |
							charXTransform := MatrixTransform2x3 withOffset: xStart @ 0.
							subCanvas transformBy: (charXTransform composedWithGlobal: mat).
							subCanvas
								drawGeneralPolygon: contors
								color: self fillColor
								borderWidth: self apiWidth
								borderColor: self borderColor ].
					xStart := xStart + glyph advanceX ] ]